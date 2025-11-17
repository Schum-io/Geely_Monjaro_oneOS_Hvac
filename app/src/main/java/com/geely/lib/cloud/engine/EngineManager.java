package com.geely.lib.cloud.engine;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.engine.IEngine;
import com.geely.lib.cloud.engine.bean.CheckUpdateParam;
import com.geely.lib.cloud.engine.bean.DeleteBatchCreationParam;
import com.geely.lib.cloud.engine.bean.DeleteFavouriteParam;
import com.geely.lib.cloud.engine.bean.PublishParam;
import com.geely.lib.cloud.engine.bean.SceneCodeParam;
import com.geely.lib.cloud.engine.bean.SceneIdParam;
import com.geely.lib.cloud.engine.bean.SceneParam;
import com.geely.lib.cloud.engine.bean.UpdateFavouriteParam;
import com.geely.lib.cloud.engine.bean.UpdateReportParam;
import com.geely.lib.cloud.listener.OperationListener;

/* loaded from: classes.dex */
public class EngineManager implements ServiceBaseManager {
    public static final String TAG = "EngineManager";
    private final Context mContext;
    private IEngine mService;

    public EngineManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IEngine.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IEngine.Stub.asInterface(binder);
        }
    }

    public void getVehicleCloudCheckUpdate(final CheckUpdateParam checkUpdateParam, final OperationListener callback) {
        Log.d(TAG, "getVehicleCloudCheckUpdate");
        try {
            IEngine iEngine = this.mService;
            if (iEngine != null) {
                iEngine.getVehicleCloudCheckUpdate(checkUpdateParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.1
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
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getVehicleCloudUpdateReport(final UpdateReportParam updateReportParam, final OperationListener callback) {
        Log.d(TAG, "getVehicleCloudUpdateReport");
        try {
            IEngine iEngine = this.mService;
            if (iEngine != null) {
                iEngine.getVehicleCloudUpdateReport(updateReportParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.2
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
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getSceneList(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getVehicleCloudUpdateReport");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getSceneList(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.3
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
            Log.e(TAG, "service is null");
        }
    }

    public void getSceneDetail(final SceneCodeParam sceneCodeParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getSceneDetail");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getSceneDetail(sceneCodeParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.4
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
            Log.e(TAG, "service is null");
        }
    }

    public void getFavoriteList(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getFavoriteList");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getFavoriteList(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.5
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
            Log.e(TAG, "service is null");
        }
    }

    public void getFavoriteUpdate(final UpdateFavouriteParam updateFavouriteParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getFavoriteUpdate");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getFavoriteUpdate(updateFavouriteParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.6
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
            Log.e(TAG, "service is null");
        }
    }

    public void getFavoriteInsert(final SceneIdParam sceneIdParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getFavoriteInsert");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getFavoriteInsert(sceneIdParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.7
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
            Log.e(TAG, "service is null");
        }
    }

    public void getFavoriteDelete(final SceneIdParam sceneIdParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getFavoriteDelete");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getFavoriteDelete(sceneIdParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.8
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
            Log.e(TAG, "service is null");
        }
    }

    public void getCreationList(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getCreationList");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getCreationList(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.9
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
            Log.e(TAG, "service is null");
        }
    }

    public void getCreationDelete(final SceneIdParam sceneIdParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getCreationDelete");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getCreationDelete(sceneIdParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.10
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
            Log.e(TAG, "service is null");
        }
    }

    public void getCreationAdd(final SceneParam sceneParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getCreationAdd");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getCreationAdd(sceneParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.11
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
            Log.e(TAG, "service is null");
        }
    }

    public void getCreationUpdate(final SceneParam sceneParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getCreationUpdate");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getCreationUpdate(sceneParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.12
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
            Log.e(TAG, "service is null");
        }
    }

    public void getCreationPublish(final PublishParam publishParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getCreationPublish");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getCreationPublish(publishParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.13
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
            Log.e(TAG, "service is null");
        }
    }

    public void getAbility(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getAbility");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getAbility(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.14
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
            Log.e(TAG, "service is null");
        }
    }

    public void getConfig(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getConfig");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getConfig(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.15
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
            Log.e(TAG, "service is null");
        }
    }

    public void getLabelList(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getLabelList");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getLabelList(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.16
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
            Log.e(TAG, "service is null");
        }
    }

    public void deleteFavourite(DeleteFavouriteParam deleteFavouriteParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "deleteFavourite");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.deleteFavourite(deleteFavouriteParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.17
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
            Log.e(TAG, "service is null");
        }
    }

    public void deleteBatchCreation(DeleteBatchCreationParam deleteBatchCreationParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "deleteBatchCreation");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.deleteBatchCreation(deleteBatchCreationParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.18
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
            Log.e(TAG, "service is null");
        }
    }

    public void getTheme(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getTheme");
        IEngine iEngine = this.mService;
        if (iEngine != null) {
            iEngine.getTheme(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.engine.EngineManager.19
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
            Log.e(TAG, "service is null");
        }
    }
}
