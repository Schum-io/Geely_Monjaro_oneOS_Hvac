package com.geely.lib.oneosapi.launcher;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.oneosapi.common.ServiceBaseManager;
import com.geely.lib.oneosapi.launcher.ILauncherService;
import com.geely.lib.oneosapi.launcher.listener.IEnterOrExitHomePageChangeListener;
import com.geely.lib.oneosapi.launcher.listener.ILauncherPageSwitchListener;
import com.geely.lib.oneosapi.launcher.listener.IMapWidgetChangeListener;
import com.geely.lib.oneosapi.launcher.listener.IWeatherWidgetChangeListener;
import com.geely.lib.oneosapi.launcher.listener.IWidgetListDisplayChangeListener;

/* loaded from: classes.dex */
public class LauncherManager implements ServiceBaseManager {
    private static final String TAG = "ShortcutManager";
    private ILauncherService mService;

    public LauncherManager(Context mContext, IBinder binder) {
        this.mService = ILauncherService.Stub.asInterface(binder);
    }

    private boolean isServiceAlive() {
        ILauncherService iLauncherService = this.mService;
        return iLauncherService != null && iLauncherService.asBinder().isBinderAlive();
    }

    public void closeApplets(String appletsKey) {
        if (!isServiceAlive()) {
            Log.d(TAG, "closeApplets: service is not alive");
            return;
        }
        try {
            this.mService.closeApplets(appletsKey);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void hvacMassageDisplay(boolean isShow, boolean isMain) {
        if (!isServiceAlive()) {
            Log.d(TAG, "hvacMassageDisplay: service is not alive");
            return;
        }
        try {
            this.mService.hvacMassageDisplay(isShow, isMain);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public boolean isWidgetsShowing(boolean isPsd) {
        if (!isServiceAlive()) {
            Log.d(TAG, "isWidgetsShowing: service is not alive");
            return false;
        }
        try {
            return this.mService.isWidgetsShowing(isPsd);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void mediaSourceListDisplay(boolean show, boolean isPsd) {
        if (!isServiceAlive()) {
            Log.d(TAG, "mediaSourceListDisplay: service is not alive");
            return;
        }
        try {
            this.mService.mediaSourceListDisplay(show, isPsd);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void openApplets(String appletsKey) {
        if (!isServiceAlive()) {
            Log.d(TAG, "openApplets: service is not alive");
            return;
        }
        try {
            this.mService.openApplets(appletsKey);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void registerEnterOrExitHomePageChangeListener(IEnterOrExitHomePageChangeListener listener) {
        if (!isServiceAlive()) {
            Log.d(TAG, "unRegisterWeatherWidgetListener: service is not alive");
            return;
        }
        try {
            this.mService.registerEnterOrExitHomePageChangeListener(listener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void registerLauncherPageSwitchListener(ILauncherPageSwitchListener listener) {
        if (!isServiceAlive()) {
            Log.d(TAG, "registerLauncherPageSwitchListener: service is not alive");
            return;
        }
        try {
            this.mService.registerLauncherPageSwitchListener(listener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void registerMapWidgetListener(IMapWidgetChangeListener listener) {
        if (!isServiceAlive()) {
            Log.d(TAG, "registerMapWidgetListener: service is not alive");
            return;
        }
        try {
            this.mService.registerMapWidgetListener(listener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void registerWeatherWidgetListener(IWeatherWidgetChangeListener listener) {
        if (!isServiceAlive()) {
            Log.d(TAG, "registerWeatherWidgetListener: service is not alive");
            return;
        }
        try {
            this.mService.registerWeatherWidgetListener(listener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void registerWidgetListDisplayChangeListener(IWidgetListDisplayChangeListener listener) {
        if (!isServiceAlive()) {
            Log.d(TAG, "registerWidgetListDisplayChangeListener: service is not alive");
            return;
        }
        try {
            this.mService.registerWidgetListDisplayChangeListener(listener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void selectWidgetMap(String classname) {
        if (!isServiceAlive()) {
            Log.d(TAG, "selectWidgetMap: service is not alive");
            return;
        }
        try {
            this.mService.selectWidgetMap(classname);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.geely.lib.oneosapi.common.ServiceBaseManager
    public void setService(IBinder binder) {
        this.mService = ILauncherService.Stub.asInterface(binder);
    }

    public void showPsdMediaControlWidget(boolean isShow) {
        if (!isServiceAlive()) {
            Log.d(TAG, "showPsdMediaControlWidget: service is not alive");
            return;
        }
        try {
            this.mService.showPsdMediaControlWidget(isShow);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void startGlobalSearch(String keyWord) {
        if (!isServiceAlive()) {
            Log.d(TAG, "startGlobalSearch: service is not alive");
            return;
        }
        try {
            this.mService.startGlobalSearch(keyWord);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void togglePsdWidget() {
        if (!isServiceAlive()) {
            Log.d(TAG, "togglePsdWidget: service is not alive");
            return;
        }
        try {
            this.mService.togglePsdWidget();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void toggleWidget() {
        if (!isServiceAlive()) {
            Log.d(TAG, "toggleWidget: service is not alive");
            return;
        }
        try {
            this.mService.toggleWidget();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void unRegisterEnterOrExitHomePageChangeListener(IEnterOrExitHomePageChangeListener listener) {
        if (!isServiceAlive()) {
            Log.d(TAG, "unRegisterWeatherWidgetListener: service is not alive");
            return;
        }
        try {
            this.mService.unRegisterEnterOrExitHomePageChangeListener(listener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void unRegisterLauncherPageSwitchListener(ILauncherPageSwitchListener listener) {
        if (!isServiceAlive()) {
            Log.d(TAG, "unRegisterLauncherPageSwitchListener: service is not alive");
            return;
        }
        try {
            this.mService.unRegisterLauncherPageSwitchListener(listener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void unRegisterMapWidgetListener(IMapWidgetChangeListener listener) {
        if (!isServiceAlive()) {
            Log.d(TAG, "unRegisterMapWidgetListener: service is not alive");
            return;
        }
        try {
            this.mService.unRegisterMapWidgetListener(listener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void unRegisterWeatherWidgetListener(IWeatherWidgetChangeListener listener) {
        if (!isServiceAlive()) {
            Log.d(TAG, "unRegisterWeatherWidgetListener: service is not alive");
            return;
        }
        try {
            this.mService.unRegisterWeatherWidgetListener(listener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void unRegisterWidgetListDisplayChangeListener(IWidgetListDisplayChangeListener listener) {
        if (!isServiceAlive()) {
            Log.d(TAG, "unRegisterWidgetListDisplayChangeListener: service is not alive");
            return;
        }
        try {
            this.mService.unRegisterWidgetListDisplayChangeListener(listener);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
