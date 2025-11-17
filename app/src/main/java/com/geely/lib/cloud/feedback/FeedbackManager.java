package com.geely.lib.cloud.feedback;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.feedback.IFeedback;
import com.geely.lib.cloud.feedback.bean.WorkOrderPostParam;
import com.geely.lib.cloud.listener.OperationListener;

/* loaded from: classes.dex */
public class FeedbackManager implements ServiceBaseManager {
    private static final String TAG = "FeedbackManager";
    private final Context mContext;
    private IFeedback mService;

    public FeedbackManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IFeedback.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IFeedback.Stub.asInterface(binder);
        }
    }

    public void getWorkOrderList(final String classifyID, final String vin, final OperationListener callback) {
        Log.d(TAG, "getWorkOrderList");
        try {
            IFeedback iFeedback = this.mService;
            if (iFeedback != null) {
                iFeedback.getWorkOrderList(classifyID, vin, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.feedback.FeedbackManager.1
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

    public void getWorkOrderPost(final WorkOrderPostParam workOrderPostParam, final OperationListener callback) {
        Log.d(TAG, "getWorkOrderPost");
        try {
            IFeedback iFeedback = this.mService;
            if (iFeedback != null) {
                iFeedback.getWorkOrderPost(workOrderPostParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.feedback.FeedbackManager.2
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
