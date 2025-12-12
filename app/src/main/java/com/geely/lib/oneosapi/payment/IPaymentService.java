package com.geely.lib.oneosapi.payment;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.payment.IPaymentCallback;

/* loaded from: classes.dex */
public interface IPaymentService extends IInterface {

    public static class Default implements IPaymentService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.payment.IPaymentService
        public void isPaySuccessCallback(int code, String msg) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.payment.IPaymentService
        public void startPayment(OrderRenderParam orderInfo, IPaymentCallback isPaySuccessCallback) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IPaymentService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.payment.IPaymentService";
        public static final int TRANSACTION_isPaySuccessCallback = 2;
        public static final int TRANSACTION_startPayment = 1;

        public static class Proxy implements IPaymentService {
            public static IPaymentService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.payment.IPaymentService
            public void isPaySuccessCallback(int code, String msg) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(code);
                    parcelObtain.writeString(msg);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().isPaySuccessCallback(code, msg);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.payment.IPaymentService
            public void startPayment(OrderRenderParam orderInfo, IPaymentCallback isPaySuccessCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (orderInfo != null) {
                        parcelObtain.writeInt(1);
                        orderInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(isPaySuccessCallback != null ? isPaySuccessCallback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().startPayment(orderInfo, isPaySuccessCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IPaymentService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IPaymentService)) ? new Proxy(obj) : (IPaymentService) iInterfaceQueryLocalInterface;
        }

        public static IPaymentService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IPaymentService impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                startPayment(data.readInt() != 0 ? OrderRenderParam.CREATOR.createFromParcel(data) : null, IPaymentCallback.Stub.asInterface(data.readStrongBinder()));
                reply.writeNoException();
                return true;
            }
            if (code != 2) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            isPaySuccessCallback(data.readInt(), data.readString());
            reply.writeNoException();
            return true;
        }
    }

    void isPaySuccessCallback(int code, String msg) throws RemoteException;

    void startPayment(OrderRenderParam orderInfo, IPaymentCallback isPaySuccessCallback) throws RemoteException;
}
