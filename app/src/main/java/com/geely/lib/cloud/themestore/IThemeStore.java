package com.geely.lib.cloud.themestore;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.appstore.bean.PdsnParam;
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
public interface IThemeStore extends IInterface {

    public static class Default implements IThemeStore {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getBuyResource(BuyResourceParam buyResourceParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getDelResource(DelResourceParam delResourceParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getGoodsDownloadResource(DownResourceParam downResourceParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getGoodsFrames(GetFramsParam getFramsParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getGoodsGetGoodsCateGory(GetGoodsCategoryParam getGoodsCategoryParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getGoodsOperateInfo(GetOperateInfoParam getOperateInfoParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getGoodsOperateMoreInfo(OperateMoreInfoParam operateMoreInfoParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getGoodsPreview(GoodsPreviewParam goodsPreviewParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getGoodsPurchaseResource(PurchaseResourceParam purchaseResourceParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getGoodsSearchGoods(SearchGoodsParam searchGoodsParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getGoodsSearchGoodsDetail(SearchGoodsDetailParam searchGoodsDetailParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getOrderCancleOrder(CancleOrderParam cancleOrderParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getOrderCreateOrder(CreateOrderParam createOrderParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getOrderPay(OrderPayParam orderPayParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getOrderSearchOrderStatus(SearchOrderStatusParam searchOrderStatusParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getThemeGoodsPurchaseCount(PdsnParam pdsnParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.themestore.IThemeStore
        public void getThemeGoodsPurchaseRecord(PurchaseRecordParam purchaseRecordParam, ICloudCallback callback) throws RemoteException {
        }
    }

    void getBuyResource(BuyResourceParam buyResourceParam, ICloudCallback callback) throws RemoteException;

    void getDelResource(DelResourceParam delResourceParam, ICloudCallback callback) throws RemoteException;

    void getGoodsDownloadResource(DownResourceParam downResourceParam, ICloudCallback callback) throws RemoteException;

    void getGoodsFrames(GetFramsParam getFramsParam, ICloudCallback callback) throws RemoteException;

    void getGoodsGetGoodsCateGory(GetGoodsCategoryParam getGoodsCategoryParam, ICloudCallback callback) throws RemoteException;

    void getGoodsOperateInfo(GetOperateInfoParam getOperateInfoParam, ICloudCallback callback) throws RemoteException;

    void getGoodsOperateMoreInfo(OperateMoreInfoParam operateMoreInfoParam, ICloudCallback callback) throws RemoteException;

    void getGoodsPreview(GoodsPreviewParam goodsPreviewParam, ICloudCallback callback) throws RemoteException;

    void getGoodsPurchaseResource(PurchaseResourceParam purchaseResourceParam, ICloudCallback callback) throws RemoteException;

    void getGoodsSearchGoods(SearchGoodsParam searchGoodsParam, ICloudCallback callback) throws RemoteException;

    void getGoodsSearchGoodsDetail(SearchGoodsDetailParam searchGoodsDetailParam, ICloudCallback callback) throws RemoteException;

    void getOrderCancleOrder(CancleOrderParam cancleOrderParam, ICloudCallback callback) throws RemoteException;

    void getOrderCreateOrder(CreateOrderParam createOrderParam, ICloudCallback callback) throws RemoteException;

    void getOrderPay(OrderPayParam orderPayParam, ICloudCallback callback) throws RemoteException;

    void getOrderSearchOrderStatus(SearchOrderStatusParam searchOrderStatusParam, ICloudCallback callback) throws RemoteException;

    void getThemeGoodsPurchaseCount(PdsnParam pdsnParam, ICloudCallback callback) throws RemoteException;

    void getThemeGoodsPurchaseRecord(PurchaseRecordParam purchaseRecordParam, ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IThemeStore {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.themestore.IThemeStore";
        static final int TRANSACTION_getBuyResource = 16;
        static final int TRANSACTION_getDelResource = 17;
        static final int TRANSACTION_getGoodsDownloadResource = 9;
        static final int TRANSACTION_getGoodsFrames = 1;
        static final int TRANSACTION_getGoodsGetGoodsCateGory = 4;
        static final int TRANSACTION_getGoodsOperateInfo = 2;
        static final int TRANSACTION_getGoodsOperateMoreInfo = 3;
        static final int TRANSACTION_getGoodsPreview = 7;
        static final int TRANSACTION_getGoodsPurchaseResource = 8;
        static final int TRANSACTION_getGoodsSearchGoods = 5;
        static final int TRANSACTION_getGoodsSearchGoodsDetail = 6;
        static final int TRANSACTION_getOrderCancleOrder = 13;
        static final int TRANSACTION_getOrderCreateOrder = 10;
        static final int TRANSACTION_getOrderPay = 11;
        static final int TRANSACTION_getOrderSearchOrderStatus = 12;
        static final int TRANSACTION_getThemeGoodsPurchaseCount = 15;
        static final int TRANSACTION_getThemeGoodsPurchaseRecord = 14;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IThemeStore asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IThemeStore)) {
                return (IThemeStore) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsFrames(parcel.readInt() != 0 ? GetFramsParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsOperateInfo(parcel.readInt() != 0 ? GetOperateInfoParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsOperateMoreInfo(parcel.readInt() != 0 ? OperateMoreInfoParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsGetGoodsCateGory(parcel.readInt() != 0 ? GetGoodsCategoryParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsSearchGoods(parcel.readInt() != 0 ? SearchGoodsParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsSearchGoodsDetail(parcel.readInt() != 0 ? SearchGoodsDetailParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsPreview(parcel.readInt() != 0 ? GoodsPreviewParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsPurchaseResource(parcel.readInt() != 0 ? PurchaseResourceParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsDownloadResource(parcel.readInt() != 0 ? DownResourceParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    getOrderCreateOrder(parcel.readInt() != 0 ? CreateOrderParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    getOrderPay(parcel.readInt() != 0 ? OrderPayParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    getOrderSearchOrderStatus(parcel.readInt() != 0 ? SearchOrderStatusParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    getOrderCancleOrder(parcel.readInt() != 0 ? CancleOrderParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    getThemeGoodsPurchaseRecord(parcel.readInt() != 0 ? PurchaseRecordParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    getThemeGoodsPurchaseCount(parcel.readInt() != 0 ? PdsnParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    getBuyResource(parcel.readInt() != 0 ? BuyResourceParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    getDelResource(parcel.readInt() != 0 ? DelResourceParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IThemeStore {
            public static IThemeStore sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getGoodsFrames(GetFramsParam getFramsParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (getFramsParam != null) {
                        parcelObtain.writeInt(1);
                        getFramsParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsFrames(getFramsParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getGoodsOperateInfo(GetOperateInfoParam getOperateInfoParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (getOperateInfoParam != null) {
                        parcelObtain.writeInt(1);
                        getOperateInfoParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsOperateInfo(getOperateInfoParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getGoodsOperateMoreInfo(OperateMoreInfoParam operateMoreInfoParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (operateMoreInfoParam != null) {
                        parcelObtain.writeInt(1);
                        operateMoreInfoParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsOperateMoreInfo(operateMoreInfoParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getGoodsGetGoodsCateGory(GetGoodsCategoryParam getGoodsCategoryParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (getGoodsCategoryParam != null) {
                        parcelObtain.writeInt(1);
                        getGoodsCategoryParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsGetGoodsCateGory(getGoodsCategoryParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getGoodsSearchGoods(SearchGoodsParam searchGoodsParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (searchGoodsParam != null) {
                        parcelObtain.writeInt(1);
                        searchGoodsParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsSearchGoods(searchGoodsParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getGoodsSearchGoodsDetail(SearchGoodsDetailParam searchGoodsDetailParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (searchGoodsDetailParam != null) {
                        parcelObtain.writeInt(1);
                        searchGoodsDetailParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsSearchGoodsDetail(searchGoodsDetailParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getGoodsPreview(GoodsPreviewParam goodsPreviewParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (goodsPreviewParam != null) {
                        parcelObtain.writeInt(1);
                        goodsPreviewParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsPreview(goodsPreviewParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getGoodsPurchaseResource(PurchaseResourceParam purchaseResourceParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (purchaseResourceParam != null) {
                        parcelObtain.writeInt(1);
                        purchaseResourceParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsPurchaseResource(purchaseResourceParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getGoodsDownloadResource(DownResourceParam downResourceParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (downResourceParam != null) {
                        parcelObtain.writeInt(1);
                        downResourceParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsDownloadResource(downResourceParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getOrderCreateOrder(CreateOrderParam createOrderParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (createOrderParam != null) {
                        parcelObtain.writeInt(1);
                        createOrderParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(10, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getOrderCreateOrder(createOrderParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getOrderPay(OrderPayParam orderPayParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (orderPayParam != null) {
                        parcelObtain.writeInt(1);
                        orderPayParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(11, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getOrderPay(orderPayParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getOrderSearchOrderStatus(SearchOrderStatusParam searchOrderStatusParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (searchOrderStatusParam != null) {
                        parcelObtain.writeInt(1);
                        searchOrderStatusParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(12, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getOrderSearchOrderStatus(searchOrderStatusParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getOrderCancleOrder(CancleOrderParam cancleOrderParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (cancleOrderParam != null) {
                        parcelObtain.writeInt(1);
                        cancleOrderParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(13, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getOrderCancleOrder(cancleOrderParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getThemeGoodsPurchaseRecord(PurchaseRecordParam purchaseRecordParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (purchaseRecordParam != null) {
                        parcelObtain.writeInt(1);
                        purchaseRecordParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(14, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getThemeGoodsPurchaseRecord(purchaseRecordParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getThemeGoodsPurchaseCount(PdsnParam pdsnParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pdsnParam != null) {
                        parcelObtain.writeInt(1);
                        pdsnParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(15, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getThemeGoodsPurchaseCount(pdsnParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getBuyResource(BuyResourceParam buyResourceParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (buyResourceParam != null) {
                        parcelObtain.writeInt(1);
                        buyResourceParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(16, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getBuyResource(buyResourceParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.themestore.IThemeStore
            public void getDelResource(DelResourceParam delResourceParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (delResourceParam != null) {
                        parcelObtain.writeInt(1);
                        delResourceParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(17, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDelResource(delResourceParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IThemeStore impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IThemeStore getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
