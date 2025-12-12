package com.geely.lib.oneosapi.smart;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.smart.IResultCallback;
import com.geely.lib.oneosapi.smart.scene.IGetSceneListCallBack;
import com.geely.lib.oneosapi.smart.scene.ISceneChangeCallBack;

/* loaded from: classes.dex */
public interface ISmartApi extends IInterface {

    public static class Default implements ISmartApi {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartApi
        public void controlACTemp(String location, String setType, int targetTemp, int adjustTemp, IResultCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartApi
        public void controlDeviceMode(String location, int deviceType, int mode, IResultCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartApi
        public void controlDeviceSpeed(String location, int deviceType, int speed, IResultCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartApi
        public void controlDeviceSpeedNew(String location, int deviceType, String setType, int speed, int adjustSpeed, IResultCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartApi
        public void controlDeviceSwitch(String location, int deviceType, boolean isOpen, IResultCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartApi
        public void controlSceneMode(boolean isOpen, String sceneName, IResultCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartApi
        public void getAllSceneList(IGetSceneListCallBack callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartApi
        public void registerSceneChangeListener(ISceneChangeCallBack callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartApi
        public void unregisterSceneChangeListener(ISceneChangeCallBack callback) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ISmartApi {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.smart.ISmartApi";
        public static final int TRANSACTION_controlACTemp = 4;
        public static final int TRANSACTION_controlDeviceMode = 2;
        public static final int TRANSACTION_controlDeviceSpeed = 3;
        public static final int TRANSACTION_controlDeviceSpeedNew = 9;
        public static final int TRANSACTION_controlDeviceSwitch = 1;
        public static final int TRANSACTION_controlSceneMode = 5;
        public static final int TRANSACTION_getAllSceneList = 6;
        public static final int TRANSACTION_registerSceneChangeListener = 7;
        public static final int TRANSACTION_unregisterSceneChangeListener = 8;

        public static class Proxy implements ISmartApi {
            public static ISmartApi sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartApi
            public void controlACTemp(String location, String setType, int targetTemp, int adjustTemp, IResultCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(location);
                    parcelObtain.writeString(setType);
                    parcelObtain.writeInt(targetTemp);
                    parcelObtain.writeInt(adjustTemp);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().controlACTemp(location, setType, targetTemp, adjustTemp, callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartApi
            public void controlDeviceMode(String location, int deviceType, int mode, IResultCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(location);
                    parcelObtain.writeInt(deviceType);
                    parcelObtain.writeInt(mode);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().controlDeviceMode(location, deviceType, mode, callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartApi
            public void controlDeviceSpeed(String location, int deviceType, int speed, IResultCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(location);
                    parcelObtain.writeInt(deviceType);
                    parcelObtain.writeInt(speed);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().controlDeviceSpeed(location, deviceType, speed, callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartApi
            public void controlDeviceSpeedNew(String location, int deviceType, String setType, int speed, int adjustSpeed, IResultCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(location);
                    parcelObtain.writeInt(deviceType);
                    parcelObtain.writeString(setType);
                    parcelObtain.writeInt(speed);
                    parcelObtain.writeInt(adjustSpeed);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().controlDeviceSpeedNew(location, deviceType, setType, speed, adjustSpeed, callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartApi
            public void controlDeviceSwitch(String str, int i, boolean z, IResultCallback iResultCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeStrongBinder(iResultCallback != null ? iResultCallback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().controlDeviceSwitch(str, i, z, iResultCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartApi
            public void controlSceneMode(boolean z, String str, IResultCallback iResultCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iResultCallback != null ? iResultCallback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().controlSceneMode(z, str, iResultCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartApi
            public void getAllSceneList(IGetSceneListCallBack callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getAllSceneList(callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartApi
            public void registerSceneChangeListener(ISceneChangeCallBack callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerSceneChangeListener(callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartApi
            public void unregisterSceneChangeListener(ISceneChangeCallBack callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterSceneChangeListener(callback);
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

        public static ISmartApi asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISmartApi)) ? new Proxy(obj) : (ISmartApi) iInterfaceQueryLocalInterface;
        }

        public static ISmartApi getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISmartApi impl) {
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
                    controlDeviceSwitch(data.readString(), data.readInt(), data.readInt() != 0, IResultCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    controlDeviceMode(data.readString(), data.readInt(), data.readInt(), IResultCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    controlDeviceSpeed(data.readString(), data.readInt(), data.readInt(), IResultCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    controlACTemp(data.readString(), data.readString(), data.readInt(), data.readInt(), IResultCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    controlSceneMode(data.readInt() != 0, data.readString(), IResultCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    getAllSceneList(IGetSceneListCallBack.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    registerSceneChangeListener(ISceneChangeCallBack.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    unregisterSceneChangeListener(ISceneChangeCallBack.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    controlDeviceSpeedNew(data.readString(), data.readInt(), data.readString(), data.readInt(), data.readInt(), IResultCallback.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void controlACTemp(String location, String setType, int targetTemp, int adjustTemp, IResultCallback callback) throws RemoteException;

    void controlDeviceMode(String location, int deviceType, int mode, IResultCallback callback) throws RemoteException;

    void controlDeviceSpeed(String location, int deviceType, int speed, IResultCallback callback) throws RemoteException;

    void controlDeviceSpeedNew(String location, int deviceType, String setType, int speed, int adjustSpeed, IResultCallback callback) throws RemoteException;

    void controlDeviceSwitch(String location, int deviceType, boolean isOpen, IResultCallback callback) throws RemoteException;

    void controlSceneMode(boolean isOpen, String sceneName, IResultCallback callback) throws RemoteException;

    void getAllSceneList(IGetSceneListCallBack callback) throws RemoteException;

    void registerSceneChangeListener(ISceneChangeCallBack callback) throws RemoteException;

    void unregisterSceneChangeListener(ISceneChangeCallBack callback) throws RemoteException;
}
