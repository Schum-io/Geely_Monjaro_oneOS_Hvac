package com.geely.hvac;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.Toast;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.activity.GlyMainActivity;
import com.geely.hvac.databinding.LayoutMainBinding;
import com.geely.hvac.databinding.LayoutToastBinding;
import com.geely.hvac.provider.AcVisibilityListener;
import com.geely.hvac.provider.HvacCommunicateContentProvider;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.ToastUtil;
import com.geely.hvac.utils.ToastUtilViewCreate;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.geely.lib.oneosapi.input.KeyCode;

/* loaded from: classes.dex */
public class GlyAcInterfaceManager {
    private static final String TAG = "GlyAcInterfaceManager";
    private AcVisibilityListener mAcVisibilityListener;
    private LayoutMainBinding mMainBinding;
    private AppMainViewModel mMainViewModel;
    private Context mAppCtx = null;
    private FrameLayout mRootLayout = null;
    private final float LOW_ELEVATION = 20.0f;
    private final float HIGH_ELEVATION = 30.0f;

    public void setAcVisibilityListener(AcVisibilityListener acVisibilityListener) {
        LogUtil.d(TAG, "setAcVisibilityListener, listener:" + acVisibilityListener);
        this.mAcVisibilityListener = acVisibilityListener;
    }

    public void init(Context ctx) {
        this.mAppCtx = ctx.getApplicationContext();
        ToastUtil.setToastUtilViewCreate(new ToastUtilViewCreate() { // from class: com.geely.hvac.GlyAcInterfaceManager.1
            @Override // com.geely.hvac.utils.ToastUtilViewCreate
            public void onToast(Context context, Toast toast, String msg) {
                LayoutToastBinding layoutToastBindingInflate = LayoutToastBinding.inflate(LayoutInflater.from(context));
                layoutToastBindingInflate.toastTv.setText(msg);
                toast.setView(layoutToastBindingInflate.getRoot());
                toast.setGravity(81, 0, KeyCode.KEYCODE_CALCULATOR);
            }

            @Override // com.geely.hvac.utils.ToastUtilViewCreate
            public void onTimeToast(Context context, com.geely.hvac.component.Toast toast, String msg) {
                LayoutToastBinding layoutToastBindingInflate = LayoutToastBinding.inflate(LayoutInflater.from(context));
                layoutToastBindingInflate.toastTv.setText(msg);
                toast.setView(layoutToastBindingInflate.getRoot());
                toast.setGravity(81, 0, KeyCode.KEYCODE_CALCULATOR);
            }
        });
        this.mMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        HvacCommunicateContentProvider.setAcVisibilityListener(new AcVisibilityListener() { // from class: com.geely.hvac.GlyAcInterfaceManager.2
            @Override // com.geely.hvac.provider.AcVisibilityListener
            public void onVisible(String extra) {
                GlyAcInterfaceManager.this.show();
            }

            @Override // com.geely.hvac.provider.AcVisibilityListener
            public void onInVisible(String extra) {
                if (GlyAcInterfaceManager.this.mAcVisibilityListener != null) {
                    GlyAcInterfaceManager.this.mAcVisibilityListener.onInVisible(extra);
                }
            }
        });
    }

    public void onConfigurationChanged(Configuration newConfig) {
        LogUtil.d(TAG, "reCreate View");
        AppMainViewModel appMainViewModel = this.mMainViewModel;
        if (appMainViewModel != null) {
            appMainViewModel.onConfigurationChanged(newConfig);
        }
    }

    public void resetHideRunnable() {
        AcVisibilityListener acVisibilityListener = this.mAcVisibilityListener;
        if (acVisibilityListener != null) {
            acVisibilityListener.onVisible(null);
        }
    }

    public void show() {
        LogUtil.d(TAG, "show");
        Intent intent = new Intent(GlyAcApp.getInstance(), (Class<?>) GlyMainActivity.class);
        intent.addFlags(268435456);
        GlyAcApp.getInstance().startActivity(intent);
    }

    public void dismiss() {
        AcVisibilityListener acVisibilityListener = this.mAcVisibilityListener;
        if (acVisibilityListener != null) {
            acVisibilityListener.onInVisible(null);
        }
    }
}
