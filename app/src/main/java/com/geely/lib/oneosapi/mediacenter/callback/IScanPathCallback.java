package com.geely.lib.oneosapi.mediacenter.callback;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.bean.MusicFileData;
import java.util.List;

/* loaded from: classes.dex */
public interface IScanPathCallback extends IInterface {

    public static class Default implements IScanPathCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.callback.IScanPathCallback
        public void onScanPathFinish(int source, List<MusicFileData> musicFileDataList) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IScanPathCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.callback.IScanPathCallback";
        public static final int TRANSACTION_onScanPathFinish = 1;

        public static class Proxy implements IScanPathCallback {
            public static IScanPathCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.mediacenter.callback.IScanPathCallback
            public void onScanPathFinish(int source, List<MusicFileData> musicFileDataList) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeTypedList(musicFileDataList);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onScanPathFinish(source, musicFileDataList);
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

        public static IScanPathCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IScanPathCallback)) ? new Proxy(obj) : (IScanPathCallback) iInterfaceQueryLocalInterface;
        }

        public static IScanPathCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IScanPathCallback impl) {
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
            onScanPathFinish(data.readInt(), data.createTypedArrayList(MusicFileData.CREATOR));
            reply.writeNoException();
            return true;
        }
    }

    void onScanPathFinish(int source, List<MusicFileData> musicFileDataList) throws RemoteException;
}
