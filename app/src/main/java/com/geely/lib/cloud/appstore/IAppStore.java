package com.geely.lib.cloud.appstore;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.appstore.bean.AppPackageParam;
import com.geely.lib.cloud.appstore.bean.AppVersionParam;
import com.geely.lib.cloud.appstore.bean.IdPdsnParam;
import com.geely.lib.cloud.appstore.bean.PdsnAppListParam;
import com.geely.lib.cloud.appstore.bean.PdsnIdParam;
import com.geely.lib.cloud.appstore.bean.PdsnKeyNewParam;
import com.geely.lib.cloud.appstore.bean.PdsnKeyParam;
import com.geely.lib.cloud.appstore.bean.PdsnParam;
import com.geely.lib.cloud.appstore.bean.PdsnVersionParam;
import com.geely.lib.cloud.appstore.bean.VinPackageParam;

/* loaded from: classes.dex */
public interface IAppStore extends IInterface {

    public static class Default implements IAppStore {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppInstallAdd(AppVersionParam appVersionParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoreBatchCheckUpdate(PdsnAppListParam pdsnAppListParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoreCategory(PdsnParam pdsnParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoreCategoryList(PdsnIdParam pdsnIdParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoreDetails(VinPackageParam vinPackageParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoreDownRanking(PdsnParam pdsnParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoreDownUp(AppPackageParam appPackageParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoreGameHome(PdsnVersionParam vinVersionParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoreGameSearch(PdsnKeyParam pdsnKeyParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoreGroupList(IdPdsnParam idPdsnParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoreSearch(PdsnKeyParam pdsnKeyParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppStoresHome(PdsnVersionParam pasnVersionParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getAppVersionAdd(AppVersionParam appVersionParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.appstore.IAppStore
        public void getNewAppStoreSearch(PdsnKeyNewParam pdsnKeyNewParam, ICloudCallback callBack) throws RemoteException {
        }
    }

    void getAppInstallAdd(AppVersionParam appVersionParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoreBatchCheckUpdate(PdsnAppListParam pdsnAppListParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoreCategory(PdsnParam pdsnParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoreCategoryList(PdsnIdParam pdsnIdParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoreDetails(VinPackageParam vinPackageParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoreDownRanking(PdsnParam pdsnParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoreDownUp(AppPackageParam appPackageParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoreGameHome(PdsnVersionParam vinVersionParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoreGameSearch(PdsnKeyParam pdsnKeyParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoreGroupList(IdPdsnParam idPdsnParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoreSearch(PdsnKeyParam pdsnKeyParam, ICloudCallback callBack) throws RemoteException;

    void getAppStoresHome(PdsnVersionParam pasnVersionParam, ICloudCallback callBack) throws RemoteException;

    void getAppVersionAdd(AppVersionParam appVersionParam, ICloudCallback callBack) throws RemoteException;

    void getNewAppStoreSearch(PdsnKeyNewParam pdsnKeyNewParam, ICloudCallback callBack) throws RemoteException;

    public static abstract class Stub extends Binder implements IAppStore {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.appstore.IAppStore";
        static final int TRANSACTION_getAppInstallAdd = 13;
        static final int TRANSACTION_getAppStoreBatchCheckUpdate = 4;
        static final int TRANSACTION_getAppStoreCategory = 5;
        static final int TRANSACTION_getAppStoreCategoryList = 6;
        static final int TRANSACTION_getAppStoreDetails = 8;
        static final int TRANSACTION_getAppStoreDownRanking = 2;
        static final int TRANSACTION_getAppStoreDownUp = 9;
        static final int TRANSACTION_getAppStoreGameHome = 10;
        static final int TRANSACTION_getAppStoreGameSearch = 11;
        static final int TRANSACTION_getAppStoreGroupList = 3;
        static final int TRANSACTION_getAppStoreSearch = 7;
        static final int TRANSACTION_getAppStoresHome = 1;
        static final int TRANSACTION_getAppVersionAdd = 12;
        static final int TRANSACTION_getNewAppStoreSearch = 14;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAppStore asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAppStore)) {
                return (IAppStore) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoresHome(parcel.readInt() != 0 ? PdsnVersionParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoreDownRanking(parcel.readInt() != 0 ? PdsnParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoreGroupList(parcel.readInt() != 0 ? IdPdsnParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoreBatchCheckUpdate(parcel.readInt() != 0 ? PdsnAppListParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoreCategory(parcel.readInt() != 0 ? PdsnParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoreCategoryList(parcel.readInt() != 0 ? PdsnIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoreSearch(parcel.readInt() != 0 ? PdsnKeyParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoreDetails(parcel.readInt() != 0 ? VinPackageParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoreDownUp(parcel.readInt() != 0 ? AppPackageParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoreGameHome(parcel.readInt() != 0 ? PdsnVersionParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppStoreGameSearch(parcel.readInt() != 0 ? PdsnKeyParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppVersionAdd(parcel.readInt() != 0 ? AppVersionParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAppInstallAdd(parcel.readInt() != 0 ? AppVersionParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    getNewAppStoreSearch(parcel.readInt() != 0 ? PdsnKeyNewParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IAppStore {
            public static IAppStore sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoresHome(PdsnVersionParam pasnVersionParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pasnVersionParam != null) {
                        parcelObtain.writeInt(1);
                        pasnVersionParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoresHome(pasnVersionParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoreDownRanking(PdsnParam pdsnParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pdsnParam != null) {
                        parcelObtain.writeInt(1);
                        pdsnParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoreDownRanking(pdsnParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoreGroupList(IdPdsnParam idPdsnParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (idPdsnParam != null) {
                        parcelObtain.writeInt(1);
                        idPdsnParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoreGroupList(idPdsnParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoreBatchCheckUpdate(PdsnAppListParam pdsnAppListParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pdsnAppListParam != null) {
                        parcelObtain.writeInt(1);
                        pdsnAppListParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoreBatchCheckUpdate(pdsnAppListParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoreCategory(PdsnParam pdsnParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pdsnParam != null) {
                        parcelObtain.writeInt(1);
                        pdsnParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoreCategory(pdsnParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoreCategoryList(PdsnIdParam pdsnIdParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pdsnIdParam != null) {
                        parcelObtain.writeInt(1);
                        pdsnIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoreCategoryList(pdsnIdParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoreSearch(PdsnKeyParam pdsnKeyParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pdsnKeyParam != null) {
                        parcelObtain.writeInt(1);
                        pdsnKeyParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoreSearch(pdsnKeyParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoreDetails(VinPackageParam vinPackageParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vinPackageParam != null) {
                        parcelObtain.writeInt(1);
                        vinPackageParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoreDetails(vinPackageParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoreDownUp(AppPackageParam appPackageParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (appPackageParam != null) {
                        parcelObtain.writeInt(1);
                        appPackageParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoreDownUp(appPackageParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoreGameHome(PdsnVersionParam vinVersionParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vinVersionParam != null) {
                        parcelObtain.writeInt(1);
                        vinVersionParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(10, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoreGameHome(vinVersionParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppStoreGameSearch(PdsnKeyParam pdsnKeyParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pdsnKeyParam != null) {
                        parcelObtain.writeInt(1);
                        pdsnKeyParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(11, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppStoreGameSearch(pdsnKeyParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppVersionAdd(AppVersionParam appVersionParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (appVersionParam != null) {
                        parcelObtain.writeInt(1);
                        appVersionParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(12, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppVersionAdd(appVersionParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getAppInstallAdd(AppVersionParam appVersionParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (appVersionParam != null) {
                        parcelObtain.writeInt(1);
                        appVersionParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(13, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAppInstallAdd(appVersionParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.appstore.IAppStore
            public void getNewAppStoreSearch(PdsnKeyNewParam pdsnKeyNewParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (pdsnKeyNewParam != null) {
                        parcelObtain.writeInt(1);
                        pdsnKeyNewParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(14, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getNewAppStoreSearch(pdsnKeyNewParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IAppStore impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IAppStore getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
