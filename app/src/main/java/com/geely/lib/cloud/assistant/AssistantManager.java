package com.geely.lib.cloud.assistant;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.assistant.IAssistant;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;

/* loaded from: classes.dex */
public class AssistantManager implements ServiceBaseManager {
    private static final String TAG = "AssistantManager";
    private IAssistant mService;

    public AssistantManager(Context context, IBinder binder) {
        Log.d(TAG, "AssistantManager create");
        this.mService = IAssistant.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        Log.d(TAG, "AssistantManager setService");
        if (binder != null) {
            this.mService = IAssistant.Stub.asInterface(binder);
        }
    }

    public void getModelList(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getModelList");
        IAssistant iAssistant = this.mService;
        if (iAssistant != null) {
            iAssistant.getModelList(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.assistant.AssistantManager.1
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

    public void getModel1001(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getModel1001");
        IAssistant iAssistant = this.mService;
        if (iAssistant != null) {
            iAssistant.getModel1001(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.assistant.AssistantManager.2
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

    public void getModel1002(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getModel1002");
        IAssistant iAssistant = this.mService;
        if (iAssistant != null) {
            iAssistant.getModel1002(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.assistant.AssistantManager.3
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

    public void getDrivingPositions(String startTime, String endTime, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getDrivingPositions");
        IAssistant iAssistant = this.mService;
        if (iAssistant != null) {
            iAssistant.getDrivingPositions(startTime, endTime, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.assistant.AssistantManager.4
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
}
