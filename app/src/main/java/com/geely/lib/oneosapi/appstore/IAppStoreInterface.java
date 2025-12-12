package com.geely.lib.oneosapi.appstore;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.appstore.IAppStoreTaskCallback;
import com.geely.lib.oneosapi.appstore.bean.AppStoreTaskInfo;
import java.util.List;

/* loaded from: classes.dex */
public interface IAppStoreInterface extends IInterface {

    public static class Default implements IAppStoreInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
        public void cancelDownload(String taskId) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
        public List<AppStoreTaskInfo> getAllPendingDownloadApp() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
        public boolean registerTaskCallBack(IAppStoreTaskCallback callback) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
        public void startDownload(String taskId) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
        public void stopDownload(String taskId) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
        public boolean unregisterTaskCallBack(IAppStoreTaskCallback callback) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IAppStoreInterface {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.appstore.IAppStoreInterface";
        public static final int TRANSACTION_cancelDownload = 4;
        public static final int TRANSACTION_getAllPendingDownloadApp = 1;
        public static final int TRANSACTION_registerTaskCallBack = 5;
        public static final int TRANSACTION_startDownload = 3;
        public static final int TRANSACTION_stopDownload = 2;
        public static final int TRANSACTION_unregisterTaskCallBack = 6;

        public static class Proxy implements IAppStoreInterface {
            public static IAppStoreInterface sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
            public void cancelDownload(String taskId) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(taskId);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().cancelDownload(taskId);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
            public List<AppStoreTaskInfo> getAllPendingDownloadApp() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAllPendingDownloadApp();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(AppStoreTaskInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
            public boolean registerTaskCallBack(IAppStoreTaskCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().registerTaskCallBack(callback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
            public void startDownload(String taskId) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(taskId);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().startDownload(taskId);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
            public void stopDownload(String taskId) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(taskId);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().stopDownload(taskId);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.appstore.IAppStoreInterface
            public boolean unregisterTaskCallBack(IAppStoreTaskCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().unregisterTaskCallBack(callback);
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

        public static IAppStoreInterface asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAppStoreInterface)) ? new Proxy(obj) : (IAppStoreInterface) iInterfaceQueryLocalInterface;
        }

        public static IAppStoreInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAppStoreInterface impl) {
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
                    List<AppStoreTaskInfo> allPendingDownloadApp = getAllPendingDownloadApp();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(allPendingDownloadApp);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopDownload(parcel.readString());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    startDownload(parcel.readString());
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelDownload(parcel.readString());
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRegisterTaskCallBack = registerTaskCallBack(IAppStoreTaskCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterTaskCallBack ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUnregisterTaskCallBack = unregisterTaskCallBack(IAppStoreTaskCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zUnregisterTaskCallBack ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void cancelDownload(String taskId) throws RemoteException;

    List<AppStoreTaskInfo> getAllPendingDownloadApp() throws RemoteException;

    boolean registerTaskCallBack(IAppStoreTaskCallback callback) throws RemoteException;

    void startDownload(String taskId) throws RemoteException;

    void stopDownload(String taskId) throws RemoteException;

    boolean unregisterTaskCallBack(IAppStoreTaskCallback callback) throws RemoteException;
}
