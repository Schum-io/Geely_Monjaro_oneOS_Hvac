package com.geely.lib.cloud.download;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.IDownloadCallBack;
import com.geely.lib.cloud.download.bean.TaskEntity;

/* loaded from: classes.dex */
public interface IDownload extends IInterface {

    public static class Default implements IDownload {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.download.IDownload
        public void getDownloadFile(TaskEntity taskEntity, IDownloadCallBack callback) throws RemoteException {
        }
    }

    void getDownloadFile(TaskEntity taskEntity, IDownloadCallBack callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IDownload {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.download.IDownload";
        static final int TRANSACTION_getDownloadFile = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IDownload asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IDownload)) {
                return (IDownload) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                getDownloadFile(data.readInt() != 0 ? TaskEntity.CREATOR.createFromParcel(data) : null, IDownloadCallBack.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static class Proxy implements IDownload {
            public static IDownload sDefaultImpl;
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

            @Override // com.geely.lib.cloud.download.IDownload
            public void getDownloadFile(TaskEntity taskEntity, IDownloadCallBack callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (taskEntity != null) {
                        parcelObtain.writeInt(1);
                        taskEntity.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDownloadFile(taskEntity, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IDownload impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IDownload getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
