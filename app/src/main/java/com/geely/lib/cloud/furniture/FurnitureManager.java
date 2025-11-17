package com.geely.lib.cloud.furniture;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.furniture.IFurniture;
import com.geely.lib.cloud.furniture.bean.DeviceParam;
import com.geely.lib.cloud.furniture.bean.JDAccountParam;
import com.geely.lib.cloud.furniture.bean.JDQrcodeParam;
import com.geely.lib.cloud.furniture.bean.SceneActionParam;
import com.geely.lib.cloud.listener.OperationListener;

/* loaded from: classes.dex */
public class FurnitureManager implements ServiceBaseManager {
    private static final String TAG = "FurnitureManager";
    private final Context mContext;
    private IFurniture mService;

    public FurnitureManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IFurniture.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IFurniture.Stub.asInterface(binder);
        }
    }

    public void getSmartHomeCardList(String terminalId, final OperationListener callback) {
        Log.d(TAG, "getSmartHomeCardList");
        try {
            IFurniture iFurniture = this.mService;
            if (iFurniture != null) {
                iFurniture.getSmartHomeCardList(terminalId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.furniture.FurnitureManager.1
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

    public void getSmartHomeSceneList(String terminalId, final OperationListener callback) {
        Log.d(TAG, "getSmartHomeSceneList");
        try {
            IFurniture iFurniture = this.mService;
            if (iFurniture != null) {
                iFurniture.getSmartHomeSceneList(terminalId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.furniture.FurnitureManager.2
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

    public void getSmartHomeSceneAction(final SceneActionParam sceneActionParam, final OperationListener callback) {
        Log.d(TAG, "getSmartHomeSceneAction");
        try {
            IFurniture iFurniture = this.mService;
            if (iFurniture != null) {
                iFurniture.getSmartHomeSceneAction(sceneActionParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.furniture.FurnitureManager.3
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

    public void getSmartHomeDeviceControl(final DeviceParam deviceParam, final OperationListener callback) {
        Log.d(TAG, "getSmartHomeDeviceControl");
        try {
            IFurniture iFurniture = this.mService;
            if (iFurniture != null) {
                iFurniture.getSmartHomeDeviceControl(deviceParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.furniture.FurnitureManager.4
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

    public void getJDLoginQrcode(final JDQrcodeParam jdQrcodeParam, final OperationListener callback) {
        Log.d(TAG, "getJDLoginQrcode");
        try {
            IFurniture iFurniture = this.mService;
            if (iFurniture != null) {
                iFurniture.getJDLoginQrcode(jdQrcodeParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.furniture.FurnitureManager.5
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

    public void getJDAuthInfo(final String terminalId, String userQrcode, final OperationListener callback) {
        Log.d(TAG, "getJDAuthInfo");
        try {
            IFurniture iFurniture = this.mService;
            if (iFurniture != null) {
                iFurniture.getJDAuthInfo(terminalId, userQrcode, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.furniture.FurnitureManager.6
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

    public void getJDUnboundAccount(final JDAccountParam jdAccountParam, final OperationListener callback) {
        Log.d(TAG, "getJDUnboundAccount");
        try {
            IFurniture iFurniture = this.mService;
            if (iFurniture != null) {
                iFurniture.getJDUnboundAccount(jdAccountParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.furniture.FurnitureManager.7
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
}
