package com.geely.lib.oneosapi.theme;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IGetOwnerStaticWallpaperCallback extends IInterface {

    public static class Default implements IGetOwnerStaticWallpaperCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.theme.IGetOwnerStaticWallpaperCallback
        public void getOwnerStaticWallpaperCallback(int code, String data) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IGetOwnerStaticWallpaperCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.theme.IGetOwnerStaticWallpaperCallback";
        public static final int TRANSACTION_getOwnerStaticWallpaperCallback = 1;

        public static class Proxy implements IGetOwnerStaticWallpaperCallback {
            public static IGetOwnerStaticWallpaperCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.theme.IGetOwnerStaticWallpaperCallback
            public void getOwnerStaticWallpaperCallback(int code, String data) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(code);
                    parcelObtain.writeString(data);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getOwnerStaticWallpaperCallback(code, data);
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

        public static IGetOwnerStaticWallpaperCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGetOwnerStaticWallpaperCallback)) ? new Proxy(obj) : (IGetOwnerStaticWallpaperCallback) iInterfaceQueryLocalInterface;
        }

        public static IGetOwnerStaticWallpaperCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IGetOwnerStaticWallpaperCallback impl) {
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
            getOwnerStaticWallpaperCallback(data.readInt(), data.readString());
            reply.writeNoException();
            return true;
        }
    }

    void getOwnerStaticWallpaperCallback(int code, String data) throws RemoteException;
}
