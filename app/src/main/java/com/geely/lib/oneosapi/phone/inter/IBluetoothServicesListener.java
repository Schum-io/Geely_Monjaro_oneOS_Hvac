package com.geely.lib.oneosapi.phone.inter;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.phone.telecom.GlyCallItem;

/* loaded from: classes.dex */
public interface IBluetoothServicesListener extends IInterface {

    public static class Default implements IBluetoothServicesListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener
        public void onCallAdded(GlyCallItem callItem) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener
        public void onCallAddedOther(GlyCallItem callItem, GlyCallItem otherCallItem) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener
        public void onCallViewStateChange(int statue) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothServicesListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener";
        public static final int TRANSACTION_onCallAdded = 1;
        public static final int TRANSACTION_onCallAddedOther = 3;
        public static final int TRANSACTION_onCallViewStateChange = 2;

        public static class Proxy implements IBluetoothServicesListener {
            public static IBluetoothServicesListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener
            public void onCallAdded(GlyCallItem callItem) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (callItem != null) {
                        parcelObtain.writeInt(1);
                        callItem.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onCallAdded(callItem);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        callItem.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener
            public void onCallAddedOther(GlyCallItem callItem, GlyCallItem otherCallItem) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (callItem != null) {
                        parcelObtain.writeInt(1);
                        callItem.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (otherCallItem != null) {
                        parcelObtain.writeInt(1);
                        otherCallItem.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onCallAddedOther(callItem, otherCallItem);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        callItem.readFromParcel(parcelObtain2);
                    }
                    if (parcelObtain2.readInt() != 0) {
                        otherCallItem.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener
            public void onCallViewStateChange(int statue) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(statue);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onCallViewStateChange(statue);
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

        public static IBluetoothServicesListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IBluetoothServicesListener)) ? new Proxy(obj) : (IBluetoothServicesListener) iInterfaceQueryLocalInterface;
        }

        public static IBluetoothServicesListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IBluetoothServicesListener impl) {
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
            GlyCallItem glyCallItemCreateFromParcel;
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                glyCallItemCreateFromParcel = data.readInt() != 0 ? GlyCallItem.CREATOR.createFromParcel(data) : null;
                onCallAdded(glyCallItemCreateFromParcel);
                reply.writeNoException();
                if (glyCallItemCreateFromParcel != null) {
                    reply.writeInt(1);
                    glyCallItemCreateFromParcel.writeToParcel(reply, 1);
                } else {
                    reply.writeInt(0);
                }
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                onCallViewStateChange(data.readInt());
                reply.writeNoException();
                return true;
            }
            if (code != 3) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            GlyCallItem glyCallItemCreateFromParcel2 = data.readInt() != 0 ? GlyCallItem.CREATOR.createFromParcel(data) : null;
            glyCallItemCreateFromParcel = data.readInt() != 0 ? GlyCallItem.CREATOR.createFromParcel(data) : null;
            onCallAddedOther(glyCallItemCreateFromParcel2, glyCallItemCreateFromParcel);
            reply.writeNoException();
            if (glyCallItemCreateFromParcel2 != null) {
                reply.writeInt(1);
                glyCallItemCreateFromParcel2.writeToParcel(reply, 1);
            } else {
                reply.writeInt(0);
            }
            if (glyCallItemCreateFromParcel != null) {
                reply.writeInt(1);
                glyCallItemCreateFromParcel.writeToParcel(reply, 1);
            } else {
                reply.writeInt(0);
            }
            return true;
        }
    }

    void onCallAdded(GlyCallItem callItem) throws RemoteException;

    void onCallAddedOther(GlyCallItem callItem, GlyCallItem otherCallItem) throws RemoteException;

    void onCallViewStateChange(int statue) throws RemoteException;
}
