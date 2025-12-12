package com.geely.lib.oneosapi.appstore;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.appstore.bean.AppStoreTaskInfo;

/* loaded from: classes.dex */
public interface IAppStoreTaskCallback extends IInterface {

    public static class Default implements IAppStoreTaskCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.appstore.IAppStoreTaskCallback
        public void onAppTaskExecutionStatusChanged(AppStoreTaskInfo taskInfoList, int stastus) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.appstore.IAppStoreTaskCallback
        public void onAppTaskOperationStatusChanged(AppStoreTaskInfo taskInfoList, int type, boolean isSuccess) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IAppStoreTaskCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.appstore.IAppStoreTaskCallback";
        public static final int TRANSACTION_onAppTaskExecutionStatusChanged = 2;
        public static final int TRANSACTION_onAppTaskOperationStatusChanged = 1;

        public static class Proxy implements IAppStoreTaskCallback {
            public static IAppStoreTaskCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.appstore.IAppStoreTaskCallback
            public void onAppTaskExecutionStatusChanged(AppStoreTaskInfo taskInfoList, int stastus) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (taskInfoList != null) {
                        parcelObtain.writeInt(1);
                        taskInfoList.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(stastus);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAppTaskExecutionStatusChanged(taskInfoList, stastus);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.appstore.IAppStoreTaskCallback
            public void onAppTaskOperationStatusChanged(AppStoreTaskInfo appStoreTaskInfo, int i, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (appStoreTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        appStoreTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAppTaskOperationStatusChanged(appStoreTaskInfo, i, z);
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

        public static IAppStoreTaskCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAppStoreTaskCallback)) ? new Proxy(obj) : (IAppStoreTaskCallback) iInterfaceQueryLocalInterface;
        }

        public static IAppStoreTaskCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAppStoreTaskCallback impl) {
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
                onAppTaskOperationStatusChanged(data.readInt() != 0 ? AppStoreTaskInfo.CREATOR.createFromParcel(data) : null, data.readInt(), data.readInt() != 0);
                reply.writeNoException();
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
            onAppTaskExecutionStatusChanged(data.readInt() != 0 ? AppStoreTaskInfo.CREATOR.createFromParcel(data) : null, data.readInt());
            reply.writeNoException();
            return true;
        }
    }

    void onAppTaskExecutionStatusChanged(AppStoreTaskInfo taskInfoList, int stastus) throws RemoteException;

    void onAppTaskOperationStatusChanged(AppStoreTaskInfo taskInfoList, int type, boolean isSuccess) throws RemoteException;
}
