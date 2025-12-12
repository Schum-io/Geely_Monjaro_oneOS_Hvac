package com.geely.lib.oneosapi.scenemode;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener;

/* loaded from: classes.dex */
public interface ISceneModeService extends IInterface {

    public static class Default implements ISceneModeService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
        public void enterIntoModeById(String sceneId) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
        public void executeModeById(String sceneId, boolean isOpen) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
        public int executeSceneModeById(String sceneId, boolean isOpen) throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
        public int getSceneModeFrontState() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
        public String getSceneModeName() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
        public int getSceneModeOpenState() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
        public String openSceneMode(String param) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
        public void registerSceneModeServiceChangedListener(ISceneModeServiceChangedListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
        public void unRegisterSceneModeServiceChangedListener(ISceneModeServiceChangedListener listener) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ISceneModeService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.scenemode.ISceneModeService";
        public static final int TRANSACTION_enterIntoModeById = 3;
        public static final int TRANSACTION_executeModeById = 1;
        public static final int TRANSACTION_executeSceneModeById = 2;
        public static final int TRANSACTION_getSceneModeFrontState = 5;
        public static final int TRANSACTION_getSceneModeName = 6;
        public static final int TRANSACTION_getSceneModeOpenState = 4;
        public static final int TRANSACTION_openSceneMode = 9;
        public static final int TRANSACTION_registerSceneModeServiceChangedListener = 7;
        public static final int TRANSACTION_unRegisterSceneModeServiceChangedListener = 8;

        public static class Proxy implements ISceneModeService {
            public static ISceneModeService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
            public void enterIntoModeById(String sceneId) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(sceneId);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().enterIntoModeById(sceneId);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
            public void executeModeById(String str, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().executeModeById(str, z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
            public int executeSceneModeById(String str, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().executeSceneModeById(str, z);
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

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
            public int getSceneModeFrontState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSceneModeFrontState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
            public String getSceneModeName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSceneModeName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
            public int getSceneModeOpenState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSceneModeOpenState();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
            public String openSceneMode(String param) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(param);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().openSceneMode(param);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
            public void registerSceneModeServiceChangedListener(ISceneModeServiceChangedListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerSceneModeServiceChangedListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.scenemode.ISceneModeService
            public void unRegisterSceneModeServiceChangedListener(ISceneModeServiceChangedListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterSceneModeServiceChangedListener(listener);
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

        public static ISceneModeService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISceneModeService)) ? new Proxy(obj) : (ISceneModeService) iInterfaceQueryLocalInterface;
        }

        public static ISceneModeService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISceneModeService impl) {
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
                    executeModeById(data.readString(), data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    int iExecuteSceneModeById = executeSceneModeById(data.readString(), data.readInt() != 0);
                    reply.writeNoException();
                    reply.writeInt(iExecuteSceneModeById);
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    enterIntoModeById(data.readString());
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    int sceneModeOpenState = getSceneModeOpenState();
                    reply.writeNoException();
                    reply.writeInt(sceneModeOpenState);
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    int sceneModeFrontState = getSceneModeFrontState();
                    reply.writeNoException();
                    reply.writeInt(sceneModeFrontState);
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    String sceneModeName = getSceneModeName();
                    reply.writeNoException();
                    reply.writeString(sceneModeName);
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    registerSceneModeServiceChangedListener(ISceneModeServiceChangedListener.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    unRegisterSceneModeServiceChangedListener(ISceneModeServiceChangedListener.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    String strOpenSceneMode = openSceneMode(data.readString());
                    reply.writeNoException();
                    reply.writeString(strOpenSceneMode);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void enterIntoModeById(String sceneId) throws RemoteException;

    void executeModeById(String sceneId, boolean isOpen) throws RemoteException;

    int executeSceneModeById(String sceneId, boolean isOpen) throws RemoteException;

    int getSceneModeFrontState() throws RemoteException;

    String getSceneModeName() throws RemoteException;

    int getSceneModeOpenState() throws RemoteException;

    String openSceneMode(String param) throws RemoteException;

    void registerSceneModeServiceChangedListener(ISceneModeServiceChangedListener listener) throws RemoteException;

    void unRegisterSceneModeServiceChangedListener(ISceneModeServiceChangedListener listener) throws RemoteException;
}
