package com.geely.lib.cloud.apputil;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.apputil.IAppUtil;
import com.geely.lib.cloud.apputil.bean.AllDataParam;
import com.geely.lib.cloud.apputil.bean.MessageParam;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;

/* loaded from: classes.dex */
public class AppUtilManager implements ServiceBaseManager {
    private static final String TAG = "AppUtilManager";
    private Context mContext;
    private IAppUtil mService;
    private String mVin = null;
    private String mIhu = null;

    public AppUtilManager(Context context, IBinder binder) {
        Log.d(TAG, "AppUtilManager create");
        this.mContext = context;
        this.mService = IAppUtil.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        Log.d(TAG, "AppUtilManager setService");
        if (binder != null) {
            this.mService = IAppUtil.Stub.asInterface(binder);
        }
    }

    public void getMessageByPackage(final MessageParam messageParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getMessageByPackage");
        IAppUtil iAppUtil = this.mService;
        if (iAppUtil != null) {
            iAppUtil.getMessageByPackage(messageParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.apputil.AppUtilManager.1
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "service is null");
        }
    }

    public void getAllData(final String screen, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAllData");
        IAppUtil iAppUtil = this.mService;
        if (iAppUtil != null) {
            iAppUtil.getAllData(screen, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.apputil.AppUtilManager.2
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "service is null");
        }
    }

    public void getNewAllData(AllDataParam allDataParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getNewAllData");
        IAppUtil iAppUtil = this.mService;
        if (iAppUtil != null) {
            iAppUtil.getNewAllData(allDataParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.apputil.AppUtilManager.3
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "service is null");
        }
    }

    public String getVinCode() throws RemoteException {
        Log.d(TAG, "getVinCode");
        IAppUtil iAppUtil = this.mService;
        if (iAppUtil != null) {
            this.mVin = iAppUtil.getVinCode();
            Log.d(TAG, "vin : " + this.mVin);
        } else {
            Log.d(TAG, "mService = null");
        }
        return this.mVin;
    }

    public String getIhuCode() throws RemoteException {
        Log.d(TAG, "getIhuCode");
        IAppUtil iAppUtil = this.mService;
        if (iAppUtil != null) {
            this.mIhu = iAppUtil.getIhuCode();
            Log.d(TAG, "ihu : " + this.mIhu);
        } else {
            Log.d(TAG, "mService = null");
        }
        return this.mIhu;
    }
}
