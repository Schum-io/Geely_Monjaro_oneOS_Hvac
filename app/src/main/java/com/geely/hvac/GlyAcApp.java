package com.geely.hvac;

import android.app.Application;
import android.content.Context;
import android.content.res.Configuration;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import com.geely.hvac.data.GlySensorsData;
import com.geely.hvac.utils.ActivityManager;
import com.geely.hvac.utils.ConfigurationChangedDelegate;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.StackPrinter;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.geely.lib.oneosapi.OneOSApiManager;
import com.geely.lib.oneosapi.listener.ApiConnectCallBack;

/* loaded from: classes.dex */
public class GlyAcApp extends Application implements ViewModelStoreOwner {
    private static final String TAG = "GlyAcApp";
    public static boolean isPSDSave;
    private static GlyAcApp mInstance;
    private final ViewModelStore mViewModelStore = new ViewModelStore();

    public static GlyAcApp getInstance() {
        return mInstance;
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context base) {
        LogUtil.d(TAG, "attachBaseContext");
        super.attachBaseContext(base);
        mInstance = this;
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        LogUtil.d(TAG, "onConfigurationChanged");
        ConfigurationChangedDelegate.onConfigurationChanged(newConfig);
        GlyAcManager.getInstance().getAcInterfaceManager().onConfigurationChanged(newConfig);
    }

    @Override // android.app.Application
    public void onCreate() {
        LogUtil.d(TAG, "onCreate");
        super.onCreate();
        init();
    }

    private void init() {
        ActivityManager.getInstance().init(this);
        Executor.IO.execute(this::initAsync);
        try {
            GlyAcManager.getInstance().init(this);
        } catch (Throwable th) {
            LogUtil.e(TAG, StackPrinter.getExceptionStack(th));
        }
    }

    public void initAsync() {
        LogUtil.d(TAG, "flavor:kx11a2");
        GlySensorsData.init(this);
        OneOSApiManager.getInstance(this).init(new ApiConnectCallBack() { // from class: com.geely.hvac.GlyAcApp.1
            @Override // com.geely.lib.oneosapi.listener.ApiConnectCallBack
            public void success() {
                LogUtil.d(GlyAcApp.TAG, "success: one os api init success");
                AppMainViewModel appMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
                GlySensorsData.registerSuperProperties(GlyAcApp.this.getApplicationContext(), 1);
                appMainViewModel.lambda$startLeftSeatPhysicsSaveDialog$33$MainViewModel();
            }

            @Override // com.geely.lib.oneosapi.listener.ApiConnectCallBack
            public void fail() {
                LogUtil.d(GlyAcApp.TAG, "fail: one os api init fail");
            }
        });
    }

    @Override // androidx.lifecycle.ViewModelStoreOwner
    public ViewModelStore getViewModelStore() {
        return this.mViewModelStore;
    }

    public void clearViewModel() {
        this.mViewModelStore.clear();
    }
}
