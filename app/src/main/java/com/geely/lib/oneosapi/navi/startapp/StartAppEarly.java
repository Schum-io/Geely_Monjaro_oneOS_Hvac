package com.geely.lib.oneosapi.navi.startapp;

import android.app.ActivityOptions;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.hardware.display.VirtualDisplay;
import android.media.ImageReader;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import com.geely.lib.oneosapi.navi.model.base.NaviResultCode;

/* loaded from: classes.dex */
public class StartAppEarly {
    private static final String ACTIVITY_NAME = "com.baidu.naviauto.SlashActivity";
    private static final String PACKAGE_NAME = "com.baidu.naviauto";
    private static volatile StartAppEarly mInstance = null;
    public static String strStartAppEarly = "";
    public Context mContext;
    public DisplayManager mDisplayManager;
    public DisplayMetrics mDisplayRealMetrics;
    public ImageReader mImageReader;
    public VirtualDisplay mVirtualDisplay;
    private Process process;
    public final String TAG = "TestForStartAppEarly";
    public int mVirtualDispalyWidth = 1919;
    public int mVirtualDisplayHeight = 1080;
    private String strResult = "";

    private StartAppEarly(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    public static StartAppEarly getInstance(Context context) {
        if (mInstance == null) {
            synchronized (StartAppEarly.class) {
                if (mInstance == null) {
                    mInstance = new StartAppEarly(context);
                }
            }
        }
        return mInstance;
    }

    private void setupImageReader() {
        this.mImageReader = ImageReader.newInstance(this.mVirtualDispalyWidth, this.mVirtualDisplayHeight, 1, 4);
    }

    private void setupVirtualDisplay() {
        try {
            this.mDisplayManager = (DisplayManager) this.mContext.getSystemService("display");
            this.mDisplayRealMetrics = new DisplayMetrics();
            ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getRealMetrics(this.mDisplayRealMetrics);
            VirtualDisplay virtualDisplayCreateVirtualDisplay = this.mDisplayManager.createVirtualDisplay("VirtualDisplay_app", this.mVirtualDispalyWidth, this.mVirtualDisplayHeight, this.mDisplayRealMetrics.densityDpi, this.mImageReader.getSurface(), 2, null, null);
            this.mVirtualDisplay = virtualDisplayCreateVirtualDisplay;
            int displayId = virtualDisplayCreateVirtualDisplay.getDisplay().getDisplayId();
            Intent intent = new Intent();
            intent.setClassName("com.baidu.naviauto", ACTIVITY_NAME);
            intent.setFlags(268439552);
            ActivityOptions activityOptionsMakeBasic = ActivityOptions.makeBasic();
            activityOptionsMakeBasic.setLaunchDisplayId(displayId);
            this.mContext.startActivity(intent, activityOptionsMakeBasic.toBundle());
            Log.w("TestForStartAppEarly", String.format("create virtual display %dx%d (%d)  displayid: %d", Integer.valueOf(this.mVirtualDispalyWidth), Integer.valueOf(this.mVirtualDisplayHeight), Integer.valueOf(this.mDisplayRealMetrics.densityDpi), Integer.valueOf(displayId)));
            if (this.mVirtualDisplay != null) {
                Log.i("TestForStartAppEarly", "create virtual display success");
            } else {
                Log.i("TestForStartAppEarly", "create virtual display fail");
            }
        } catch (Exception e) {
            Log.i("TestForStartAppEarly", "e:" + e.toString());
        }
    }

    public void init() {
        setupImageReader();
        setupVirtualDisplay();
        strStartAppEarly = startAppAfterLauncher();
    }

    public String startAppAfterLauncher() {
        int iLastIndexOf;
        String result = "";
        try {
            result = new ExeCommand().run("am stack list |grep Stack ", NaviResultCode.RESULT_OK).getResult();
        } catch (Exception e) {
            e.printStackTrace();
        }
        int iIndexOf = result.indexOf("1919");
        if (iIndexOf > 24) {
            iLastIndexOf = result.lastIndexOf("id=", iIndexOf);
            iIndexOf = result.lastIndexOf(" ", iIndexOf);
            this.strResult = result.substring(iLastIndexOf + 3, iIndexOf);
        } else {
            iLastIndexOf = -1;
        }
        Log.i("TestForStartAppEarly", "all result1: " + result + " \nnIndexStart " + iLastIndexOf + " nIndexEnd " + iIndexOf + "\nstrResult " + this.strResult + "*");
        return this.strResult;
    }

    public boolean startAppOnClick() {
        Log.i("TestForStartAppEarly", "startAppOnClick: ");
        try {
            if (new ExeCommand().run("am stack list |grep Stack", NaviResultCode.RESULT_OK).getResult().indexOf("1919") <= 24) {
                return false;
            }
            String str = "am display move-stack " + startAppAfterLauncher() + " 0";
            Log.i("TestForStartAppEarly", "cmdAll: " + str + "\nall result2: " + new ExeCommand().run(str, NaviResultCode.RESULT_OK).getResult());
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public void stopIme() {
        try {
            Log.i("TestForStartAppEarly", "cmd stop ime result: " + new ExeCommand().run("am force-stop com.sohu.inputmethod.sogou.oem", NaviResultCode.RESULT_OK).getResult());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
