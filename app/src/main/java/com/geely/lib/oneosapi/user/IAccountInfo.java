package com.geely.lib.oneosapi.user;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IAccountInfo extends IInterface {

    public static class Default implements IAccountInfo {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IAccountInfo
        public String getDeviceId() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IAccountInfo
        public String getDeviceVin() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IAccountInfo
        public String getNickName() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IAccountInfo
        public String getOpenId() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IAccountInfo
        public String getToken() throws RemoteException {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IAccountInfo {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.user.IAccountInfo";
        public static final int TRANSACTION_getDeviceId = 2;
        public static final int TRANSACTION_getDeviceVin = 3;
        public static final int TRANSACTION_getNickName = 4;
        public static final int TRANSACTION_getOpenId = 1;
        public static final int TRANSACTION_getToken = 5;

        public static class Proxy implements IAccountInfo {
            public static IAccountInfo sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.user.IAccountInfo
            public String getDeviceId() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getDeviceId();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IAccountInfo
            public String getDeviceVin() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getDeviceVin();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.user.IAccountInfo
            public String getNickName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getNickName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IAccountInfo
            public String getOpenId() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getOpenId();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IAccountInfo
            public String getToken() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getToken();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAccountInfo asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAccountInfo)) ? new Proxy(obj) : (IAccountInfo) iInterfaceQueryLocalInterface;
        }

        public static IAccountInfo getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAccountInfo impl) {
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
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                String openId = getOpenId();
                reply.writeNoException();
                reply.writeString(openId);
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                String deviceId = getDeviceId();
                reply.writeNoException();
                reply.writeString(deviceId);
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                String deviceVin = getDeviceVin();
                reply.writeNoException();
                reply.writeString(deviceVin);
                return true;
            }
            if (code == 4) {
                data.enforceInterface(DESCRIPTOR);
                String nickName = getNickName();
                reply.writeNoException();
                reply.writeString(nickName);
                return true;
            }
            if (code != 5) {
                return super.onTransact(code, data, reply, flags);
            }
            data.enforceInterface(DESCRIPTOR);
            String token = getToken();
            reply.writeNoException();
            reply.writeString(token);
            return true;
        }
    }

    String getDeviceId() throws RemoteException;

    String getDeviceVin() throws RemoteException;

    String getNickName() throws RemoteException;

    String getOpenId() throws RemoteException;

    String getToken() throws RemoteException;
}
