package com.geely.lib.cloud.trilateral;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.trilateral.ITrilateral;
import com.geely.lib.cloud.trilateral.bean.TerminalIdParam;
import com.geely.lib.cloud.trilateral.bean.ThirdTypeParam;

/* loaded from: classes.dex */
public class TrilateralManager implements ServiceBaseManager {
    private static final String TAG = "TrilateralManager";
    private final Context mContext;
    private ITrilateral mService;

    public TrilateralManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = ITrilateral.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = ITrilateral.Stub.asInterface(binder);
        }
    }

    public void getTaiLoginQrcode(final TerminalIdParam terminalIdParam, final OperationListener callback) {
        Log.d(TAG, "getTaiLoginQrcode");
        try {
            ITrilateral iTrilateral = this.mService;
            if (iTrilateral != null) {
                iTrilateral.getTaiLoginQrcode(terminalIdParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.trilateral.TrilateralManager.1
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

    public void getBindingAccount(final OperationListener callback) {
        Log.d(TAG, "getTaiBindingAccount");
        try {
            ITrilateral iTrilateral = this.mService;
            if (iTrilateral != null) {
                iTrilateral.getTaiBindingAccount(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.trilateral.TrilateralManager.2
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

    public void getTaiUnboundAccount(ThirdTypeParam thirdTypeParam, final OperationListener callback) {
        Log.d(TAG, "getTaiUnboundAccount");
        try {
            ITrilateral iTrilateral = this.mService;
            if (iTrilateral != null) {
                iTrilateral.getTaiUnboundAccount(thirdTypeParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.trilateral.TrilateralManager.3
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

    public void getAutoUnboundAccount(final ThirdTypeParam thirdTypeParam, final OperationListener callback) {
        Log.d(TAG, "getAutoUnboundAccount");
        try {
            ITrilateral iTrilateral = this.mService;
            if (iTrilateral != null) {
                iTrilateral.getAutoUnboundAccount(thirdTypeParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.trilateral.TrilateralManager.4
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
