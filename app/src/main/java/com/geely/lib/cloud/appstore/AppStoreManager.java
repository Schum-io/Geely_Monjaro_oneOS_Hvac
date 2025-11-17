package com.geely.lib.cloud.appstore;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.appstore.IAppStore;
import com.geely.lib.cloud.appstore.bean.AppPackageParam;
import com.geely.lib.cloud.appstore.bean.AppVersionParam;
import com.geely.lib.cloud.appstore.bean.IdPdsnParam;
import com.geely.lib.cloud.appstore.bean.PdsnAppListParam;
import com.geely.lib.cloud.appstore.bean.PdsnIdParam;
import com.geely.lib.cloud.appstore.bean.PdsnKeyNewParam;
import com.geely.lib.cloud.appstore.bean.PdsnKeyParam;
import com.geely.lib.cloud.appstore.bean.PdsnParam;
import com.geely.lib.cloud.appstore.bean.PdsnVersionParam;
import com.geely.lib.cloud.appstore.bean.VinPackageParam;
import com.geely.lib.cloud.common.CommonUtil;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;

/* loaded from: classes.dex */
public class AppStoreManager implements ServiceBaseManager {
    private static final String TAG = "AppStoreManager";
    private Context mContext;
    private IAppStore mService;

    public AppStoreManager(Context context, IBinder binder) {
        Log.d(TAG, "AppStoreManager create");
        this.mContext = context;
        this.mService = IAppStore.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        Log.d(TAG, "AppStoreManager setService");
        if (binder != null) {
            this.mService = IAppStore.Stub.asInterface(binder);
        }
    }

    public void getAppStoresHome(final PdsnVersionParam pasnVersionParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoresHome");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoresHome(pasnVersionParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.1
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

    public void getAppStoreDownRanking(final PdsnParam pdsnParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoreDownRanking");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoreDownRanking(pdsnParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.2
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppStoreGroupList(final IdPdsnParam idPdsnParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoreGroupList");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoreGroupList(idPdsnParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.3
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppStoreBatchCheckUpdate(final PdsnAppListParam pdsnAppListParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoreBatchCheckUpdate");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoreBatchCheckUpdate(pdsnAppListParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.4
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppStoreCategory(final PdsnParam pdsnParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoreCategory");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoreCategory(pdsnParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.5
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppStoreCategoryList(final PdsnIdParam pdsnIdParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoreCategoryList");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoreCategoryList(pdsnIdParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.6
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppStoreSearch(final PdsnKeyParam pdsnKeyParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoreSearch");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoreSearch(pdsnKeyParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.7
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppStoreDetails(final VinPackageParam vinPackageParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoreDetails");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoreDetails(vinPackageParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.8
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppStoreDownUp(final AppPackageParam appPackageParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoreDownUp");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoreDownUp(appPackageParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.9
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppStoreGameHome(final PdsnVersionParam vinVersionParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoreGameHome");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoreGameHome(vinVersionParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.10
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppStoreGameSearch(final PdsnKeyParam vinKeyParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppStoreGameSearch");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppStoreGameSearch(vinKeyParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.11
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppVersionAdd(final AppVersionParam appVersionParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppVersionAdd");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppVersionAdd(appVersionParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.12
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getAppInstallAdd(final AppVersionParam appVersionParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAppInstallAdd");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getAppInstallAdd(appVersionParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.appstore.AppStoreManager.13
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
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

    public void getNewAppStoreSearch(final PdsnKeyNewParam pdsnKeyNewParam, OperationListener callback) throws Exception {
        Log.d(TAG, "getNewAppStoreSearch");
        IAppStore iAppStore = this.mService;
        if (iAppStore != null) {
            iAppStore.getNewAppStoreSearch(pdsnKeyNewParam, CommonUtil.getDataCallBack(callback));
        } else {
            Log.d(TAG, "service is null");
        }
    }
}
