package com.geely.lib.oneosapi.navi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface INaviInfo extends IInterface {

    public static class Default implements INaviInfo {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviInfo
        public double getLatitude() throws RemoteException {
            return 0.0d;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviInfo
        public double getLongitude() throws RemoteException {
            return 0.0d;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviInfo
        public String getMessageID() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviInfo
        public String getSender() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviInfo
        public String getTitle() throws RemoteException {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements INaviInfo {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.navi.INaviInfo";
        public static final int TRANSACTION_getLatitude = 4;
        public static final int TRANSACTION_getLongitude = 5;
        public static final int TRANSACTION_getMessageID = 1;
        public static final int TRANSACTION_getSender = 2;
        public static final int TRANSACTION_getTitle = 3;

        public static class Proxy implements INaviInfo {
            public static INaviInfo sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.navi.INaviInfo
            public double getLatitude() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLatitude();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readDouble();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviInfo
            public double getLongitude() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLongitude();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readDouble();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviInfo
            public String getMessageID() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMessageID();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviInfo
            public String getSender() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSender();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviInfo
            public String getTitle() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getTitle();
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

        public static INaviInfo asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof INaviInfo)) ? new Proxy(obj) : (INaviInfo) iInterfaceQueryLocalInterface;
        }

        public static INaviInfo getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(INaviInfo impl) {
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
                String messageID = getMessageID();
                reply.writeNoException();
                reply.writeString(messageID);
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                String sender = getSender();
                reply.writeNoException();
                reply.writeString(sender);
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                String title = getTitle();
                reply.writeNoException();
                reply.writeString(title);
                return true;
            }
            if (code == 4) {
                data.enforceInterface(DESCRIPTOR);
                double latitude = getLatitude();
                reply.writeNoException();
                reply.writeDouble(latitude);
                return true;
            }
            if (code != 5) {
                return super.onTransact(code, data, reply, flags);
            }
            data.enforceInterface(DESCRIPTOR);
            double longitude = getLongitude();
            reply.writeNoException();
            reply.writeDouble(longitude);
            return true;
        }
    }

    double getLatitude() throws RemoteException;

    double getLongitude() throws RemoteException;

    String getMessageID() throws RemoteException;

    String getSender() throws RemoteException;

    String getTitle() throws RemoteException;
}
