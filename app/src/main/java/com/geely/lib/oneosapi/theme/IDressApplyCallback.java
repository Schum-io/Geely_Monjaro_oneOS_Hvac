package com.geely.lib.oneosapi.theme;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IDressApplyCallback extends IInterface {

    public static class Default implements IDressApplyCallback {
        @Override // com.geely.lib.oneosapi.theme.IDressApplyCallback
        public void applyCompletedCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IDressApplyCallback
        public void applyErrorCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IDressApplyCallback
        public void applyProgressCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.theme.IDressApplyCallback
        public void applyStartedCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IDressApplyCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.theme.IDressApplyCallback";
        public static final int TRANSACTION_applyCompletedCallback = 3;
        public static final int TRANSACTION_applyErrorCallback = 4;
        public static final int TRANSACTION_applyProgressCallback = 2;
        public static final int TRANSACTION_applyStartedCallback = 1;

        public static class Proxy implements IDressApplyCallback {
            public static IDressApplyCallback sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // com.geely.lib.oneosapi.theme.IDressApplyCallback
            public void applyCompletedCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(cardGoodsVoDataJson);
                    parcelObtain.writeString(taskEntityJson);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().applyCompletedCallback(cardGoodsVoDataJson, taskEntityJson);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IDressApplyCallback
            public void applyErrorCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(cardGoodsVoDataJson);
                    parcelObtain.writeString(taskEntityJson);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().applyErrorCallback(cardGoodsVoDataJson, taskEntityJson);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IDressApplyCallback
            public void applyProgressCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(cardGoodsVoDataJson);
                    parcelObtain.writeString(taskEntityJson);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().applyProgressCallback(cardGoodsVoDataJson, taskEntityJson);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.theme.IDressApplyCallback
            public void applyStartedCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(cardGoodsVoDataJson);
                    parcelObtain.writeString(taskEntityJson);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().applyStartedCallback(cardGoodsVoDataJson, taskEntityJson);
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

        public static IDressApplyCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IDressApplyCallback)) ? new Proxy(obj) : (IDressApplyCallback) iInterfaceQueryLocalInterface;
        }

        public static IDressApplyCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IDressApplyCallback impl) {
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
                applyStartedCallback(data.readString(), data.readString());
                reply.writeNoException();
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                applyProgressCallback(data.readString(), data.readString());
                reply.writeNoException();
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                applyCompletedCallback(data.readString(), data.readString());
                reply.writeNoException();
                return true;
            }
            if (code != 4) {
                return super.onTransact(code, data, reply, flags);
            }
            data.enforceInterface(DESCRIPTOR);
            applyErrorCallback(data.readString(), data.readString());
            reply.writeNoException();
            return true;
        }
    }

    void applyCompletedCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException;

    void applyErrorCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException;

    void applyProgressCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException;

    void applyStartedCallback(String cardGoodsVoDataJson, String taskEntityJson) throws RemoteException;
}
