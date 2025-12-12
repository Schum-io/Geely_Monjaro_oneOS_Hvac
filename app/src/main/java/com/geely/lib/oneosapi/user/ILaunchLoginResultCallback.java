package com.geely.lib.oneosapi.user;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ILaunchLoginResultCallback extends IInterface {

    public static class Default implements ILaunchLoginResultCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.ILaunchLoginResultCallback
        public void onLoginResult(int requestCode, int resultCode) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ILaunchLoginResultCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.user.ILaunchLoginResultCallback";
        public static final int TRANSACTION_onLoginResult = 1;

        public static class Proxy implements ILaunchLoginResultCallback {
            public static ILaunchLoginResultCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.user.ILaunchLoginResultCallback
            public void onLoginResult(int requestCode, int resultCode) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(requestCode);
                    parcelObtain.writeInt(resultCode);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onLoginResult(requestCode, resultCode);
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

        public static ILaunchLoginResultCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ILaunchLoginResultCallback)) ? new Proxy(obj) : (ILaunchLoginResultCallback) iInterfaceQueryLocalInterface;
        }

        public static ILaunchLoginResultCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ILaunchLoginResultCallback impl) {
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
            if (code != 1) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            onLoginResult(data.readInt(), data.readInt());
            reply.writeNoException();
            return true;
        }
    }

    void onLoginResult(int requestCode, int resultCode) throws RemoteException;
}
