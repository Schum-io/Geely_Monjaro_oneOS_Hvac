package com.geely.lib.cloud.themestore;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.appstore.bean.PdsnParam;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.themestore.IThemeStore;
import com.geely.lib.cloud.themestore.bean.BuyResourceParam;
import com.geely.lib.cloud.themestore.bean.CancleOrderParam;
import com.geely.lib.cloud.themestore.bean.CreateOrderParam;
import com.geely.lib.cloud.themestore.bean.DelResourceParam;
import com.geely.lib.cloud.themestore.bean.DownResourceParam;
import com.geely.lib.cloud.themestore.bean.GetFramsParam;
import com.geely.lib.cloud.themestore.bean.GetGoodsCategoryParam;
import com.geely.lib.cloud.themestore.bean.GetOperateInfoParam;
import com.geely.lib.cloud.themestore.bean.GoodsPreviewParam;
import com.geely.lib.cloud.themestore.bean.OperateMoreInfoParam;
import com.geely.lib.cloud.themestore.bean.OrderPayParam;
import com.geely.lib.cloud.themestore.bean.PurchaseRecordParam;
import com.geely.lib.cloud.themestore.bean.PurchaseResourceParam;
import com.geely.lib.cloud.themestore.bean.SearchGoodsDetailParam;
import com.geely.lib.cloud.themestore.bean.SearchGoodsParam;
import com.geely.lib.cloud.themestore.bean.SearchOrderStatusParam;

/* loaded from: classes.dex */
public class ThemeStoreManager implements ServiceBaseManager {
    private static final String TAG = "ThemeStoreManager";
    private final Context mContext;
    private IThemeStore mService;

    public ThemeStoreManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IThemeStore.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IThemeStore.Stub.asInterface(binder);
        }
    }

    public void getGoodsFrames(final GetFramsParam getFramsParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getGoodsFrames");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getGoodsFrames(getFramsParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.1
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

    public void getGoodsOperateInfo(final GetOperateInfoParam getOperateInfoParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getGoodsOperateInfo");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getGoodsOperateInfo(getOperateInfoParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.2
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

    public void getGoodsOperateMoreInfo(final OperateMoreInfoParam operateMoreInfoParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getGoodsOperateMoreInfo");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getGoodsOperateMoreInfo(operateMoreInfoParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.3
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

    public void getGoodsGetGoodsCateGory(final GetGoodsCategoryParam getGoodsCategoryParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getGoodsGetGoodsCateGory");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getGoodsGetGoodsCateGory(getGoodsCategoryParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.4
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

    public void getGoodsSearchGoods(final SearchGoodsParam searchGoodsParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getGoodsSearchGoods");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getGoodsSearchGoods(searchGoodsParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.5
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

    public void getGoodsSearchGoodsDetail(final SearchGoodsDetailParam searchGoodsDetailParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getGoodsSearchGoodsDetail");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getGoodsSearchGoodsDetail(searchGoodsDetailParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.6
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

    public void getGoodsPreview(final GoodsPreviewParam goodsPreviewParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getGoodsPreview");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getGoodsPreview(goodsPreviewParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.7
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

    public void getGoodsPurchaseResource(final PurchaseResourceParam purchaseResourceParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getGoodsPurchaseResource");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getGoodsPurchaseResource(purchaseResourceParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.8
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

    public void getGoodsDownloadResource(final DownResourceParam downResourceParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getGoodsDownloadResource");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getGoodsDownloadResource(downResourceParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.9
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

    public void getOrderCreateOrder(final CreateOrderParam createOrderParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getOrderCreateOrder");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getOrderCreateOrder(createOrderParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.10
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

    public void getOrderPay(final OrderPayParam orderPayParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getOrderPay");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getOrderPay(orderPayParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.11
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

    public void getOrderSearchOrderStatus(final SearchOrderStatusParam searchOrderStatusParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getOrderSearchOrderStatus");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getOrderSearchOrderStatus(searchOrderStatusParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.12
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

    public void getOrderCancleOrder(final CancleOrderParam cancleOrderParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getOrderCancleOrder");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getOrderCancleOrder(cancleOrderParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.13
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

    public void getThemeGoodsPurchaseRecord(final PurchaseRecordParam purchaseRecordParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getThemeGoodsPurchaseRecord");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getThemeGoodsPurchaseRecord(purchaseRecordParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.14
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

    public void getThemeGoodsPurchaseCount(final PdsnParam pdsnParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getThemeGoodsPurchaseCount");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getThemeGoodsPurchaseCount(pdsnParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.15
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

    public void getBuyResource(final BuyResourceParam buyResourceParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getBuyResource");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getBuyResource(buyResourceParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.16
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

    public void getDelResource(final DelResourceParam delResourceParam, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getDelResource");
        IThemeStore iThemeStore = this.mService;
        if (iThemeStore != null) {
            iThemeStore.getDelResource(delResourceParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.themestore.ThemeStoreManager.17
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
