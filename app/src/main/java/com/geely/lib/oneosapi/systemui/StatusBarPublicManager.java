package com.geely.lib.oneosapi.systemui;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.oneosapi.common.ServiceBaseManager;
import com.geely.lib.oneosapi.systemui.IStatusBarService;
import com.geely.lib.oneosapi.systemui.listener.IStatusBarModeChangeListener;

/* loaded from: classes.dex */
public class StatusBarPublicManager implements ServiceBaseManager {
    public static final int DARK = 2;
    public static final int DEFAULT = 0;
    public static final int LIGHT = 1;
    private static final String STATUS_BAR_MODE = "StatusBarMode";
    private static final String TAG = "StatusBarPublicManager";
    private IStatusBarService mService;

    public StatusBarPublicManager(Context mContext, IBinder binder) {
        this.mService = IStatusBarService.Stub.asInterface(binder);
    }

    private void closeDialogByName(String dialogName) {
        Log.d(TAG, "closeDialogByName--dialogName." + dialogName);
        if (!isServiceAlive()) {
            Log.d(TAG, "closeDialogByName: service is not alive");
            return;
        }
        try {
            this.mService.closeDialogByName(dialogName);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private boolean isServiceAlive() {
        IStatusBarService iStatusBarService = this.mService;
        return iStatusBarService != null && iStatusBarService.asBinder().isBinderAlive();
    }

    private void setLeftTempStateVisibility(String leftTempStateContents, int visibility) {
        Log.d(TAG, "setLeftTempStateMediaVisibility leftTempStateContents : " + leftTempStateContents + " visibility :" + visibility);
        if (!isServiceAlive()) {
            Log.d(TAG, "setPsdStatusVisibility: service is not alive");
            return;
        }
        try {
            this.mService.setLeftTempStateVisibility(leftTempStateContents, visibility);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private void showDialogByName(String dialogName) {
        Log.d(TAG, "dialogName." + dialogName);
        if (!isServiceAlive()) {
            Log.d(TAG, "showDialogByName: service is not alive");
            return;
        }
        try {
            this.mService.showDialogByName(dialogName);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void closeAccessPointDialog() {
        closeDialogByName("AccessPoint");
    }

    public void closeBluetoothDialog() {
        closeDialogByName("Bluetooth");
    }

    public void closeWifiDialog() {
        closeDialogByName("Wifi");
    }

    public int getPsdStatusBarVisibility() {
        Log.d(TAG, "getPsdStatusBarVisibility");
        if (isServiceAlive()) {
            try {
                return this.mService.getPsdStatusBarVisibility();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } else {
            Log.d(TAG, "getPsdStatusBarVisibility: service is not alive");
        }
        return 0;
    }

    public Bundle getStatusBarWindowMode() {
        Log.d(TAG, "getStatusBarWindowMode  ");
        if (isServiceAlive()) {
            try {
                return this.mService.getStatusBarWindowMode();
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } else {
            Log.d(TAG, "getStatusBarWindowMode: service is not alive");
        }
        return null;
    }

    public void registerStatusBarModeChangeListener(IStatusBarModeChangeListener listener, String pkg) {
        Log.d(TAG, "registerStatusBarModeChangeListener pkg: " + pkg);
        Log.d(TAG, "registerStatusBarModeChangeListener mService " + this.mService);
        IStatusBarService iStatusBarService = this.mService;
        if (iStatusBarService == null || !iStatusBarService.asBinder().isBinderAlive()) {
            return;
        }
        try {
            this.mService.registerStatusBarModeChangeListener(listener, pkg);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void setCsdActivity(IBinder csdActitvity) {
        Log.d(TAG, "setCsdActivity csdActitvity" + csdActitvity);
        if (!isServiceAlive()) {
            Log.d(TAG, "setCsdActivity: service is not alive");
            return;
        }
        try {
            this.mService.setCsdActivity(csdActitvity);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void setLeftTempStateMediaVisibility(int visibility) {
        setLeftTempStateVisibility("music", visibility);
    }

    public void setPsdActivity(IBinder psdAcitvity) {
        Log.d(TAG, "setPsdActivity psdAcitvity" + psdAcitvity);
        if (!isServiceAlive()) {
            Log.d(TAG, "setPsdActivity: service is not alive");
            return;
        }
        try {
            this.mService.setPsdActivity(psdAcitvity);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void setPsdStatusVisibility(int visibility) {
        Log.d(TAG, "setPsdStatusVisibility visibility" + visibility);
        if (!isServiceAlive()) {
            Log.d(TAG, "setPsdStatusVisibility: service is not alive");
            return;
        }
        try {
            this.mService.setPsdStatusVisibility(visibility);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.geely.lib.oneosapi.common.ServiceBaseManager
    public void setService(IBinder binder) {
        this.mService = IStatusBarService.Stub.asInterface(binder);
    }

    public void showAccessPointDialog() {
        showDialogByName("AccessPoint");
    }

    public void showBluetoothDialog() {
        showDialogByName("Bluetooth");
    }

    public void showCsdBluetoothDialogInPsd() {
        showDialogByName("CsdBluetoothInPsd");
    }

    public void showPsdBluetoothDialog() {
        showDialogByName("PsdBluetooth");
    }

    public void showWifiDialog() {
        showDialogByName("Wifi");
    }

    public void unRegisterStatusBarModeChangeListener(IStatusBarModeChangeListener listener, String pkg) {
        Log.d(TAG, "unRegisterStatusBarModeChangeListener pkg: " + pkg);
        Log.d(TAG, "unRegisterStatusBarModeChangeListener mService " + this.mService);
        IStatusBarService iStatusBarService = this.mService;
        if (iStatusBarService == null || !iStatusBarService.asBinder().isBinderAlive()) {
            return;
        }
        try {
            this.mService.unRegisterStatusBarModeChangeListener(listener, pkg);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
