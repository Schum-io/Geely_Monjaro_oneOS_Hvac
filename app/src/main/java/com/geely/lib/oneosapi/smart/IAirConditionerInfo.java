package com.geely.lib.oneosapi.smart;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IAirConditionerInfo extends IInterface {

    public static class Default implements IAirConditionerInfo {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.smart.IAirConditionerInfo
        public String getId() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.smart.IAirConditionerInfo
        public int getSwitchOpen() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.smart.IAirConditionerInfo
        public String getTemperature() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.smart.IAirConditionerInfo
        public int getWindSpeed() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.smart.IAirConditionerInfo
        public String getWorkModel() throws RemoteException {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IAirConditionerInfo {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.smart.IAirConditionerInfo";
        public static final int TRANSACTION_getId = 5;
        public static final int TRANSACTION_getSwitchOpen = 1;
        public static final int TRANSACTION_getTemperature = 2;
        public static final int TRANSACTION_getWindSpeed = 4;
        public static final int TRANSACTION_getWorkModel = 3;

        public static class Proxy implements IAirConditionerInfo {
            public static IAirConditionerInfo sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.smart.IAirConditionerInfo
            public String getId() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getId();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.smart.IAirConditionerInfo
            public int getSwitchOpen() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSwitchOpen();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.IAirConditionerInfo
            public String getTemperature() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getTemperature();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.IAirConditionerInfo
            public int getWindSpeed() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getWindSpeed();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.IAirConditionerInfo
            public String getWorkModel() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getWorkModel();
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

        public static IAirConditionerInfo asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAirConditionerInfo)) ? new Proxy(obj) : (IAirConditionerInfo) iInterfaceQueryLocalInterface;
        }

        public static IAirConditionerInfo getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAirConditionerInfo impl) {
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
                int switchOpen = getSwitchOpen();
                reply.writeNoException();
                reply.writeInt(switchOpen);
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                String temperature = getTemperature();
                reply.writeNoException();
                reply.writeString(temperature);
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                String workModel = getWorkModel();
                reply.writeNoException();
                reply.writeString(workModel);
                return true;
            }
            if (code == 4) {
                data.enforceInterface(DESCRIPTOR);
                int windSpeed = getWindSpeed();
                reply.writeNoException();
                reply.writeInt(windSpeed);
                return true;
            }
            if (code != 5) {
                return super.onTransact(code, data, reply, flags);
            }
            data.enforceInterface(DESCRIPTOR);
            String id = getId();
            reply.writeNoException();
            reply.writeString(id);
            return true;
        }
    }

    String getId() throws RemoteException;

    int getSwitchOpen() throws RemoteException;

    String getTemperature() throws RemoteException;

    int getWindSpeed() throws RemoteException;

    String getWorkModel() throws RemoteException;
}
