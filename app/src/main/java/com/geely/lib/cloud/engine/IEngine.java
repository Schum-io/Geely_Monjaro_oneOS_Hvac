package com.geely.lib.cloud.engine;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.engine.bean.CheckUpdateParam;
import com.geely.lib.cloud.engine.bean.DeleteBatchCreationParam;
import com.geely.lib.cloud.engine.bean.DeleteFavouriteParam;
import com.geely.lib.cloud.engine.bean.PublishParam;
import com.geely.lib.cloud.engine.bean.SceneCodeParam;
import com.geely.lib.cloud.engine.bean.SceneIdParam;
import com.geely.lib.cloud.engine.bean.SceneParam;
import com.geely.lib.cloud.engine.bean.UpdateFavouriteParam;
import com.geely.lib.cloud.engine.bean.UpdateReportParam;

/* loaded from: classes.dex */
public interface IEngine extends IInterface {

    public static class Default implements IEngine {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void deleteBatchCreation(DeleteBatchCreationParam deleteBatchCreationParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void deleteFavourite(DeleteFavouriteParam deleteFavouriteParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getAbility(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getConfig(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getCreationAdd(SceneParam sceneParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getCreationDelete(SceneIdParam sceneIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getCreationList(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getCreationPublish(PublishParam publishParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getCreationUpdate(SceneParam sceneParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getFavoriteDelete(SceneIdParam sceneIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getFavoriteInsert(SceneIdParam sceneIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getFavoriteList(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getFavoriteUpdate(UpdateFavouriteParam updateFavouriteParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getLabelList(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getSceneDetail(SceneCodeParam sceneCodeParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getSceneList(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getTheme(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getVehicleCloudCheckUpdate(CheckUpdateParam checkUpdateParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.engine.IEngine
        public void getVehicleCloudUpdateReport(UpdateReportParam updateReportParam, ICloudCallback callback) throws RemoteException {
        }
    }

    void deleteBatchCreation(DeleteBatchCreationParam deleteBatchCreationParam, ICloudCallback callback) throws RemoteException;

    void deleteFavourite(DeleteFavouriteParam deleteFavouriteParam, ICloudCallback callback) throws RemoteException;

    void getAbility(ICloudCallback callback) throws RemoteException;

    void getConfig(ICloudCallback callback) throws RemoteException;

    void getCreationAdd(SceneParam sceneParam, ICloudCallback callback) throws RemoteException;

    void getCreationDelete(SceneIdParam sceneIdParam, ICloudCallback callback) throws RemoteException;

    void getCreationList(ICloudCallback callback) throws RemoteException;

    void getCreationPublish(PublishParam publishParam, ICloudCallback callback) throws RemoteException;

    void getCreationUpdate(SceneParam sceneParam, ICloudCallback callback) throws RemoteException;

    void getFavoriteDelete(SceneIdParam sceneIdParam, ICloudCallback callback) throws RemoteException;

    void getFavoriteInsert(SceneIdParam sceneIdParam, ICloudCallback callback) throws RemoteException;

    void getFavoriteList(ICloudCallback callback) throws RemoteException;

    void getFavoriteUpdate(UpdateFavouriteParam updateFavouriteParam, ICloudCallback callback) throws RemoteException;

    void getLabelList(ICloudCallback callback) throws RemoteException;

    void getSceneDetail(SceneCodeParam sceneCodeParam, ICloudCallback callback) throws RemoteException;

    void getSceneList(ICloudCallback callback) throws RemoteException;

    void getTheme(ICloudCallback callback) throws RemoteException;

    void getVehicleCloudCheckUpdate(CheckUpdateParam checkUpdateParam, ICloudCallback callback) throws RemoteException;

    void getVehicleCloudUpdateReport(UpdateReportParam updateReportParam, ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IEngine {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.engine.IEngine";
        static final int TRANSACTION_deleteBatchCreation = 18;
        static final int TRANSACTION_deleteFavourite = 17;
        static final int TRANSACTION_getAbility = 14;
        static final int TRANSACTION_getConfig = 15;
        static final int TRANSACTION_getCreationAdd = 11;
        static final int TRANSACTION_getCreationDelete = 10;
        static final int TRANSACTION_getCreationList = 9;
        static final int TRANSACTION_getCreationPublish = 13;
        static final int TRANSACTION_getCreationUpdate = 12;
        static final int TRANSACTION_getFavoriteDelete = 8;
        static final int TRANSACTION_getFavoriteInsert = 7;
        static final int TRANSACTION_getFavoriteList = 5;
        static final int TRANSACTION_getFavoriteUpdate = 6;
        static final int TRANSACTION_getLabelList = 16;
        static final int TRANSACTION_getSceneDetail = 4;
        static final int TRANSACTION_getSceneList = 3;
        static final int TRANSACTION_getTheme = 19;
        static final int TRANSACTION_getVehicleCloudCheckUpdate = 1;
        static final int TRANSACTION_getVehicleCloudUpdateReport = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IEngine asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IEngine)) {
                return (IEngine) iInterfaceQueryLocalInterface;
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
                    getVehicleCloudCheckUpdate(parcel.readInt() != 0 ? CheckUpdateParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    getVehicleCloudUpdateReport(parcel.readInt() != 0 ? UpdateReportParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    getSceneList(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    getSceneDetail(parcel.readInt() != 0 ? SceneCodeParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    getFavoriteList(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    getFavoriteUpdate(parcel.readInt() != 0 ? UpdateFavouriteParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    getFavoriteInsert(parcel.readInt() != 0 ? SceneIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    getFavoriteDelete(parcel.readInt() != 0 ? SceneIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    getCreationList(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    getCreationDelete(parcel.readInt() != 0 ? SceneIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    getCreationAdd(parcel.readInt() != 0 ? SceneParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    getCreationUpdate(parcel.readInt() != 0 ? SceneParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    getCreationPublish(parcel.readInt() != 0 ? PublishParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAbility(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    getConfig(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    getLabelList(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteFavourite(parcel.readInt() != 0 ? DeleteFavouriteParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    deleteBatchCreation(parcel.readInt() != 0 ? DeleteBatchCreationParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    getTheme(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IEngine {
            public static IEngine sDefaultImpl;
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

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getVehicleCloudCheckUpdate(CheckUpdateParam checkUpdateParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (checkUpdateParam != null) {
                        parcelObtain.writeInt(1);
                        checkUpdateParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getVehicleCloudCheckUpdate(checkUpdateParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getVehicleCloudUpdateReport(UpdateReportParam updateReportParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (updateReportParam != null) {
                        parcelObtain.writeInt(1);
                        updateReportParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getVehicleCloudUpdateReport(updateReportParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getSceneList(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getSceneList(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getSceneDetail(SceneCodeParam sceneCodeParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (sceneCodeParam != null) {
                        parcelObtain.writeInt(1);
                        sceneCodeParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getSceneDetail(sceneCodeParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getFavoriteList(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getFavoriteList(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getFavoriteUpdate(UpdateFavouriteParam updateFavouriteParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (updateFavouriteParam != null) {
                        parcelObtain.writeInt(1);
                        updateFavouriteParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getFavoriteUpdate(updateFavouriteParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getFavoriteInsert(SceneIdParam sceneIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (sceneIdParam != null) {
                        parcelObtain.writeInt(1);
                        sceneIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getFavoriteInsert(sceneIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getFavoriteDelete(SceneIdParam sceneIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (sceneIdParam != null) {
                        parcelObtain.writeInt(1);
                        sceneIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getFavoriteDelete(sceneIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getCreationList(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCreationList(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getCreationDelete(SceneIdParam sceneIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (sceneIdParam != null) {
                        parcelObtain.writeInt(1);
                        sceneIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(10, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCreationDelete(sceneIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getCreationAdd(SceneParam sceneParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (sceneParam != null) {
                        parcelObtain.writeInt(1);
                        sceneParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(11, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCreationAdd(sceneParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getCreationUpdate(SceneParam sceneParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (sceneParam != null) {
                        parcelObtain.writeInt(1);
                        sceneParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(12, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCreationUpdate(sceneParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getCreationPublish(PublishParam publishParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (publishParam != null) {
                        parcelObtain.writeInt(1);
                        publishParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(13, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCreationPublish(publishParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getAbility(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(14, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAbility(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getConfig(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(15, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getConfig(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getLabelList(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(16, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getLabelList(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void deleteFavourite(DeleteFavouriteParam deleteFavouriteParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (deleteFavouriteParam != null) {
                        parcelObtain.writeInt(1);
                        deleteFavouriteParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(17, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().deleteFavourite(deleteFavouriteParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void deleteBatchCreation(DeleteBatchCreationParam deleteBatchCreationParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (deleteBatchCreationParam != null) {
                        parcelObtain.writeInt(1);
                        deleteBatchCreationParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(18, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().deleteBatchCreation(deleteBatchCreationParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.engine.IEngine
            public void getTheme(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(19, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getTheme(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IEngine impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IEngine getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
