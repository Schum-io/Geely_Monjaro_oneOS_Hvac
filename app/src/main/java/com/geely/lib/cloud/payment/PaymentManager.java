package com.geely.lib.cloud.payment;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.payment.IPayment;
import com.geely.lib.cloud.payment.bean.GoodsChangeParam;
import com.geely.lib.cloud.payment.bean.ItemIdParam;
import com.geely.lib.cloud.payment.bean.LearJudgeParam;
import com.geely.lib.cloud.payment.bean.OrderCreateDto;
import com.geely.lib.cloud.payment.bean.OrderIdParam;
import com.geely.lib.cloud.payment.bean.OrderPayParam;
import com.geely.lib.cloud.payment.bean.OrderRenderParam;

/* loaded from: classes.dex */
public class PaymentManager implements ServiceBaseManager {
    private static final String TAG = "PaymentManager";
    private final Context mContext;
    private IPayment mService;

    public PaymentManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IPayment.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IPayment.Stub.asInterface(binder);
        }
    }

    public void getOrderRender(final OrderRenderParam orderRenderParam, final OperationListener callback) {
        Log.d(TAG, "getOrderRender");
        try {
            IPayment iPayment = this.mService;
            if (iPayment != null) {
                iPayment.getOrderRender(orderRenderParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.payment.PaymentManager.1
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getOrderCreate(final OrderCreateDto orderCreateDto, final OperationListener callback) {
        Log.d(TAG, "getOrderCreate");
        try {
            IPayment iPayment = this.mService;
            if (iPayment != null) {
                iPayment.getOrderCreate(orderCreateDto, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.payment.PaymentManager.2
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getOrderCancel(final OrderIdParam orderIdParam, final OperationListener callback) {
        Log.d(TAG, "getOrderCancel");
        try {
            IPayment iPayment = this.mService;
            if (iPayment != null) {
                iPayment.getOrderCancel(orderIdParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.payment.PaymentManager.3
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getOrderPay(final OrderPayParam orderPayParam, final OperationListener callback) {
        Log.d(TAG, "getOrderPay");
        try {
            IPayment iPayment = this.mService;
            if (iPayment != null) {
                iPayment.getOrderPay(orderPayParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.payment.PaymentManager.4
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getGoodsDetail(final ItemIdParam itemIdParam, final OperationListener callback) {
        Log.d(TAG, "getGoodsDetail");
        try {
            IPayment iPayment = this.mService;
            if (iPayment != null) {
                iPayment.getGoodsDetail(itemIdParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.payment.PaymentManager.5
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getGoodsChange(final GoodsChangeParam goodsChangeParam, final OperationListener callback) {
        Log.d(TAG, "getGoodsChange");
        try {
            IPayment iPayment = this.mService;
            if (iPayment != null) {
                iPayment.getGoodsChange(goodsChangeParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.payment.PaymentManager.6
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getGoodsPoint(final OperationListener callback) {
        Log.d(TAG, "getGoodsPoint");
        try {
            IPayment iPayment = this.mService;
            if (iPayment != null) {
                iPayment.getGoodsPoint(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.payment.PaymentManager.7
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getIOrderDetail(final OrderIdParam orderIdParam, final OperationListener callback) {
        Log.d(TAG, "getIOrderDetail");
        try {
            IPayment iPayment = this.mService;
            if (iPayment != null) {
                iPayment.getIOrderDetail(orderIdParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.payment.PaymentManager.8
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getLearJudge(final LearJudgeParam learJudgeParam, final OperationListener callback) {
        Log.d(TAG, "getLearJudge");
        try {
            IPayment iPayment = this.mService;
            if (iPayment != null) {
                iPayment.getLearJudge(learJudgeParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.payment.PaymentManager.9
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
