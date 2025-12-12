package com.geely.lib.oneosapi.ota;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.ota.IOtaVersionChangedListener;

/* loaded from: classes.dex */
public interface IOtaService extends IInterface {

    public static class Default implements IOtaService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.ota.IOtaService
        public String getCurrentCarVersionName() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.ota.IOtaService
        public String getSysBssId() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.ota.IOtaService
        public String getUpgradeVersionName() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.ota.IOtaService
        public boolean hasNewVersion() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.ota.IOtaService
        public void registerOtaVersionChangedListener(IOtaVersionChangedListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.ota.IOtaService
        public void unregisterOtaVersionChangedListener(IOtaVersionChangedListener listener, String packageName) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IOtaService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.ota.IOtaService";
        public static final int TRANSACTION_getCurrentCarVersionName = 2;
        public static final int TRANSACTION_getSysBssId = 3;
        public static final int TRANSACTION_getUpgradeVersionName = 1;
        public static final int TRANSACTION_hasNewVersion = 4;
        public static final int TRANSACTION_registerOtaVersionChangedListener = 5;
        public static final int TRANSACTION_unregisterOtaVersionChangedListener = 6;

        public static class Proxy implements IOtaService {
            public static IOtaService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.ota.IOtaService
            public String getCurrentCarVersionName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentCarVersionName();
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

            @Override // com.geely.lib.oneosapi.ota.IOtaService
            public String getSysBssId() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSysBssId();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.ota.IOtaService
            public String getUpgradeVersionName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUpgradeVersionName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.ota.IOtaService
            public boolean hasNewVersion() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().hasNewVersion();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.ota.IOtaService
            public void registerOtaVersionChangedListener(IOtaVersionChangedListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerOtaVersionChangedListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.ota.IOtaService
            public void unregisterOtaVersionChangedListener(IOtaVersionChangedListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterOtaVersionChangedListener(listener, packageName);
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

        public static IOtaService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IOtaService)) ? new Proxy(obj) : (IOtaService) iInterfaceQueryLocalInterface;
        }

        public static IOtaService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IOtaService impl) {
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
                    String upgradeVersionName = getUpgradeVersionName();
                    parcel2.writeNoException();
                    parcel2.writeString(upgradeVersionName);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String currentCarVersionName = getCurrentCarVersionName();
                    parcel2.writeNoException();
                    parcel2.writeString(currentCarVersionName);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String sysBssId = getSysBssId();
                    parcel2.writeNoException();
                    parcel2.writeString(sysBssId);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHasNewVersion = hasNewVersion();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasNewVersion ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerOtaVersionChangedListener(IOtaVersionChangedListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterOtaVersionChangedListener(IOtaVersionChangedListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String getCurrentCarVersionName() throws RemoteException;

    String getSysBssId() throws RemoteException;

    String getUpgradeVersionName() throws RemoteException;

    boolean hasNewVersion() throws RemoteException;

    void registerOtaVersionChangedListener(IOtaVersionChangedListener listener, String packageName) throws RemoteException;

    void unregisterOtaVersionChangedListener(IOtaVersionChangedListener listener, String packageName) throws RemoteException;
}
