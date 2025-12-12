package com.geely.lib.oneosapi.theme;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IDressDlCallback extends IInterface {

    public static class Default implements IDressDlCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.theme.IDressDlCallback
        public void dlResultCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IDressDlCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.theme.IDressDlCallback";
        public static final int TRANSACTION_dlResultCallback = 1;

        public static class Proxy implements IDressDlCallback {
            public static IDressDlCallback sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.theme.IDressDlCallback
            public void dlResultCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(cardGoodsVoDataJson);
                    parcelObtain.writeString(taskEntityJson);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().dlResultCallback(cardGoodsVoDataJson, taskEntityJson);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IDressDlCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDressDlCallback)) ? new Proxy(obj) : (IDressDlCallback) iInterfaceQueryLocalInterface;
        }

        public static IDressDlCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IDressDlCallback impl) {
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
            dlResultCallback(data.readString(), data.readString());
            reply.writeNoException();
            return true;
        }
    }

    void dlResultCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException;
}
