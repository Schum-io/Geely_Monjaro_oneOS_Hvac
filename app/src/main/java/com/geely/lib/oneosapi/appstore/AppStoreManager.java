package com.geely.lib.oneosapi.appstore;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.oneosapi.appstore.IAppStoreInterface;
import com.geely.lib.oneosapi.appstore.bean.AppStoreTaskInfo;
import com.geely.lib.oneosapi.common.ServiceBaseManager;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class AppStoreManager implements ServiceBaseManager {
    private static final String TAG = "AppStoreManager";
    private IAppStoreInterface mService;

    public AppStoreManager(IBinder binder) {
        initAppStoreManager(binder);
    }

    private void initAppStoreManager(IBinder binder) {
        if (binder != null) {
            this.mService = IAppStoreInterface.Stub.asInterface(binder);
        }
    }

    private void serviceIsNull() {
        Log.d(TAG, "AppStoreServiceIsNull");
    }

    public void cancelDownload(String taskId) {
        IAppStoreInterface iAppStoreInterface = this.mService;
        if (iAppStoreInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iAppStoreInterface.cancelDownload(taskId);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public List<AppStoreTaskInfo> getUnfinishedApp() {
        IAppStoreInterface iAppStoreInterface = this.mService;
        if (iAppStoreInterface == null) {
            serviceIsNull();
            return new ArrayList();
        }
        try {
            return iAppStoreInterface.getAllPendingDownloadApp();
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public void registerTaskCallBack(IAppStoreTaskCallback iAppStoreCallback) {
        IAppStoreInterface iAppStoreInterface = this.mService;
        if (iAppStoreInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iAppStoreInterface.registerTaskCallBack(iAppStoreCallback);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // com.geely.lib.oneosapi.common.ServiceBaseManager
    public void setService(IBinder binder) {
        initAppStoreManager(binder);
    }

    public void startDownload(String taskId) {
        IAppStoreInterface iAppStoreInterface = this.mService;
        if (iAppStoreInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iAppStoreInterface.startDownload(taskId);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public void stopDownload(String taskId) {
        IAppStoreInterface iAppStoreInterface = this.mService;
        if (iAppStoreInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iAppStoreInterface.stopDownload(taskId);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }

    public void unregisterTaskCallBack(IAppStoreTaskCallback iAppStoreCallback) {
        IAppStoreInterface iAppStoreInterface = this.mService;
        if (iAppStoreInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iAppStoreInterface.unregisterTaskCallBack(iAppStoreCallback);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        }
    }
}
