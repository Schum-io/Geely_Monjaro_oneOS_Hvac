package com.geely.lib.oneosapi.mediacenter.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ISourceStateListener extends IInterface {

    public static class Default implements ISourceStateListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener
        public void onPsdBtStateChanged(boolean connected) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener
        public void onSourceChanged(int audioSource, int appSource) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener
        public void onWeCarFlowTabChanged(int audioSource, int appSource) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ISourceStateListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener";
        public static final int TRANSACTION_onPsdBtStateChanged = 2;
        public static final int TRANSACTION_onSourceChanged = 1;
        public static final int TRANSACTION_onWeCarFlowTabChanged = 3;

        public static class Proxy implements ISourceStateListener {
            public static ISourceStateListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener
            public void onPsdBtStateChanged(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPsdBtStateChanged(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener
            public void onSourceChanged(int audioSource, int appSource) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(audioSource);
                    parcelObtain.writeInt(appSource);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSourceChanged(audioSource, appSource);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener
            public void onWeCarFlowTabChanged(int audioSource, int appSource) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(audioSource);
                    parcelObtain.writeInt(appSource);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onWeCarFlowTabChanged(audioSource, appSource);
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

        public static ISourceStateListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISourceStateListener)) ? new Proxy(obj) : (ISourceStateListener) iInterfaceQueryLocalInterface;
        }

        public static ISourceStateListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISourceStateListener impl) {
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
                onSourceChanged(data.readInt(), data.readInt());
                reply.writeNoException();
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                onPsdBtStateChanged(data.readInt() != 0);
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
            onWeCarFlowTabChanged(data.readInt(), data.readInt());
            reply.writeNoException();
            return true;
        }
    }

    void onPsdBtStateChanged(boolean connected) throws RemoteException;

    void onSourceChanged(int audioSource, int appSource) throws RemoteException;

    void onWeCarFlowTabChanged(int audioSource, int appSource) throws RemoteException;
}
