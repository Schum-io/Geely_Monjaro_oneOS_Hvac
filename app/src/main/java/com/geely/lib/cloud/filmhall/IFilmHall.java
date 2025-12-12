package com.geely.lib.cloud.filmhall;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;

/* loaded from: classes.dex */
public interface IFilmHall extends IInterface {

    public static class Default implements IFilmHall {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.filmhall.IFilmHall
        public void getDailyRecommend(String vipType, String passportId, String channelList, String currentPage, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.filmhall.IFilmHall
        public void getRankCharts(ICloudCallback callback) throws RemoteException {
        }
    }

    void getDailyRecommend(String vipType, String passportId, String channelList, String currentPage, ICloudCallback callback) throws RemoteException;

    void getRankCharts(ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IFilmHall {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.filmhall.IFilmHall";
        static final int TRANSACTION_getDailyRecommend = 1;
        static final int TRANSACTION_getRankCharts = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IFilmHall asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IFilmHall)) {
                return (IFilmHall) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                getDailyRecommend(data.readString(), data.readString(), data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                getRankCharts(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static class Proxy implements IFilmHall {
            public static IFilmHall sDefaultImpl;
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

            @Override // com.geely.lib.cloud.filmhall.IFilmHall
            public void getDailyRecommend(String vipType, String passportId, String channelList, String currentPage, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(vipType);
                    parcelObtain.writeString(passportId);
                    parcelObtain.writeString(channelList);
                    parcelObtain.writeString(currentPage);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDailyRecommend(vipType, passportId, channelList, currentPage, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.filmhall.IFilmHall
            public void getRankCharts(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getRankCharts(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IFilmHall impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IFilmHall getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
