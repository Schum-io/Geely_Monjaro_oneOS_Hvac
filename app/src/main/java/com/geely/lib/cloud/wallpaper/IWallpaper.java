package com.geely.lib.cloud.wallpaper;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.wallpaper.bean.FaceParam;
import com.geely.lib.cloud.wallpaper.bean.QueryListParam;
import com.geely.lib.cloud.wallpaper.bean.QueryOneParam;
import com.geely.lib.cloud.wallpaper.bean.StsSaveParam;

/* loaded from: classes.dex */
public interface IWallpaper extends IInterface {

    public static class Default implements IWallpaper {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.wallpaper.IWallpaper
        public void getQueryList(QueryListParam queryListParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.wallpaper.IWallpaper
        public void getQueryOne(QueryOneParam queryOneParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.wallpaper.IWallpaper
        public void getStsAccess(String sysKey, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.wallpaper.IWallpaper
        public void postStsSave(StsSaveParam stsSaveParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.wallpaper.IWallpaper
        public void userFaceAdd(FaceParam faceParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.wallpaper.IWallpaper
        public void userFaceRemove(String userId, String faceId, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.wallpaper.IWallpaper
        public void userFaceShow(String userId, ICloudCallback callBack) throws RemoteException {
        }
    }

    void getQueryList(QueryListParam queryListParam, ICloudCallback callBack) throws RemoteException;

    void getQueryOne(QueryOneParam queryOneParam, ICloudCallback callBack) throws RemoteException;

    void getStsAccess(String sysKey, ICloudCallback callBack) throws RemoteException;

    void postStsSave(StsSaveParam stsSaveParam, ICloudCallback callBack) throws RemoteException;

    void userFaceAdd(FaceParam faceParam, ICloudCallback callBack) throws RemoteException;

    void userFaceRemove(String userId, String faceId, ICloudCallback callBack) throws RemoteException;

    void userFaceShow(String userId, ICloudCallback callBack) throws RemoteException;

    public static abstract class Stub extends Binder implements IWallpaper {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.wallpaper.IWallpaper";
        static final int TRANSACTION_getQueryList = 1;
        static final int TRANSACTION_getQueryOne = 2;
        static final int TRANSACTION_getStsAccess = 6;
        static final int TRANSACTION_postStsSave = 7;
        static final int TRANSACTION_userFaceAdd = 4;
        static final int TRANSACTION_userFaceRemove = 5;
        static final int TRANSACTION_userFaceShow = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWallpaper asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IWallpaper)) {
                return (IWallpaper) iInterfaceQueryLocalInterface;
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
                    getQueryList(parcel.readInt() != 0 ? QueryListParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    getQueryOne(parcel.readInt() != 0 ? QueryOneParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    userFaceShow(parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    userFaceAdd(parcel.readInt() != 0 ? FaceParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    userFaceRemove(parcel.readString(), parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    getStsAccess(parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    postStsSave(parcel.readInt() != 0 ? StsSaveParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IWallpaper {
            public static IWallpaper sDefaultImpl;
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

            @Override // com.geely.lib.cloud.wallpaper.IWallpaper
            public void getQueryList(QueryListParam queryListParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (queryListParam != null) {
                        parcelObtain.writeInt(1);
                        queryListParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getQueryList(queryListParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.wallpaper.IWallpaper
            public void getQueryOne(QueryOneParam queryOneParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (queryOneParam != null) {
                        parcelObtain.writeInt(1);
                        queryOneParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getQueryOne(queryOneParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.wallpaper.IWallpaper
            public void userFaceShow(String userId, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(userId);
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().userFaceShow(userId, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.wallpaper.IWallpaper
            public void userFaceAdd(FaceParam faceParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (faceParam != null) {
                        parcelObtain.writeInt(1);
                        faceParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().userFaceAdd(faceParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.wallpaper.IWallpaper
            public void userFaceRemove(String userId, String faceId, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(userId);
                    parcelObtain.writeString(faceId);
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().userFaceRemove(userId, faceId, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.wallpaper.IWallpaper
            public void getStsAccess(String sysKey, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(sysKey);
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getStsAccess(sysKey, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.wallpaper.IWallpaper
            public void postStsSave(StsSaveParam stsSaveParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (stsSaveParam != null) {
                        parcelObtain.writeInt(1);
                        stsSaveParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().postStsSave(stsSaveParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IWallpaper impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IWallpaper getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
