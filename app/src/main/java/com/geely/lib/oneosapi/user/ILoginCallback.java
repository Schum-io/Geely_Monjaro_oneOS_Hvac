package com.geely.lib.oneosapi.user;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.user.bean.UserInfo;

/* loaded from: classes.dex */
public interface ILoginCallback extends IInterface {

    public static class Default implements ILoginCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.ILoginCallback
        public void onLogin() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.ILoginCallback
        public void onLogout() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.ILoginCallback
        public void onTokenChanged(String token) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.ILoginCallback
        public void onTokenRefresh(String token) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.ILoginCallback
        public void onUserInfoChanged(UserInfo userInfo) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ILoginCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.user.ILoginCallback";
        public static final int TRANSACTION_onLogin = 1;
        public static final int TRANSACTION_onLogout = 2;
        public static final int TRANSACTION_onTokenChanged = 4;
        public static final int TRANSACTION_onTokenRefresh = 3;
        public static final int TRANSACTION_onUserInfoChanged = 5;

        public static class Proxy implements ILoginCallback {
            public static ILoginCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.user.ILoginCallback
            public void onLogin() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onLogin();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.ILoginCallback
            public void onLogout() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onLogout();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.ILoginCallback
            public void onTokenChanged(String token) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(token);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTokenChanged(token);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.ILoginCallback
            public void onTokenRefresh(String token) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(token);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTokenRefresh(token);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.ILoginCallback
            public void onUserInfoChanged(UserInfo userInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (userInfo != null) {
                        parcelObtain.writeInt(1);
                        userInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onUserInfoChanged(userInfo);
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

        public static ILoginCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ILoginCallback)) ? new Proxy(obj) : (ILoginCallback) iInterfaceQueryLocalInterface;
        }

        public static ILoginCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ILoginCallback impl) {
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
                onLogin();
                reply.writeNoException();
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                onLogout();
                reply.writeNoException();
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                onTokenRefresh(data.readString());
                reply.writeNoException();
                return true;
            }
            if (code == 4) {
                data.enforceInterface(DESCRIPTOR);
                onTokenChanged(data.readString());
                reply.writeNoException();
                return true;
            }
            if (code != 5) {
                return super.onTransact(code, data, reply, flags);
            }
            data.enforceInterface(DESCRIPTOR);
            onUserInfoChanged(data.readInt() != 0 ? UserInfo.CREATOR.createFromParcel(data) : null);
            reply.writeNoException();
            return true;
        }
    }

    void onLogin() throws RemoteException;

    void onLogout() throws RemoteException;

    void onTokenChanged(String token) throws RemoteException;

    void onTokenRefresh(String token) throws RemoteException;

    void onUserInfoChanged(UserInfo userInfo) throws RemoteException;
}
