package com.geely.lib.cloud.download;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.IDownloadCallBack;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.download.IDownload;
import com.geely.lib.cloud.download.bean.TaskEntity;

/* loaded from: classes.dex */
public class DownloadManager implements ServiceBaseManager {
    private static final String TAG = "DownloadManager";
    private Context mContext;
    private IDownload mService;

    public DownloadManager(Context context, IBinder binder) {
        Log.d(TAG, "DownloadManager create");
        this.mContext = context;
        this.mService = IDownload.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        Log.d(TAG, "DownloadManager setService");
        if (binder != null) {
            this.mService = IDownload.Stub.asInterface(binder);
        }
    }

    public void getDownloadFile(final TaskEntity taskEntity, final IDownloadCallBack callback) throws RemoteException {
        Log.d(TAG, "getDownloadFile");
        IDownload iDownload = this.mService;
        if (iDownload != null) {
            iDownload.getDownloadFile(taskEntity, callback);
        } else {
            Log.d(TAG, "service is null");
        }
    }
}
