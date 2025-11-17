package com.geely.lib.cloud.payment;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.payment.bean.GoodsChangeParam;
import com.geely.lib.cloud.payment.bean.ItemIdParam;
import com.geely.lib.cloud.payment.bean.LearJudgeParam;
import com.geely.lib.cloud.payment.bean.OrderCreateDto;
import com.geely.lib.cloud.payment.bean.OrderIdParam;
import com.geely.lib.cloud.payment.bean.OrderPayParam;
import com.geely.lib.cloud.payment.bean.OrderRenderParam;

/* loaded from: classes.dex */
public interface IPayment extends IInterface {

    public static class Default implements IPayment {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.payment.IPayment
        public void getGoodsChange(GoodsChangeParam goodsChangeParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.payment.IPayment
        public void getGoodsDetail(ItemIdParam itemIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.payment.IPayment
        public void getGoodsPoint(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.payment.IPayment
        public void getIOrderDetail(OrderIdParam orderIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.payment.IPayment
        public void getLearJudge(LearJudgeParam learJudgeParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.payment.IPayment
        public void getOrderCancel(OrderIdParam orderIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.payment.IPayment
        public void getOrderCreate(OrderCreateDto orderCreateDto, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.payment.IPayment
        public void getOrderPay(OrderPayParam orderPayParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.payment.IPayment
        public void getOrderRender(OrderRenderParam orderRenderParam, ICloudCallback callback) throws RemoteException {
        }
    }

    void getGoodsChange(GoodsChangeParam goodsChangeParam, ICloudCallback callback) throws RemoteException;

    void getGoodsDetail(ItemIdParam itemIdParam, ICloudCallback callback) throws RemoteException;

    void getGoodsPoint(ICloudCallback callback) throws RemoteException;

    void getIOrderDetail(OrderIdParam orderIdParam, ICloudCallback callback) throws RemoteException;

    void getLearJudge(LearJudgeParam learJudgeParam, ICloudCallback callback) throws RemoteException;

    void getOrderCancel(OrderIdParam orderIdParam, ICloudCallback callback) throws RemoteException;

    void getOrderCreate(OrderCreateDto orderCreateDto, ICloudCallback callback) throws RemoteException;

    void getOrderPay(OrderPayParam orderPayParam, ICloudCallback callback) throws RemoteException;

    void getOrderRender(OrderRenderParam orderRenderParam, ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IPayment {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.payment.IPayment";
        static final int TRANSACTION_getGoodsChange = 6;
        static final int TRANSACTION_getGoodsDetail = 5;
        static final int TRANSACTION_getGoodsPoint = 7;
        static final int TRANSACTION_getIOrderDetail = 8;
        static final int TRANSACTION_getLearJudge = 9;
        static final int TRANSACTION_getOrderCancel = 3;
        static final int TRANSACTION_getOrderCreate = 2;
        static final int TRANSACTION_getOrderPay = 4;
        static final int TRANSACTION_getOrderRender = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPayment asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IPayment)) {
                return (IPayment) iInterfaceQueryLocalInterface;
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
                    getOrderRender(parcel.readInt() != 0 ? OrderRenderParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    getOrderCreate(parcel.readInt() != 0 ? OrderCreateDto.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    getOrderCancel(parcel.readInt() != 0 ? OrderIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    getOrderPay(parcel.readInt() != 0 ? OrderPayParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsDetail(parcel.readInt() != 0 ? ItemIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsChange(parcel.readInt() != 0 ? GoodsChangeParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGoodsPoint(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    getIOrderDetail(parcel.readInt() != 0 ? OrderIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    getLearJudge(parcel.readInt() != 0 ? LearJudgeParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IPayment {
            public static IPayment sDefaultImpl;
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

            @Override // com.geely.lib.cloud.payment.IPayment
            public void getOrderRender(OrderRenderParam orderRenderParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (orderRenderParam != null) {
                        parcelObtain.writeInt(1);
                        orderRenderParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getOrderRender(orderRenderParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.payment.IPayment
            public void getOrderCreate(OrderCreateDto orderCreateDto, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (orderCreateDto != null) {
                        parcelObtain.writeInt(1);
                        orderCreateDto.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getOrderCreate(orderCreateDto, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.payment.IPayment
            public void getOrderCancel(OrderIdParam orderIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (orderIdParam != null) {
                        parcelObtain.writeInt(1);
                        orderIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getOrderCancel(orderIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.payment.IPayment
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
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getOrderPay(orderPayParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.payment.IPayment
            public void getGoodsDetail(ItemIdParam itemIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (itemIdParam != null) {
                        parcelObtain.writeInt(1);
                        itemIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsDetail(itemIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.payment.IPayment
            public void getGoodsChange(GoodsChangeParam goodsChangeParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (goodsChangeParam != null) {
                        parcelObtain.writeInt(1);
                        goodsChangeParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsChange(goodsChangeParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.payment.IPayment
            public void getGoodsPoint(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getGoodsPoint(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.payment.IPayment
            public void getIOrderDetail(OrderIdParam orderIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (orderIdParam != null) {
                        parcelObtain.writeInt(1);
                        orderIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getIOrderDetail(orderIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.payment.IPayment
            public void getLearJudge(LearJudgeParam learJudgeParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (learJudgeParam != null) {
                        parcelObtain.writeInt(1);
                        learJudgeParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getLearJudge(learJudgeParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IPayment impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IPayment getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
