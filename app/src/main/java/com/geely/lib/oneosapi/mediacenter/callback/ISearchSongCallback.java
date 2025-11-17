package com.geely.lib.oneosapi.mediacenter.callback;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.bean.SearchResult;
import java.util.List;

/* loaded from: classes.dex */
public interface ISearchSongCallback extends IInterface {

    public static class Default implements ISearchSongCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.callback.ISearchSongCallback
        public void onSearchSongResult(int source, int app, List<SearchResult> searchResults) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ISearchSongCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.callback.ISearchSongCallback";
        public static final int TRANSACTION_onSearchSongResult = 1;

        public static class Proxy implements ISearchSongCallback {
            public static ISearchSongCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.mediacenter.callback.ISearchSongCallback
            public void onSearchSongResult(int source, int app, List<SearchResult> searchResults) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    parcelObtain.writeTypedList(searchResults);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSearchSongResult(source, app, searchResults);
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

        public static ISearchSongCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISearchSongCallback)) ? new Proxy(obj) : (ISearchSongCallback) iInterfaceQueryLocalInterface;
        }

        public static ISearchSongCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISearchSongCallback impl) {
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
            onSearchSongResult(data.readInt(), data.readInt(), data.createTypedArrayList(SearchResult.CREATOR));
            reply.writeNoException();
            return true;
        }
    }

    void onSearchSongResult(int source, int app, List<SearchResult> searchResults) throws RemoteException;
}
