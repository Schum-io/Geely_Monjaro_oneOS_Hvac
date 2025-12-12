package com.geely.lib.oneosapi.theme;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IApplyByLauncherCallback extends IInterface {

    public static class Default implements IApplyByLauncherCallback {
        @Override // com.geely.lib.oneosapi.theme.IApplyByLauncherCallback
        public void applyByLauncherCallback(int code, float downLoadProgress) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IApplyByLauncherCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.theme.IApplyByLauncherCallback";
        public static final int TRANSACTION_applyByLauncherCallback = 1;

        public static class Proxy implements IApplyByLauncherCallback {
            public static IApplyByLauncherCallback sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // com.geely.lib.oneosapi.theme.IApplyByLauncherCallback
            public void applyByLauncherCallback(int code, float downLoadProgress) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(code);
                    parcelObtain.writeFloat(downLoadProgress);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().applyByLauncherCallback(code, downLoadProgress);
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
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IApplyByLauncherCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IApplyByLauncherCallback)) ? new Proxy(obj) : (IApplyByLauncherCallback) iInterfaceQueryLocalInterface;
        }

        public static IApplyByLauncherCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IApplyByLauncherCallback impl) {
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
            if (code != 1) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            applyByLauncherCallback(data.readInt(), data.readFloat());
            reply.writeNoException();
            return true;
        }
    }

    void applyByLauncherCallback(int code, float downLoadProgress) throws RemoteException;
}
