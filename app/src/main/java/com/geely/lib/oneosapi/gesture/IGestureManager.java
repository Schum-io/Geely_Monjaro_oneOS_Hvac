package com.geely.lib.oneosapi.gesture;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.gesture.IGestureEventNotifyCallback;

/* loaded from: classes.dex */
public interface IGestureManager extends IInterface {

    public static class Default implements IGestureManager {
        @Override // com.geely.lib.oneosapi.gesture.IGestureManager
        public boolean addGestureDetectEventNotify(IGestureEventNotifyCallback eventNotify) throws RemoteException {
            return false;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.gesture.IGestureManager
        public boolean removeGestureDetectEventNotify(IGestureEventNotifyCallback eventNotify) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IGestureManager {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.gesture.IGestureManager";
        public static final int TRANSACTION_addGestureDetectEventNotify = 1;
        public static final int TRANSACTION_removeGestureDetectEventNotify = 2;

        public static class Proxy implements IGestureManager {
            public static IGestureManager sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // com.geely.lib.oneosapi.gesture.IGestureManager
            public boolean addGestureDetectEventNotify(IGestureEventNotifyCallback eventNotify) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(eventNotify != null ? eventNotify.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().addGestureDetectEventNotify(eventNotify);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
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

            @Override // com.geely.lib.oneosapi.gesture.IGestureManager
            public boolean removeGestureDetectEventNotify(IGestureEventNotifyCallback eventNotify) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(eventNotify != null ? eventNotify.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().removeGestureDetectEventNotify(eventNotify);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IGestureManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGestureManager)) ? new Proxy(obj) : (IGestureManager) iInterfaceQueryLocalInterface;
        }

        public static IGestureManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IGestureManager impl) {
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
                boolean zAddGestureDetectEventNotify = addGestureDetectEventNotify(IGestureEventNotifyCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                parcel2.writeInt(zAddGestureDetectEventNotify ? 1 : 0);
                return true;
            }
            if (i != 2) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zRemoveGestureDetectEventNotify = removeGestureDetectEventNotify(IGestureEventNotifyCallback.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            parcel2.writeInt(zRemoveGestureDetectEventNotify ? 1 : 0);
            return true;
        }
    }

    boolean addGestureDetectEventNotify(IGestureEventNotifyCallback eventNotify) throws RemoteException;

    boolean removeGestureDetectEventNotify(IGestureEventNotifyCallback eventNotify) throws RemoteException;
}
