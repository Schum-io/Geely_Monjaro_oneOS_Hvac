package com.geely.lib.oneosapi.mediacenter.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.bean.DeviceInfo;
import com.geely.lib.oneosapi.mediacenter.bean.MusicFileData;
import com.geely.lib.oneosapi.mediacenter.bean.OnlineUserInfo;
import com.geely.lib.oneosapi.mediacenter.bean.SearchResult;
import java.util.List;

/* loaded from: classes.dex */
public interface IDeviceStateListener extends IInterface {

    public static class Default implements IDeviceStateListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onAppDied(int app) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onAppExistStateChanged(int source, int app, boolean existed) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onBluetoothDeviceChange(int source, List<DeviceInfo> deviceInfoList) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onDeviceError(int source, int error, String errorMsg) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onDeviceStateChanged(int source, int state, DeviceInfo info) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onMediaQueryFinished(int source, DeviceInfo info) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onMediaQueryStarted(int source, DeviceInfo info) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onScanPathFinish(int source, List<MusicFileData> musicFileDataList) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onSearchSongResult(int source, int app, List<SearchResult> searchResults) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onUserInfoResult(int source, int app, OnlineUserInfo userInfo) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IDeviceStateListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener";
        public static final int TRANSACTION_onAppDied = 8;
        public static final int TRANSACTION_onAppExistStateChanged = 7;
        public static final int TRANSACTION_onBluetoothDeviceChange = 6;
        public static final int TRANSACTION_onDeviceError = 2;
        public static final int TRANSACTION_onDeviceStateChanged = 1;
        public static final int TRANSACTION_onMediaQueryFinished = 10;
        public static final int TRANSACTION_onMediaQueryStarted = 9;
        public static final int TRANSACTION_onScanPathFinish = 3;
        public static final int TRANSACTION_onSearchSongResult = 5;
        public static final int TRANSACTION_onUserInfoResult = 4;

        public static class Proxy implements IDeviceStateListener {
            public static IDeviceStateListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
            public void onAppDied(int app) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(app);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAppDied(app);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
            public void onAppExistStateChanged(int i, int i2, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAppExistStateChanged(i, i2, z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
            public void onBluetoothDeviceChange(int source, List<DeviceInfo> deviceInfoList) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeTypedList(deviceInfoList);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onBluetoothDeviceChange(source, deviceInfoList);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
            public void onDeviceError(int source, int error, String errorMsg) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(error);
                    parcelObtain.writeString(errorMsg);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onDeviceError(source, error, errorMsg);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
            public void onDeviceStateChanged(int source, int state, DeviceInfo info) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(state);
                    if (info != null) {
                        parcelObtain.writeInt(1);
                        info.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onDeviceStateChanged(source, state, info);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
            public void onMediaQueryFinished(int source, DeviceInfo info) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (info != null) {
                        parcelObtain.writeInt(1);
                        info.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onMediaQueryFinished(source, info);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
            public void onMediaQueryStarted(int source, DeviceInfo info) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (info != null) {
                        parcelObtain.writeInt(1);
                        info.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onMediaQueryStarted(source, info);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
            public void onScanPathFinish(int source, List<MusicFileData> musicFileDataList) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeTypedList(musicFileDataList);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onScanPathFinish(source, musicFileDataList);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
            public void onSearchSongResult(int source, int app, List<SearchResult> searchResults) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    parcelObtain.writeTypedList(searchResults);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSearchSongResult(source, app, searchResults);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
            public void onUserInfoResult(int source, int app, OnlineUserInfo userInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    if (userInfo != null) {
                        parcelObtain.writeInt(1);
                        userInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onUserInfoResult(source, app, userInfo);
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

        public static IDeviceStateListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDeviceStateListener)) ? new Proxy(obj) : (IDeviceStateListener) iInterfaceQueryLocalInterface;
        }

        public static IDeviceStateListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IDeviceStateListener impl) {
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
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDeviceStateChanged(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? DeviceInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onDeviceError(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onScanPathFinish(parcel.readInt(), parcel.createTypedArrayList(MusicFileData.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onUserInfoResult(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0 ? OnlineUserInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSearchSongResult(parcel.readInt(), parcel.readInt(), parcel.createTypedArrayList(SearchResult.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBluetoothDeviceChange(parcel.readInt(), parcel.createTypedArrayList(DeviceInfo.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAppExistStateChanged(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onAppDied(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMediaQueryStarted(parcel.readInt(), parcel.readInt() != 0 ? DeviceInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onMediaQueryFinished(parcel.readInt(), parcel.readInt() != 0 ? DeviceInfo.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onAppDied(int app) throws RemoteException;

    void onAppExistStateChanged(int source, int app, boolean existed) throws RemoteException;

    void onBluetoothDeviceChange(int source, List<DeviceInfo> deviceInfoList) throws RemoteException;

    void onDeviceError(int source, int error, String errorMsg) throws RemoteException;

    void onDeviceStateChanged(int source, int state, DeviceInfo info) throws RemoteException;

    void onMediaQueryFinished(int source, DeviceInfo info) throws RemoteException;

    void onMediaQueryStarted(int source, DeviceInfo info) throws RemoteException;

    void onScanPathFinish(int source, List<MusicFileData> musicFileDataList) throws RemoteException;

    void onSearchSongResult(int source, int app, List<SearchResult> searchResults) throws RemoteException;

    void onUserInfoResult(int source, int app, OnlineUserInfo userInfo) throws RemoteException;
}
