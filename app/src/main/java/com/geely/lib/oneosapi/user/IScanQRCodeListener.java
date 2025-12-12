package com.geely.lib.oneosapi.user;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IScanQRCodeListener extends IInterface {

    public static class Default implements IScanQRCodeListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IScanQRCodeListener
        public void getQrCodeStatus(String status, String info) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.IScanQRCodeListener
        public void scanQrCodeStatus(String status, String info) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IScanQRCodeListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.user.IScanQRCodeListener";
        public static final int TRANSACTION_getQrCodeStatus = 1;
        public static final int TRANSACTION_scanQrCodeStatus = 2;

        public static class Proxy implements IScanQRCodeListener {
            public static IScanQRCodeListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.user.IScanQRCodeListener
            public void getQrCodeStatus(String status, String info) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(status);
                    parcelObtain.writeString(info);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getQrCodeStatus(status, info);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IScanQRCodeListener
            public void scanQrCodeStatus(String status, String info) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(status);
                    parcelObtain.writeString(info);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().scanQrCodeStatus(status, info);
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

        public static IScanQRCodeListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IScanQRCodeListener)) ? new Proxy(obj) : (IScanQRCodeListener) iInterfaceQueryLocalInterface;
        }

        public static IScanQRCodeListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IScanQRCodeListener impl) {
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
                getQrCodeStatus(data.readString(), data.readString());
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
            scanQrCodeStatus(data.readString(), data.readString());
            reply.writeNoException();
            return true;
        }
    }

    void getQrCodeStatus(String status, String info) throws RemoteException;

    void scanQrCodeStatus(String status, String info) throws RemoteException;
}
