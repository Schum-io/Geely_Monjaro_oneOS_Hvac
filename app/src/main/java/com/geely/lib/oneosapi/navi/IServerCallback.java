package com.geely.lib.oneosapi.navi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.navi.INaviServer;

/* loaded from: classes.dex */
public interface IServerCallback extends IInterface {

    public static class Default implements IServerCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.IServerCallback
        public String getKey() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.IServerCallback
        public void initFailed(int errorCode, String errorMessage) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.IServerCallback
        public void initSuccess(INaviServer naviservice) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IServerCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.navi.IServerCallback";
        public static final int TRANSACTION_getKey = 1;
        public static final int TRANSACTION_initFailed = 3;
        public static final int TRANSACTION_initSuccess = 2;

        public static class Proxy implements IServerCallback {
            public static IServerCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.navi.IServerCallback
            public String getKey() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getKey();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.IServerCallback
            public void initFailed(int errorCode, String errorMessage) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(errorCode);
                    parcelObtain.writeString(errorMessage);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().initFailed(errorCode, errorMessage);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.IServerCallback
            public void initSuccess(INaviServer naviservice) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(naviservice != null ? naviservice.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().initSuccess(naviservice);
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

        public static IServerCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IServerCallback)) ? new Proxy(obj) : (IServerCallback) iInterfaceQueryLocalInterface;
        }

        public static IServerCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IServerCallback impl) {
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
                String key = getKey();
                reply.writeNoException();
                reply.writeString(key);
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                initSuccess(INaviServer.Stub.asInterface(data.readStrongBinder()));
                reply.writeNoException();
                return true;
            }
            if (code != 3) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            initFailed(data.readInt(), data.readString());
            reply.writeNoException();
            return true;
        }
    }

    String getKey() throws RemoteException;

    void initFailed(int errorCode, String errorMessage) throws RemoteException;

    void initSuccess(INaviServer naviservice) throws RemoteException;
}
