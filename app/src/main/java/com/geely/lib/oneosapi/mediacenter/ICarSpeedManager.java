package com.geely.lib.oneosapi.mediacenter;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.listener.ICarSpeedListener;

/* loaded from: classes.dex */
public interface ICarSpeedManager extends IInterface {

    public static class Default implements ICarSpeedManager {
        @Override // com.geely.lib.oneosapi.mediacenter.ICarSpeedManager
        public void addVehicleSpeedChangeListener(ICarSpeedListener listener) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.ICarSpeedManager
        public boolean isTrad() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.ICarSpeedManager
        public void removeVehicleSpeedChangeListener(ICarSpeedListener listener) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ICarSpeedManager {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.ICarSpeedManager";
        public static final int TRANSACTION_addVehicleSpeedChangeListener = 2;
        public static final int TRANSACTION_isTrad = 1;
        public static final int TRANSACTION_removeVehicleSpeedChangeListener = 3;

        public static class Proxy implements ICarSpeedManager {
            public static ICarSpeedManager sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // com.geely.lib.oneosapi.mediacenter.ICarSpeedManager
            public void addVehicleSpeedChangeListener(ICarSpeedListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addVehicleSpeedChangeListener(listener);
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

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.mediacenter.ICarSpeedManager
            public boolean isTrad() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isTrad();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.ICarSpeedManager
            public void removeVehicleSpeedChangeListener(ICarSpeedListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().removeVehicleSpeedChangeListener(listener);
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

        public static ICarSpeedManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICarSpeedManager)) ? new Proxy(obj) : (ICarSpeedManager) iInterfaceQueryLocalInterface;
        }

        public static ICarSpeedManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ICarSpeedManager impl) {
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
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zIsTrad = isTrad();
                parcel2.writeNoException();
                parcel2.writeInt(zIsTrad ? 1 : 0);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                addVehicleSpeedChangeListener(ICarSpeedListener.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            if (i != 3) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            removeVehicleSpeedChangeListener(ICarSpeedListener.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
    }

    void addVehicleSpeedChangeListener(ICarSpeedListener listener) throws RemoteException;

    boolean isTrad() throws RemoteException;

    void removeVehicleSpeedChangeListener(ICarSpeedListener listener) throws RemoteException;
}
