package com.geely.lib.oneosapi.recommendation;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.recommendation.callback.ICsdRecCallback;

/* loaded from: classes.dex */
public interface ICsdManager extends IInterface {

    public static class Default implements ICsdManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.recommendation.ICsdManager
        public void getCsdPullInfos(boolean isOpen) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.recommendation.ICsdManager
        public void getCsdRecInfos() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.recommendation.ICsdManager
        public boolean subscribeCsdRecCallback(ICsdRecCallback callback) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.recommendation.ICsdManager
        public boolean unSubscribeCsdRecCallback(ICsdRecCallback callback) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements ICsdManager {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.recommendation.ICsdManager";
        public static final int TRANSACTION_getCsdPullInfos = 4;
        public static final int TRANSACTION_getCsdRecInfos = 1;
        public static final int TRANSACTION_subscribeCsdRecCallback = 2;
        public static final int TRANSACTION_unSubscribeCsdRecCallback = 3;

        public static class Proxy implements ICsdManager {
            public static ICsdManager sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.recommendation.ICsdManager
            public void getCsdPullInfos(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getCsdPullInfos(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.recommendation.ICsdManager
            public void getCsdRecInfos() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getCsdRecInfos();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.recommendation.ICsdManager
            public boolean subscribeCsdRecCallback(ICsdRecCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().subscribeCsdRecCallback(callback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.recommendation.ICsdManager
            public boolean unSubscribeCsdRecCallback(ICsdRecCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().unSubscribeCsdRecCallback(callback);
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

        public static ICsdManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICsdManager)) ? new Proxy(obj) : (ICsdManager) iInterfaceQueryLocalInterface;
        }

        public static ICsdManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ICsdManager impl) {
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
                getCsdRecInfos();
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zSubscribeCsdRecCallback = subscribeCsdRecCallback(ICsdRecCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeInt(zSubscribeCsdRecCallback ? 1 : 0);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zUnSubscribeCsdRecCallback = unSubscribeCsdRecCallback(ICsdRecCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeInt(zUnSubscribeCsdRecCallback ? 1 : 0);
                return true;
            }
            if (i != 4) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            getCsdPullInfos(parcel.readInt() != 0);
            parcel2.writeNoException();
            return true;
        }
    }

    void getCsdPullInfos(boolean isOpen) throws RemoteException;

    void getCsdRecInfos() throws RemoteException;

    boolean subscribeCsdRecCallback(ICsdRecCallback callback) throws RemoteException;

    boolean unSubscribeCsdRecCallback(ICsdRecCallback callback) throws RemoteException;
}
