package com.geely.lib.oneosapi.recommendation;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.recommendation.IAnalyticsManager;
import com.geely.lib.oneosapi.recommendation.ICsdManager;
import com.geely.lib.oneosapi.recommendation.IPsdManager;
import com.geely.lib.oneosapi.recommendation.callback.IWithdrawCallback;

/* loaded from: classes.dex */
public interface IRecommendService extends IInterface {

    public static class Default implements IRecommendService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.recommendation.IRecommendService
        public IAnalyticsManager getAnalyticsManager() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.recommendation.IRecommendService
        public ICsdManager getCsdManager() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.recommendation.IRecommendService
        public IPsdManager getPsdManager() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.recommendation.IRecommendService
        public boolean subscribeWithdrawCallback(IWithdrawCallback callback) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.recommendation.IRecommendService
        public boolean unSubscribeWithdrawCallback(IWithdrawCallback callback) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IRecommendService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.recommendation.IRecommendService";
        public static final int TRANSACTION_getAnalyticsManager = 3;
        public static final int TRANSACTION_getCsdManager = 1;
        public static final int TRANSACTION_getPsdManager = 2;
        public static final int TRANSACTION_subscribeWithdrawCallback = 4;
        public static final int TRANSACTION_unSubscribeWithdrawCallback = 5;

        public static class Proxy implements IRecommendService {
            public static IRecommendService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.recommendation.IRecommendService
            public IAnalyticsManager getAnalyticsManager() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAnalyticsManager();
                    }
                    parcelObtain2.readException();
                    return IAnalyticsManager.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.recommendation.IRecommendService
            public ICsdManager getCsdManager() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCsdManager();
                    }
                    parcelObtain2.readException();
                    return ICsdManager.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.recommendation.IRecommendService
            public IPsdManager getPsdManager() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPsdManager();
                    }
                    parcelObtain2.readException();
                    return IPsdManager.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.recommendation.IRecommendService
            public boolean subscribeWithdrawCallback(IWithdrawCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().subscribeWithdrawCallback(callback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.recommendation.IRecommendService
            public boolean unSubscribeWithdrawCallback(IWithdrawCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().unSubscribeWithdrawCallback(callback);
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

        public static IRecommendService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRecommendService)) ? new Proxy(obj) : (IRecommendService) iInterfaceQueryLocalInterface;
        }

        public static IRecommendService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IRecommendService impl) {
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
                ICsdManager csdManager = getCsdManager();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(csdManager != null ? csdManager.asBinder() : null);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                IPsdManager psdManager = getPsdManager();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(psdManager != null ? psdManager.asBinder() : null);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                IAnalyticsManager analyticsManager = getAnalyticsManager();
                parcel2.writeNoException();
                parcel2.writeStrongBinder(analyticsManager != null ? analyticsManager.asBinder() : null);
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zSubscribeWithdrawCallback = subscribeWithdrawCallback(IWithdrawCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeInt(zSubscribeWithdrawCallback ? 1 : 0);
                return true;
            }
            if (i != 5) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zUnSubscribeWithdrawCallback = unSubscribeWithdrawCallback(IWithdrawCallback.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeInt(zUnSubscribeWithdrawCallback ? 1 : 0);
            return true;
        }
    }

    IAnalyticsManager getAnalyticsManager() throws RemoteException;

    ICsdManager getCsdManager() throws RemoteException;

    IPsdManager getPsdManager() throws RemoteException;

    boolean subscribeWithdrawCallback(IWithdrawCallback callback) throws RemoteException;

    boolean unSubscribeWithdrawCallback(IWithdrawCallback callback) throws RemoteException;
}
