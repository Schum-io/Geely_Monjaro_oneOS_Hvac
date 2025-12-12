package com.geely.lib.oneosapi.smart;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ISceneInfo extends IInterface {

    public static class Default implements ISceneInfo {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.smart.ISceneInfo
        public int getErrorStatus() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.smart.ISceneInfo
        public int getOpenStatus() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.smart.ISceneInfo
        public String getSceneId() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.smart.ISceneInfo
        public String getType() throws RemoteException {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements ISceneInfo {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.smart.ISceneInfo";
        public static final int TRANSACTION_getErrorStatus = 4;
        public static final int TRANSACTION_getOpenStatus = 2;
        public static final int TRANSACTION_getSceneId = 1;
        public static final int TRANSACTION_getType = 3;

        public static class Proxy implements ISceneInfo {
            public static ISceneInfo sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.smart.ISceneInfo
            public int getErrorStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getErrorStatus();
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

            @Override // com.geely.lib.oneosapi.smart.ISceneInfo
            public int getOpenStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getOpenStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISceneInfo
            public String getSceneId() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSceneId();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISceneInfo
            public String getType() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getType();
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

        public static ISceneInfo asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISceneInfo)) ? new Proxy(obj) : (ISceneInfo) iInterfaceQueryLocalInterface;
        }

        public static ISceneInfo getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISceneInfo impl) {
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
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                String sceneId = getSceneId();
                reply.writeNoException();
                reply.writeString(sceneId);
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                int openStatus = getOpenStatus();
                reply.writeNoException();
                reply.writeInt(openStatus);
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                String type = getType();
                reply.writeNoException();
                reply.writeString(type);
                return true;
            }
            if (code != 4) {
                return super.onTransact(code, data, reply, flags);
            }
            data.enforceInterface(DESCRIPTOR);
            int errorStatus = getErrorStatus();
            reply.writeNoException();
            reply.writeInt(errorStatus);
            return true;
        }
    }

    int getErrorStatus() throws RemoteException;

    int getOpenStatus() throws RemoteException;

    String getSceneId() throws RemoteException;

    String getType() throws RemoteException;
}
