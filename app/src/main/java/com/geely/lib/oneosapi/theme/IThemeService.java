package com.geely.lib.oneosapi.theme;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.theme.IApplyByLauncherCallback;
import com.geely.lib.oneosapi.theme.IDressApplyCallback;
import com.geely.lib.oneosapi.theme.IDressDelCallback;
import com.geely.lib.oneosapi.theme.IDressDlCallback;
import com.geely.lib.oneosapi.theme.IGetOwnerStaticWallpaperCallback;
import com.geely.lib.oneosapi.theme.IGetOwnerVideoWallpaperCallback;

/* loaded from: classes.dex */
public interface IThemeService extends IInterface {

    public static class Default implements IThemeService {
        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void applyDress(String cardGoodsVoDataJson, String taskEntityJson, IDressApplyCallback iDressApplyCb) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void applyLiveWallpaper() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void applyStaticWallpaper() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void applyWallpaperByLauncher(String cardGoodsVoDataJson, boolean isApplyCSD, boolean isApplyPSD, IApplyByLauncherCallback applyByLauncherCallback) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void controlDownloadByLauncher(String taskId, String action) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void delDressFile(String filePath, String goodsId, IDressDelCallback iDressDelCallback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void downWallpaperByLauncher(String cardGoodsVoDataJson, IDressDlCallback iDressDlCb) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void downloadDress(String cardGoodsVoDataJson, String taskEntityJson, IDressDlCallback iDressDlCb) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void dressStaticWallpaper(int screenType) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public int getCurrentWallpaperType() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void getOwnerStaticWallpaperData(IGetOwnerStaticWallpaperCallback getOwnerStaticWallpaperCallback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public void getOwnerVideoWallpaperData(IGetOwnerVideoWallpaperCallback getOwnerVideoWallpaperCallback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IThemeService
        public String getSysWallpaperByLauncher(String type) throws RemoteException {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IThemeService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.theme.IThemeService";
        public static final int TRANSACTION_applyDress = 4;
        public static final int TRANSACTION_applyLiveWallpaper = 2;
        public static final int TRANSACTION_applyStaticWallpaper = 1;
        public static final int TRANSACTION_applyWallpaperByLauncher = 9;
        public static final int TRANSACTION_controlDownloadByLauncher = 13;
        public static final int TRANSACTION_delDressFile = 5;
        public static final int TRANSACTION_downWallpaperByLauncher = 12;
        public static final int TRANSACTION_downloadDress = 3;
        public static final int TRANSACTION_dressStaticWallpaper = 10;
        public static final int TRANSACTION_getCurrentWallpaperType = 6;
        public static final int TRANSACTION_getOwnerStaticWallpaperData = 7;
        public static final int TRANSACTION_getOwnerVideoWallpaperData = 8;
        public static final int TRANSACTION_getSysWallpaperByLauncher = 11;

        public static class Proxy implements IThemeService {
            public static IThemeService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void applyDress(String cardGoodsVoDataJson, String taskEntityJson, IDressApplyCallback iDressApplyCb) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(cardGoodsVoDataJson);
                    parcelObtain.writeString(taskEntityJson);
                    parcelObtain.writeStrongBinder(iDressApplyCb != null ? iDressApplyCb.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().applyDress(cardGoodsVoDataJson, taskEntityJson, iDressApplyCb);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void applyLiveWallpaper() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().applyLiveWallpaper();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void applyStaticWallpaper() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().applyStaticWallpaper();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void applyWallpaperByLauncher(String str, boolean z, boolean z2, IApplyByLauncherCallback iApplyByLauncherCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeStrongBinder(iApplyByLauncherCallback != null ? iApplyByLauncherCallback.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().applyWallpaperByLauncher(str, z, z2, iApplyByLauncherCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void controlDownloadByLauncher(String taskId, String action) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(taskId);
                    parcelObtain.writeString(action);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().controlDownloadByLauncher(taskId, action);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void delDressFile(String filePath, String goodsId, IDressDelCallback iDressDelCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(filePath);
                    parcelObtain.writeString(goodsId);
                    parcelObtain.writeStrongBinder(iDressDelCallback != null ? iDressDelCallback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().delDressFile(filePath, goodsId, iDressDelCallback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void downWallpaperByLauncher(String cardGoodsVoDataJson, IDressDlCallback iDressDlCb) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(cardGoodsVoDataJson);
                    parcelObtain.writeStrongBinder(iDressDlCb != null ? iDressDlCb.asBinder() : null);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().downWallpaperByLauncher(cardGoodsVoDataJson, iDressDlCb);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void downloadDress(String cardGoodsVoDataJson, String taskEntityJson, IDressDlCallback iDressDlCb) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(cardGoodsVoDataJson);
                    parcelObtain.writeString(taskEntityJson);
                    parcelObtain.writeStrongBinder(iDressDlCb != null ? iDressDlCb.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().downloadDress(cardGoodsVoDataJson, taskEntityJson, iDressDlCb);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void dressStaticWallpaper(int screenType) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(screenType);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().dressStaticWallpaper(screenType);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public int getCurrentWallpaperType() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentWallpaperType();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void getOwnerStaticWallpaperData(IGetOwnerStaticWallpaperCallback getOwnerStaticWallpaperCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(getOwnerStaticWallpaperCallback != null ? getOwnerStaticWallpaperCallback.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getOwnerStaticWallpaperData(getOwnerStaticWallpaperCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public void getOwnerVideoWallpaperData(IGetOwnerVideoWallpaperCallback getOwnerVideoWallpaperCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(getOwnerVideoWallpaperCallback != null ? getOwnerVideoWallpaperCallback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getOwnerVideoWallpaperData(getOwnerVideoWallpaperCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IThemeService
            public String getSysWallpaperByLauncher(String type) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(type);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSysWallpaperByLauncher(type);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IThemeService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IThemeService)) ? new Proxy(obj) : (IThemeService) iInterfaceQueryLocalInterface;
        }

        public static IThemeService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IThemeService impl) {
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
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    applyStaticWallpaper();
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    applyLiveWallpaper();
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    downloadDress(data.readString(), data.readString(), IDressDlCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    applyDress(data.readString(), data.readString(), IDressApplyCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    delDressFile(data.readString(), data.readString(), IDressDelCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    int currentWallpaperType = getCurrentWallpaperType();
                    reply.writeNoException();
                    reply.writeInt(currentWallpaperType);
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    getOwnerStaticWallpaperData(IGetOwnerStaticWallpaperCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    getOwnerVideoWallpaperData(IGetOwnerVideoWallpaperCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    applyWallpaperByLauncher(data.readString(), data.readInt() != 0, data.readInt() != 0, IApplyByLauncherCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 10:
                    data.enforceInterface(DESCRIPTOR);
                    dressStaticWallpaper(data.readInt());
                    reply.writeNoException();
                    return true;
                case 11:
                    data.enforceInterface(DESCRIPTOR);
                    String sysWallpaperByLauncher = getSysWallpaperByLauncher(data.readString());
                    reply.writeNoException();
                    reply.writeString(sysWallpaperByLauncher);
                    return true;
                case 12:
                    data.enforceInterface(DESCRIPTOR);
                    downWallpaperByLauncher(data.readString(), IDressDlCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 13:
                    data.enforceInterface(DESCRIPTOR);
                    controlDownloadByLauncher(data.readString(), data.readString());
                    reply.writeNoException();
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void applyDress(String cardGoodsVoDataJson, String taskEntityJson, IDressApplyCallback iDressApplyCb) throws RemoteException;

    void applyLiveWallpaper() throws RemoteException;

    void applyStaticWallpaper() throws RemoteException;

    void applyWallpaperByLauncher(String cardGoodsVoDataJson, boolean isApplyCSD, boolean isApplyPSD, IApplyByLauncherCallback applyByLauncherCallback) throws RemoteException;

    void controlDownloadByLauncher(String taskId, String action) throws RemoteException;

    void delDressFile(String filePath, String goodsId, IDressDelCallback iDressDelCallback) throws RemoteException;

    void downWallpaperByLauncher(String cardGoodsVoDataJson, IDressDlCallback iDressDlCb) throws RemoteException;

    void downloadDress(String cardGoodsVoDataJson, String taskEntityJson, IDressDlCallback iDressDlCb) throws RemoteException;

    void dressStaticWallpaper(int screenType) throws RemoteException;

    int getCurrentWallpaperType() throws RemoteException;

    void getOwnerStaticWallpaperData(IGetOwnerStaticWallpaperCallback getOwnerStaticWallpaperCallback) throws RemoteException;

    void getOwnerVideoWallpaperData(IGetOwnerVideoWallpaperCallback getOwnerVideoWallpaperCallback) throws RemoteException;

    String getSysWallpaperByLauncher(String type) throws RemoteException;
}
