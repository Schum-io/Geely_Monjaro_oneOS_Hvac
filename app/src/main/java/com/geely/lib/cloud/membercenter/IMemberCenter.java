package com.geely.lib.cloud.membercenter;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;

/* loaded from: classes.dex */
public interface IMemberCenter extends IInterface {

    public static class Default implements IMemberCenter {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.membercenter.IMemberCenter
        public void getLoginInfo(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.membercenter.IMemberCenter
        public void getLoginQrCode(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.membercenter.IMemberCenter
        public void getLoginQrCodeStatus(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.membercenter.IMemberCenter
        public void logout(String accessToken, String refreshToken, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.membercenter.IMemberCenter
        public void refreshToken(String accessToken, String refreshToken, ICloudCallback callback) throws RemoteException {
        }
    }

    void getLoginInfo(ICloudCallback callback) throws RemoteException;

    void getLoginQrCode(ICloudCallback callback) throws RemoteException;

    void getLoginQrCodeStatus(ICloudCallback callback) throws RemoteException;

    void logout(String accessToken, String refreshToken, ICloudCallback callback) throws RemoteException;

    void refreshToken(String accessToken, String refreshToken, ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IMemberCenter {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.membercenter.IMemberCenter";
        static final int TRANSACTION_getLoginInfo = 3;
        static final int TRANSACTION_getLoginQrCode = 1;
        static final int TRANSACTION_getLoginQrCodeStatus = 2;
        static final int TRANSACTION_logout = 5;
        static final int TRANSACTION_refreshToken = 4;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMemberCenter asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IMemberCenter)) {
                return (IMemberCenter) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                getLoginQrCode(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                getLoginQrCodeStatus(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                getLoginInfo(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 4) {
                data.enforceInterface(DESCRIPTOR);
                refreshToken(data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 5) {
                data.enforceInterface(DESCRIPTOR);
                logout(data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static class Proxy implements IMemberCenter {
            public static IMemberCenter sDefaultImpl;
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

            @Override // com.geely.lib.cloud.membercenter.IMemberCenter
            public void getLoginQrCode(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getLoginQrCode(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.membercenter.IMemberCenter
            public void getLoginQrCodeStatus(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getLoginQrCodeStatus(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.membercenter.IMemberCenter
            public void getLoginInfo(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getLoginInfo(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.membercenter.IMemberCenter
            public void refreshToken(String accessToken, String refreshToken, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(accessToken);
                    parcelObtain.writeString(refreshToken);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().refreshToken(accessToken, refreshToken, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.membercenter.IMemberCenter
            public void logout(String accessToken, String refreshToken, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(accessToken);
                    parcelObtain.writeString(refreshToken);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().logout(accessToken, refreshToken, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IMemberCenter impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IMemberCenter getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
