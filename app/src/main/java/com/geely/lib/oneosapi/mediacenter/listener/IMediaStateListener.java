package com.geely.lib.oneosapi.mediacenter.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.bean.MediaData;
import java.util.List;

/* loaded from: classes.dex */
public interface IMediaStateListener extends IInterface {

    public static class Default implements IMediaStateListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onFavorStateChanged(int source, int app, MediaData mediaData) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onLrcLoad(int source, int app, String lrc, long time) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onMediaDataChanged(int source, int app, MediaData mediaData) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onPlayListChanged(int source, int app, List<MediaData> list) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onPlayModeChange(int source, int app, int mode) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onPlayPositionChanged(int source, int app, long current, long total) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onPlayStateChanged(int source, int app, int state) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IMediaStateListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener";
        public static final int TRANSACTION_onFavorStateChanged = 5;
        public static final int TRANSACTION_onLrcLoad = 6;
        public static final int TRANSACTION_onMediaDataChanged = 1;
        public static final int TRANSACTION_onPlayListChanged = 4;
        public static final int TRANSACTION_onPlayModeChange = 7;
        public static final int TRANSACTION_onPlayPositionChanged = 2;
        public static final int TRANSACTION_onPlayStateChanged = 3;

        public static class Proxy implements IMediaStateListener {
            public static IMediaStateListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
            public void onFavorStateChanged(int source, int app, MediaData mediaData) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    if (mediaData != null) {
                        parcelObtain.writeInt(1);
                        mediaData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onFavorStateChanged(source, app, mediaData);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
            public void onLrcLoad(int source, int app, String lrc, long time) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    parcelObtain.writeString(lrc);
                    parcelObtain.writeLong(time);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onLrcLoad(source, app, lrc, time);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
            public void onMediaDataChanged(int source, int app, MediaData mediaData) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    if (mediaData != null) {
                        parcelObtain.writeInt(1);
                        mediaData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onMediaDataChanged(source, app, mediaData);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
            public void onPlayListChanged(int source, int app, List<MediaData> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    parcelObtain.writeTypedList(list);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPlayListChanged(source, app, list);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
            public void onPlayModeChange(int source, int app, int mode) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    parcelObtain.writeInt(mode);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPlayModeChange(source, app, mode);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
            public void onPlayPositionChanged(int source, int app, long current, long total) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    parcelObtain.writeLong(current);
                    parcelObtain.writeLong(total);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPlayPositionChanged(source, app, current, total);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
            public void onPlayStateChanged(int source, int app, int state) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    parcelObtain.writeInt(state);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPlayStateChanged(source, app, state);
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

        public static IMediaStateListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMediaStateListener)) ? new Proxy(obj) : (IMediaStateListener) iInterfaceQueryLocalInterface;
        }

        public static IMediaStateListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IMediaStateListener impl) {
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
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    onMediaDataChanged(data.readInt(), data.readInt(), data.readInt() != 0 ? MediaData.CREATOR.createFromParcel(data) : null);
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    onPlayPositionChanged(data.readInt(), data.readInt(), data.readLong(), data.readLong());
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    onPlayStateChanged(data.readInt(), data.readInt(), data.readInt());
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    onPlayListChanged(data.readInt(), data.readInt(), data.createTypedArrayList(MediaData.CREATOR));
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    onFavorStateChanged(data.readInt(), data.readInt(), data.readInt() != 0 ? MediaData.CREATOR.createFromParcel(data) : null);
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    onLrcLoad(data.readInt(), data.readInt(), data.readString(), data.readLong());
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    onPlayModeChange(data.readInt(), data.readInt(), data.readInt());
                    reply.writeNoException();
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void onFavorStateChanged(int source, int app, MediaData mediaData) throws RemoteException;

    void onLrcLoad(int source, int app, String lrc, long time) throws RemoteException;

    void onMediaDataChanged(int source, int app, MediaData mediaData) throws RemoteException;

    void onPlayListChanged(int source, int app, List<MediaData> list) throws RemoteException;

    void onPlayModeChange(int source, int app, int mode) throws RemoteException;

    void onPlayPositionChanged(int source, int app, long current, long total) throws RemoteException;

    void onPlayStateChanged(int source, int app, int state) throws RemoteException;
}
