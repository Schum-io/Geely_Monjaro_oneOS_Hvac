package com.geely.lib.oneosapi.scenemode;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ISceneModeServiceChangedListener extends IInterface {

    public static class Default implements ISceneModeServiceChangedListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener
        public void onFrontStateChanged(int state) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener
        public void onOpenStateChanged(int state) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener
        public void onSceneModeNameChanged(String name) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ISceneModeServiceChangedListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener";
        public static final int TRANSACTION_onFrontStateChanged = 2;
        public static final int TRANSACTION_onOpenStateChanged = 1;
        public static final int TRANSACTION_onSceneModeNameChanged = 3;

        public static class Proxy implements ISceneModeServiceChangedListener {
            public static ISceneModeServiceChangedListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener
            public void onFrontStateChanged(int state) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(state);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onFrontStateChanged(state);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener
            public void onOpenStateChanged(int state) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(state);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onOpenStateChanged(state);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener
            public void onSceneModeNameChanged(String name) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(name);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSceneModeNameChanged(name);
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

        public static ISceneModeServiceChangedListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISceneModeServiceChangedListener)) ? new Proxy(obj) : (ISceneModeServiceChangedListener) iInterfaceQueryLocalInterface;
        }

        public static ISceneModeServiceChangedListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISceneModeServiceChangedListener impl) {
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
                onOpenStateChanged(data.readInt());
                reply.writeNoException();
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                onFrontStateChanged(data.readInt());
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
            onSceneModeNameChanged(data.readString());
            reply.writeNoException();
            return true;
        }
    }

    void onFrontStateChanged(int state) throws RemoteException;

    void onOpenStateChanged(int state) throws RemoteException;

    void onSceneModeNameChanged(String name) throws RemoteException;
}
