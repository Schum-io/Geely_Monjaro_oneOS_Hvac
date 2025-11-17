package com.geely.lib.oneosapi.gesture;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IGestureEventNotifyCallback extends IInterface {

    public static class Default implements IGestureEventNotifyCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.gesture.IGestureEventNotifyCallback
        public String getUID() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.gesture.IGestureEventNotifyCallback
        public void onGestureNotify(GestureModel notifyModel) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IGestureEventNotifyCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.gesture.IGestureEventNotifyCallback";
        public static final int TRANSACTION_getUID = 1;
        public static final int TRANSACTION_onGestureNotify = 2;

        public static class Proxy implements IGestureEventNotifyCallback {
            public static IGestureEventNotifyCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.gesture.IGestureEventNotifyCallback
            public String getUID() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUID();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.gesture.IGestureEventNotifyCallback
            public void onGestureNotify(GestureModel notifyModel) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (notifyModel != null) {
                        parcelObtain.writeInt(1);
                        notifyModel.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onGestureNotify(notifyModel);
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

        public static IGestureEventNotifyCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGestureEventNotifyCallback)) ? new Proxy(obj) : (IGestureEventNotifyCallback) iInterfaceQueryLocalInterface;
        }

        public static IGestureEventNotifyCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IGestureEventNotifyCallback impl) {
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
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                String uid = getUID();
                reply.writeNoException();
                reply.writeString(uid);
                return true;
            }
            if (code != 2) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            onGestureNotify(data.readInt() != 0 ? GestureModel.CREATOR.createFromParcel(data) : null);
            reply.writeNoException();
            return true;
        }
    }

    String getUID() throws RemoteException;

    void onGestureNotify(GestureModel notifyModel) throws RemoteException;
}
