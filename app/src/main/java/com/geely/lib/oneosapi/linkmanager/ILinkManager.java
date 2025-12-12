package com.geely.lib.oneosapi.linkmanager;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.linkmanager.ILinkListener;
import com.geely.lib.oneosapi.linkmanager.IModemCallStateListener;
import com.geely.lib.oneosapi.linkmanager.IMusicStateListener;
import com.geely.lib.oneosapi.linkmanager.ITryConnectCallback;

/* loaded from: classes.dex */
public interface ILinkManager extends IInterface {

    public static class Default implements ILinkManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void fastBackward() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void fastForward() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public int getConnectedSessionBrand() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public int getConnectedSessionType() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public boolean isSessionConnected() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public boolean isSourceActivated() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void next() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void play() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void previous() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void registerListener(ILinkListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void registerModemCallStateListener(IModemCallStateListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void registerMusicStateListener(IMusicStateListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void sessionConnected(int brand, int type) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void sessionDisconnected(int brand, int type) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void setModemCallState(int state) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void setMusicInfo(String artistName, String albumName, String coverArt, String lyrics, long totalTimesMs, String title, String authorName, String writerName, String composerName, int playingCurrentTimeMs, boolean isFavorite, boolean isPlaying) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void stop() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void tryConnect(int brand, int type, ITryConnectCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void unregisterListener(ILinkListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void unregisterModemCallStateListener(IModemCallStateListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void unregisterMusicStateListener(IMusicStateListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
        public void updatePlayState(int state, int brand) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ILinkManager {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.linkmanager.ILinkManager";
        public static final int TRANSACTION_fastBackward = 16;
        public static final int TRANSACTION_fastForward = 15;
        public static final int TRANSACTION_getConnectedSessionBrand = 4;
        public static final int TRANSACTION_getConnectedSessionType = 5;
        public static final int TRANSACTION_isSessionConnected = 3;
        public static final int TRANSACTION_isSourceActivated = 10;
        public static final int TRANSACTION_next = 13;
        public static final int TRANSACTION_play = 11;
        public static final int TRANSACTION_previous = 14;
        public static final int TRANSACTION_registerListener = 6;
        public static final int TRANSACTION_registerModemCallStateListener = 19;
        public static final int TRANSACTION_registerMusicStateListener = 21;
        public static final int TRANSACTION_sessionConnected = 1;
        public static final int TRANSACTION_sessionDisconnected = 2;
        public static final int TRANSACTION_setModemCallState = 18;
        public static final int TRANSACTION_setMusicInfo = 17;
        public static final int TRANSACTION_stop = 12;
        public static final int TRANSACTION_tryConnect = 8;
        public static final int TRANSACTION_unregisterListener = 7;
        public static final int TRANSACTION_unregisterModemCallStateListener = 20;
        public static final int TRANSACTION_unregisterMusicStateListener = 22;
        public static final int TRANSACTION_updatePlayState = 9;

        public static class Proxy implements ILinkManager {
            public static ILinkManager sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void fastBackward() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().fastBackward();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void fastForward() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().fastForward();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public int getConnectedSessionBrand() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getConnectedSessionBrand();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public int getConnectedSessionType() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getConnectedSessionType();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public boolean isSessionConnected() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isSessionConnected();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public boolean isSourceActivated() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isSourceActivated();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void next() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().next();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void play() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().play();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void previous() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().previous();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void registerListener(ILinkListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void registerModemCallStateListener(IModemCallStateListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerModemCallStateListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void registerMusicStateListener(IMusicStateListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerMusicStateListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void sessionConnected(int brand, int type) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(brand);
                    parcelObtain.writeInt(type);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sessionConnected(brand, type);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void sessionDisconnected(int brand, int type) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(brand);
                    parcelObtain.writeInt(type);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sessionDisconnected(brand, type);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void setModemCallState(int state) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(state);
                    if (this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setModemCallState(state);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void setMusicInfo(String str, String str2, String str3, String str4, long j, String str5, String str6, String str7, String str8, int i, boolean z, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeString(str4);
                    parcelObtain.writeLong(j);
                    parcelObtain.writeString(str5);
                    parcelObtain.writeString(str6);
                    parcelObtain.writeString(str7);
                    parcelObtain.writeString(str8);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setMusicInfo(str, str2, str3, str4, j, str5, str6, str7, str8, i, z, z2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void stop() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().stop();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void tryConnect(int brand, int type, ITryConnectCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(brand);
                    parcelObtain.writeInt(type);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().tryConnect(brand, type, callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void unregisterListener(ILinkListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void unregisterModemCallStateListener(IModemCallStateListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterModemCallStateListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void unregisterMusicStateListener(IMusicStateListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterMusicStateListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.linkmanager.ILinkManager
            public void updatePlayState(int state, int brand) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(state);
                    parcelObtain.writeInt(brand);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().updatePlayState(state, brand);
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

        public static ILinkManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ILinkManager)) ? new Proxy(obj) : (ILinkManager) iInterfaceQueryLocalInterface;
        }

        public static ILinkManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ILinkManager impl) {
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
                    sessionConnected(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    sessionDisconnected(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSessionConnected = isSessionConnected();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSessionConnected ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    int connectedSessionBrand = getConnectedSessionBrand();
                    parcel2.writeNoException();
                    parcel2.writeInt(connectedSessionBrand);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int connectedSessionType = getConnectedSessionType();
                    parcel2.writeNoException();
                    parcel2.writeInt(connectedSessionType);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerListener(ILinkListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterListener(ILinkListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    tryConnect(parcel.readInt(), parcel.readInt(), ITryConnectCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    updatePlayState(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsSourceActivated = isSourceActivated();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsSourceActivated ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    play();
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    stop();
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    next();
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    previous();
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    fastForward();
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    fastBackward();
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMusicInfo(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readLong(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    setModemCallState(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerModemCallStateListener(IModemCallStateListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterModemCallStateListener(IModemCallStateListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMusicStateListener(IMusicStateListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterMusicStateListener(IMusicStateListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void fastBackward() throws RemoteException;

    void fastForward() throws RemoteException;

    int getConnectedSessionBrand() throws RemoteException;

    int getConnectedSessionType() throws RemoteException;

    boolean isSessionConnected() throws RemoteException;

    boolean isSourceActivated() throws RemoteException;

    void next() throws RemoteException;

    void play() throws RemoteException;

    void previous() throws RemoteException;

    void registerListener(ILinkListener listener, String packageName) throws RemoteException;

    void registerModemCallStateListener(IModemCallStateListener listener, String packageName) throws RemoteException;

    void registerMusicStateListener(IMusicStateListener listener, String packageName) throws RemoteException;

    void sessionConnected(int brand, int type) throws RemoteException;

    void sessionDisconnected(int brand, int type) throws RemoteException;

    void setModemCallState(int state) throws RemoteException;

    void setMusicInfo(String artistName, String albumName, String coverArt, String lyrics, long totalTimesMs, String title, String authorName, String writerName, String composerName, int playingCurrentTimeMs, boolean isFavorite, boolean isPlaying) throws RemoteException;

    void stop() throws RemoteException;

    void tryConnect(int brand, int type, ITryConnectCallback callback) throws RemoteException;

    void unregisterListener(ILinkListener listener, String packageName) throws RemoteException;

    void unregisterModemCallStateListener(IModemCallStateListener listener, String packageName) throws RemoteException;

    void unregisterMusicStateListener(IMusicStateListener listener, String packageName) throws RemoteException;

    void updatePlayState(int state, int brand) throws RemoteException;
}
