package com.geely.lib.oneosapi.user;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IAutoAccountInfo extends IInterface {

    public static class Default implements IAutoAccountInfo {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IAutoAccountInfo
        public String getAutoUserAvatar() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IAutoAccountInfo
        public String getAutoUserId() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IAutoAccountInfo
        public String getAutoUserName() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IAutoAccountInfo
        public boolean isBindingSuccess() throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IAutoAccountInfo {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.user.IAutoAccountInfo";
        public static final int TRANSACTION_getAutoUserAvatar = 2;
        public static final int TRANSACTION_getAutoUserId = 1;
        public static final int TRANSACTION_getAutoUserName = 3;
        public static final int TRANSACTION_isBindingSuccess = 4;

        public static class Proxy implements IAutoAccountInfo {
            public static IAutoAccountInfo sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.user.IAutoAccountInfo
            public String getAutoUserAvatar() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAutoUserAvatar();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IAutoAccountInfo
            public String getAutoUserId() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAutoUserId();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IAutoAccountInfo
            public String getAutoUserName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAutoUserName();
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

            @Override // com.geely.lib.oneosapi.user.IAutoAccountInfo
            public boolean isBindingSuccess() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isBindingSuccess();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAutoAccountInfo asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAutoAccountInfo)) ? new Proxy(obj) : (IAutoAccountInfo) iInterfaceQueryLocalInterface;
        }

        public static IAutoAccountInfo getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAutoAccountInfo impl) {
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
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                String autoUserId = getAutoUserId();
                parcel2.writeNoException();
                parcel2.writeString(autoUserId);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                String autoUserAvatar = getAutoUserAvatar();
                parcel2.writeNoException();
                parcel2.writeString(autoUserAvatar);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                String autoUserName = getAutoUserName();
                parcel2.writeNoException();
                parcel2.writeString(autoUserName);
                return true;
            }
            if (i != 4) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zIsBindingSuccess = isBindingSuccess();
            parcel2.writeNoException();
            parcel2.writeInt(zIsBindingSuccess ? 1 : 0);
            return true;
        }
    }

    String getAutoUserAvatar() throws RemoteException;

    String getAutoUserId() throws RemoteException;

    String getAutoUserName() throws RemoteException;

    boolean isBindingSuccess() throws RemoteException;
}
