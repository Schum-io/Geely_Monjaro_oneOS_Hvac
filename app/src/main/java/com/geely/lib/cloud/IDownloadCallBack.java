package com.geely.lib.cloud;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.download.bean.TaskEntity;

/* loaded from: classes.dex */
public interface IDownloadCallBack extends IInterface {

    public static class Default implements IDownloadCallBack {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.IDownloadCallBack
        public void completed(TaskEntity taskInfo) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.IDownloadCallBack
        public void connected(TaskEntity taskInfo) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.IDownloadCallBack
        public void error(TaskEntity taskInfo) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.IDownloadCallBack
        public void paused(TaskEntity taskInfo) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.IDownloadCallBack
        public void pending(TaskEntity taskInfo) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.IDownloadCallBack
        public void progress(TaskEntity taskInfo) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.IDownloadCallBack
        public void started(TaskEntity taskInfo) throws RemoteException {
        }
    }

    void completed(TaskEntity taskInfo) throws RemoteException;

    void connected(TaskEntity taskInfo) throws RemoteException;

    void error(TaskEntity taskInfo) throws RemoteException;

    void paused(TaskEntity taskInfo) throws RemoteException;

    void pending(TaskEntity taskInfo) throws RemoteException;

    void progress(TaskEntity taskInfo) throws RemoteException;

    void started(TaskEntity taskInfo) throws RemoteException;

    public static abstract class Stub extends Binder implements IDownloadCallBack {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.IDownloadCallBack";
        static final int TRANSACTION_completed = 5;
        static final int TRANSACTION_connected = 3;
        static final int TRANSACTION_error = 7;
        static final int TRANSACTION_paused = 6;
        static final int TRANSACTION_pending = 1;
        static final int TRANSACTION_progress = 4;
        static final int TRANSACTION_started = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IDownloadCallBack asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IDownloadCallBack)) {
                return (IDownloadCallBack) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    pending(data.readInt() != 0 ? TaskEntity.CREATOR.createFromParcel(data) : null);
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    started(data.readInt() != 0 ? TaskEntity.CREATOR.createFromParcel(data) : null);
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    connected(data.readInt() != 0 ? TaskEntity.CREATOR.createFromParcel(data) : null);
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    progress(data.readInt() != 0 ? TaskEntity.CREATOR.createFromParcel(data) : null);
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    completed(data.readInt() != 0 ? TaskEntity.CREATOR.createFromParcel(data) : null);
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    paused(data.readInt() != 0 ? TaskEntity.CREATOR.createFromParcel(data) : null);
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    error(data.readInt() != 0 ? TaskEntity.CREATOR.createFromParcel(data) : null);
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements IDownloadCallBack {
            public static IDownloadCallBack sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.cloud.IDownloadCallBack
            public void pending(TaskEntity taskInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (taskInfo != null) {
                        parcelObtain.writeInt(1);
                        taskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().pending(taskInfo);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.IDownloadCallBack
            public void started(TaskEntity taskInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (taskInfo != null) {
                        parcelObtain.writeInt(1);
                        taskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().started(taskInfo);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.IDownloadCallBack
            public void connected(TaskEntity taskInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (taskInfo != null) {
                        parcelObtain.writeInt(1);
                        taskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().connected(taskInfo);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.IDownloadCallBack
            public void progress(TaskEntity taskInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (taskInfo != null) {
                        parcelObtain.writeInt(1);
                        taskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().progress(taskInfo);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.IDownloadCallBack
            public void completed(TaskEntity taskInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (taskInfo != null) {
                        parcelObtain.writeInt(1);
                        taskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().completed(taskInfo);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.IDownloadCallBack
            public void paused(TaskEntity taskInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (taskInfo != null) {
                        parcelObtain.writeInt(1);
                        taskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().paused(taskInfo);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.IDownloadCallBack
            public void error(TaskEntity taskInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (taskInfo != null) {
                        parcelObtain.writeInt(1);
                        taskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().error(taskInfo);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IDownloadCallBack impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IDownloadCallBack getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
