package com.geely.lib.cloud.furniture;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.furniture.bean.DeviceParam;
import com.geely.lib.cloud.furniture.bean.JDAccountParam;
import com.geely.lib.cloud.furniture.bean.JDQrcodeParam;
import com.geely.lib.cloud.furniture.bean.SceneActionParam;

/* loaded from: classes.dex */
public interface IFurniture extends IInterface {

    public static class Default implements IFurniture {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.furniture.IFurniture
        public void getJDAuthInfo(String terminalId, String userQrcode, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.furniture.IFurniture
        public void getJDLoginQrcode(JDQrcodeParam jdQrcodeParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.furniture.IFurniture
        public void getJDUnboundAccount(JDAccountParam jdAccountParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.furniture.IFurniture
        public void getSmartHomeCardList(String terminalId, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.furniture.IFurniture
        public void getSmartHomeDeviceControl(DeviceParam deviceParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.furniture.IFurniture
        public void getSmartHomeSceneAction(SceneActionParam sceneActionParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.furniture.IFurniture
        public void getSmartHomeSceneList(String terminalId, ICloudCallback callback) throws RemoteException {
        }
    }

    void getJDAuthInfo(String terminalId, String userQrcode, ICloudCallback callback) throws RemoteException;

    void getJDLoginQrcode(JDQrcodeParam jdQrcodeParam, ICloudCallback callback) throws RemoteException;

    void getJDUnboundAccount(JDAccountParam jdAccountParam, ICloudCallback callback) throws RemoteException;

    void getSmartHomeCardList(String terminalId, ICloudCallback callback) throws RemoteException;

    void getSmartHomeDeviceControl(DeviceParam deviceParam, ICloudCallback callback) throws RemoteException;

    void getSmartHomeSceneAction(SceneActionParam sceneActionParam, ICloudCallback callback) throws RemoteException;

    void getSmartHomeSceneList(String terminalId, ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IFurniture {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.furniture.IFurniture";
        static final int TRANSACTION_getJDAuthInfo = 6;
        static final int TRANSACTION_getJDLoginQrcode = 5;
        static final int TRANSACTION_getJDUnboundAccount = 7;
        static final int TRANSACTION_getSmartHomeCardList = 1;
        static final int TRANSACTION_getSmartHomeDeviceControl = 4;
        static final int TRANSACTION_getSmartHomeSceneAction = 3;
        static final int TRANSACTION_getSmartHomeSceneList = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IFurniture asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IFurniture)) {
                return (IFurniture) iInterfaceQueryLocalInterface;
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
                    getSmartHomeCardList(parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    getSmartHomeSceneList(parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    getSmartHomeSceneAction(parcel.readInt() != 0 ? SceneActionParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    getSmartHomeDeviceControl(parcel.readInt() != 0 ? DeviceParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    getJDLoginQrcode(parcel.readInt() != 0 ? JDQrcodeParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    getJDAuthInfo(parcel.readString(), parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    getJDUnboundAccount(parcel.readInt() != 0 ? JDAccountParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IFurniture {
            public static IFurniture sDefaultImpl;
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

            @Override // com.geely.lib.cloud.furniture.IFurniture
            public void getSmartHomeCardList(String terminalId, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(terminalId);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getSmartHomeCardList(terminalId, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.furniture.IFurniture
            public void getSmartHomeSceneList(String terminalId, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(terminalId);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getSmartHomeSceneList(terminalId, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.furniture.IFurniture
            public void getSmartHomeSceneAction(SceneActionParam sceneActionParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (sceneActionParam != null) {
                        parcelObtain.writeInt(1);
                        sceneActionParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getSmartHomeSceneAction(sceneActionParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.furniture.IFurniture
            public void getSmartHomeDeviceControl(DeviceParam deviceParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (deviceParam != null) {
                        parcelObtain.writeInt(1);
                        deviceParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getSmartHomeDeviceControl(deviceParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.furniture.IFurniture
            public void getJDLoginQrcode(JDQrcodeParam jdQrcodeParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (jdQrcodeParam != null) {
                        parcelObtain.writeInt(1);
                        jdQrcodeParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getJDLoginQrcode(jdQrcodeParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.furniture.IFurniture
            public void getJDAuthInfo(String terminalId, String userQrcode, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(terminalId);
                    parcelObtain.writeString(userQrcode);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getJDAuthInfo(terminalId, userQrcode, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.furniture.IFurniture
            public void getJDUnboundAccount(JDAccountParam jdAccountParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (jdAccountParam != null) {
                        parcelObtain.writeInt(1);
                        jdAccountParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getJDUnboundAccount(jdAccountParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IFurniture impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IFurniture getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
