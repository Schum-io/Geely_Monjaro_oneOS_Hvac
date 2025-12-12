package com.geely.lib.oneosapi.navi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface RemoteConnectionCallback extends IInterface {

    public static class Default implements RemoteConnectionCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.RemoteConnectionCallback
        public void onConnected(String serviceName, IBinder binder) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.RemoteConnectionCallback
        public void onDisconnected(String serviceName, int reason) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements RemoteConnectionCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.navi.RemoteConnectionCallback";
        public static final int TRANSACTION_onConnected = 1;
        public static final int TRANSACTION_onDisconnected = 2;

        public static class Proxy implements RemoteConnectionCallback {
            public static RemoteConnectionCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.navi.RemoteConnectionCallback
            public void onConnected(String serviceName, IBinder binder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(serviceName);
                    parcelObtain.writeStrongBinder(binder);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onConnected(serviceName, binder);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.RemoteConnectionCallback
            public void onDisconnected(String serviceName, int reason) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(serviceName);
                    parcelObtain.writeInt(reason);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onDisconnected(serviceName, reason);
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

        public static RemoteConnectionCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof RemoteConnectionCallback)) ? new Proxy(obj) : (RemoteConnectionCallback) iInterfaceQueryLocalInterface;
        }

        public static RemoteConnectionCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(RemoteConnectionCallback impl) {
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
                onConnected(data.readString(), data.readStrongBinder());
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
            onDisconnected(data.readString(), data.readInt());
            reply.writeNoException();
            return true;
        }
    }

    void onConnected(String serviceName, IBinder binder) throws RemoteException;

    void onDisconnected(String serviceName, int reason) throws RemoteException;
}
