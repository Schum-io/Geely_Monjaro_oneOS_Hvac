package com.geely.lib.oneosapi.mediacenter.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.bean.MediaData;
import java.util.List;

/* loaded from: classes.dex */
public interface IMusicStateListener extends IInterface {

    public static class Default implements IMusicStateListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onFavorStateChanged(int source, MediaData mediaData) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onLrcLoad(int source, String lrc, long time) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onMediaDataChanged(int source, MediaData mediaData) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onPlayListChanged(int source, List<MediaData> list) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onPlayModeChange(int source, int mode) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onPlayPositionChanged(int source, long current, long total) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onPlayStateChanged(int source, int state) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IMusicStateListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener";
        public static final int TRANSACTION_onFavorStateChanged = 5;
        public static final int TRANSACTION_onLrcLoad = 6;
        public static final int TRANSACTION_onMediaDataChanged = 1;
        public static final int TRANSACTION_onPlayListChanged = 4;
        public static final int TRANSACTION_onPlayModeChange = 7;
        public static final int TRANSACTION_onPlayPositionChanged = 2;
        public static final int TRANSACTION_onPlayStateChanged = 3;

        public static class Proxy implements IMusicStateListener {
            public static IMusicStateListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
            public void onFavorStateChanged(int source, MediaData mediaData) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (mediaData != null) {
                        parcelObtain.writeInt(1);
                        mediaData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onFavorStateChanged(source, mediaData);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
            public void onLrcLoad(int source, String lrc, long time) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(lrc);
                    parcelObtain.writeLong(time);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onLrcLoad(source, lrc, time);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
            public void onMediaDataChanged(int source, MediaData mediaData) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (mediaData != null) {
                        parcelObtain.writeInt(1);
                        mediaData.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onMediaDataChanged(source, mediaData);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
            public void onPlayListChanged(int source, List<MediaData> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeTypedList(list);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPlayListChanged(source, list);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
            public void onPlayModeChange(int source, int mode) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(mode);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPlayModeChange(source, mode);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
            public void onPlayPositionChanged(int source, long current, long total) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeLong(current);
                    parcelObtain.writeLong(total);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPlayPositionChanged(source, current, total);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
            public void onPlayStateChanged(int source, int state) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(state);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPlayStateChanged(source, state);
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

        public static IMusicStateListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMusicStateListener)) ? new Proxy(obj) : (IMusicStateListener) iInterfaceQueryLocalInterface;
        }

        public static IMusicStateListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IMusicStateListener impl) {
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
                    onMediaDataChanged(data.readInt(), data.readInt() != 0 ? MediaData.CREATOR.createFromParcel(data) : null);
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    onPlayPositionChanged(data.readInt(), data.readLong(), data.readLong());
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    onPlayStateChanged(data.readInt(), data.readInt());
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    onPlayListChanged(data.readInt(), data.createTypedArrayList(MediaData.CREATOR));
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    onFavorStateChanged(data.readInt(), data.readInt() != 0 ? MediaData.CREATOR.createFromParcel(data) : null);
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    onLrcLoad(data.readInt(), data.readString(), data.readLong());
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    onPlayModeChange(data.readInt(), data.readInt());
                    reply.writeNoException();
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void onFavorStateChanged(int source, MediaData mediaData) throws RemoteException;

    void onLrcLoad(int source, String lrc, long time) throws RemoteException;

    void onMediaDataChanged(int source, MediaData mediaData) throws RemoteException;

    void onPlayListChanged(int source, List<MediaData> list) throws RemoteException;

    void onPlayModeChange(int source, int mode) throws RemoteException;

    void onPlayPositionChanged(int source, long current, long total) throws RemoteException;

    void onPlayStateChanged(int source, int state) throws RemoteException;
}
