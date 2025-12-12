package com.geely.lib.oneosapi.mediacenter;

import android.bluetooth.BluetoothDevice;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.os.ResultReceiver;
import com.geely.lib.oneosapi.mediacenter.bean.DeviceInfo;
import com.geely.lib.oneosapi.mediacenter.bean.MediaData;
import com.geely.lib.oneosapi.mediacenter.bean.MusicFileData;
import com.geely.lib.oneosapi.mediacenter.callback.IContentCallback;
import com.geely.lib.oneosapi.mediacenter.callback.IMusicListCallback;
import com.geely.lib.oneosapi.mediacenter.callback.IMusicQueryCallback;
import com.geely.lib.oneosapi.mediacenter.callback.ISearchSongCallback;
import com.geely.lib.oneosapi.mediacenter.callback.IUserInfoCallback;
import com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener;
import java.util.List;

/* loaded from: classes.dex */
public interface IMusicManager extends IInterface {

    public static class Default implements IMusicManager {
        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void addDeviceStateListener(int source, IDeviceStateListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void addFavor(int source, MediaData mediaData) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void addMediaStateListener(int source, IMediaStateListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void addMusicStateListener(int source, IMusicStateListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void addPsdMediaStateListener(int source, IMediaStateListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void addPsdMusicStateListener(int source, IMusicStateListener listener) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void cancelFavor(int source, MediaData mediaData) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void connectBtDevice(int source, String address) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void fastForward(int source, long time) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void fastRewind(int source, long time) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public boolean getBtState(int source) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public BluetoothDevice getConnectedDevice(int source) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void getContent(int source, String contentId, IContentCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public Bundle getCurrentMediaBundle(int source, int app, String key, Bundle args, ResultReceiver cb) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public MediaData getCurrentMediaData(int source) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public List<MusicFileData> getCurrentPathFiles(int source) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public int getCurrentPlayState(int source) throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public long getCurrentPosition(int source) throws RemoteException {
            return 0L;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public List<DeviceInfo> getDevicesInfo(int source) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public List<MediaData> getFavorList(int source) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void getOnlineUserInfoAsync(int source, int appSource, IUserInfoCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public List<MediaData> getPlayList(int source) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void getPlayListAsync(int source, IMusicListCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public int getPlayMode(int source) throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public List<String> getRecentlyAppSource(int source) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public boolean isAgreedUserProtocol(int source) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public boolean isMusicQualitySwitch(int source, int quality) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public int isSupportChangeMode(int source, int mode) throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void next(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public int notifyVrStatusNotifierStatus(int source, int value) throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public int onUIWordingTriggered(int source, String words) throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void openFavor(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void openHistory(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void openLoginPage(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void openLrcPage(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void openPlayList(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void pause(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void play(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void playContent(int source, int position, String content, int contentCode, boolean foreground) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void playFavor(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void playItem(int source, MediaData mediaData) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void playSearchSongByNameItem(int source, String name, int index) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void prev(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void replay(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void searchMediaForVR(int source, String json) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void searchSongByName(int source, String name) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void searchSongByNameAsync(int source, String name, ISearchSongCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void seekTo(int source, long time) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void semanticSearch(int source, String emotion, String theme, String style, String scene) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void semanticSearchAndPlay(int source, String type, List<String> typeValues, String song, boolean autoPlay, boolean forceForeground, String queryText, IMusicQueryCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void semanticSearchAsync(int source, String json, IMusicQueryCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void sendCommand(int source, int app, String command, Bundle args, ResultReceiver cb) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void setActiveBtDevice(int source, String address) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void setPlayMode(int source, int mode) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void startApp(int source) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void startAppTab(int source, String tab) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
        public void startScanPath(int source, String path) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IMusicManager {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.IMusicManager";
        public static final int TRANSACTION_addDeviceStateListener = 2;
        public static final int TRANSACTION_addFavor = 12;
        public static final int TRANSACTION_addMediaStateListener = 52;
        public static final int TRANSACTION_addMusicStateListener = 1;
        public static final int TRANSACTION_addPsdMediaStateListener = 53;
        public static final int TRANSACTION_addPsdMusicStateListener = 44;
        public static final int TRANSACTION_cancelFavor = 13;
        public static final int TRANSACTION_connectBtDevice = 24;
        public static final int TRANSACTION_fastForward = 9;
        public static final int TRANSACTION_fastRewind = 10;
        public static final int TRANSACTION_getBtState = 30;
        public static final int TRANSACTION_getConnectedDevice = 29;
        public static final int TRANSACTION_getContent = 35;
        public static final int TRANSACTION_getCurrentMediaBundle = 51;
        public static final int TRANSACTION_getCurrentMediaData = 17;
        public static final int TRANSACTION_getCurrentPathFiles = 23;
        public static final int TRANSACTION_getCurrentPlayState = 15;
        public static final int TRANSACTION_getCurrentPosition = 16;
        public static final int TRANSACTION_getDevicesInfo = 18;
        public static final int TRANSACTION_getFavorList = 14;
        public static final int TRANSACTION_getOnlineUserInfoAsync = 26;
        public static final int TRANSACTION_getPlayList = 11;
        public static final int TRANSACTION_getPlayListAsync = 43;
        public static final int TRANSACTION_getPlayMode = 21;
        public static final int TRANSACTION_getRecentlyAppSource = 34;
        public static final int TRANSACTION_isAgreedUserProtocol = 55;
        public static final int TRANSACTION_isMusicQualitySwitch = 56;
        public static final int TRANSACTION_isSupportChangeMode = 54;
        public static final int TRANSACTION_next = 7;
        public static final int TRANSACTION_notifyVrStatusNotifierStatus = 57;
        public static final int TRANSACTION_onUIWordingTriggered = 50;
        public static final int TRANSACTION_openFavor = 32;
        public static final int TRANSACTION_openHistory = 33;
        public static final int TRANSACTION_openLoginPage = 45;
        public static final int TRANSACTION_openLrcPage = 47;
        public static final int TRANSACTION_openPlayList = 38;
        public static final int TRANSACTION_pause = 5;
        public static final int TRANSACTION_play = 4;
        public static final int TRANSACTION_playContent = 36;
        public static final int TRANSACTION_playFavor = 39;
        public static final int TRANSACTION_playItem = 3;
        public static final int TRANSACTION_playSearchSongByNameItem = 28;
        public static final int TRANSACTION_prev = 6;
        public static final int TRANSACTION_replay = 46;
        public static final int TRANSACTION_searchMediaForVR = 37;
        public static final int TRANSACTION_searchSongByName = 27;
        public static final int TRANSACTION_searchSongByNameAsync = 31;
        public static final int TRANSACTION_seekTo = 8;
        public static final int TRANSACTION_semanticSearch = 41;
        public static final int TRANSACTION_semanticSearchAndPlay = 48;
        public static final int TRANSACTION_semanticSearchAsync = 42;
        public static final int TRANSACTION_sendCommand = 49;
        public static final int TRANSACTION_setActiveBtDevice = 25;
        public static final int TRANSACTION_setPlayMode = 20;
        public static final int TRANSACTION_startApp = 19;
        public static final int TRANSACTION_startAppTab = 40;
        public static final int TRANSACTION_startScanPath = 22;

        public static class Proxy implements IMusicManager {
            public static IMusicManager sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void addDeviceStateListener(int source, IDeviceStateListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addDeviceStateListener(source, listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void addFavor(int source, MediaData mediaData) throws RemoteException {
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
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addFavor(source, mediaData);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void addMediaStateListener(int source, IMediaStateListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(52, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addMediaStateListener(source, listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void addMusicStateListener(int source, IMusicStateListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addMusicStateListener(source, listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void addPsdMediaStateListener(int source, IMediaStateListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(53, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addPsdMediaStateListener(source, listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void addPsdMusicStateListener(int source, IMusicStateListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(44, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addPsdMusicStateListener(source, listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void cancelFavor(int source, MediaData mediaData) throws RemoteException {
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
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().cancelFavor(source, mediaData);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void connectBtDevice(int source, String address) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(address);
                    if (this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().connectBtDevice(source, address);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void fastForward(int source, long time) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeLong(time);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().fastForward(source, time);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void fastRewind(int source, long time) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeLong(time);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().fastRewind(source, time);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public boolean getBtState(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBtState(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public BluetoothDevice getConnectedDevice(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getConnectedDevice(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (BluetoothDevice) BluetoothDevice.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void getContent(int source, String contentId, IContentCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(contentId);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getContent(source, contentId, callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public Bundle getCurrentMediaBundle(int source, int app, String key, Bundle args, ResultReceiver cb) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    parcelObtain.writeString(key);
                    if (args != null) {
                        parcelObtain.writeInt(1);
                        args.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (cb != null) {
                        parcelObtain.writeInt(1);
                        cb.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(51, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentMediaBundle(source, app, key, args, cb);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public MediaData getCurrentMediaData(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentMediaData(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? MediaData.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public List<MusicFileData> getCurrentPathFiles(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentPathFiles(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(MusicFileData.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public int getCurrentPlayState(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentPlayState(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public long getCurrentPosition(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentPosition(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public List<DeviceInfo> getDevicesInfo(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getDevicesInfo(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(DeviceInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public List<MediaData> getFavorList(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getFavorList(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(MediaData.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void getOnlineUserInfoAsync(int source, int appSource, IUserInfoCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(appSource);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getOnlineUserInfoAsync(source, appSource, callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public List<MediaData> getPlayList(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPlayList(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(MediaData.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void getPlayListAsync(int source, IMusicListCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(43, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getPlayListAsync(source, callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public int getPlayMode(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPlayMode(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public List<String> getRecentlyAppSource(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(34, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRecentlyAppSource(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public boolean isAgreedUserProtocol(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (!this.mRemote.transact(55, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isAgreedUserProtocol(source);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public boolean isMusicQualitySwitch(int source, int quality) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(quality);
                    if (!this.mRemote.transact(56, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isMusicQualitySwitch(source, quality);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public int isSupportChangeMode(int source, int mode) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(mode);
                    if (!this.mRemote.transact(54, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isSupportChangeMode(source, mode);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void next(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().next(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public int notifyVrStatusNotifierStatus(int source, int value) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(value);
                    if (!this.mRemote.transact(57, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().notifyVrStatusNotifierStatus(source, value);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public int onUIWordingTriggered(int source, String words) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(words);
                    if (!this.mRemote.transact(50, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onUIWordingTriggered(source, words);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void openFavor(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().openFavor(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void openHistory(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(33, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().openHistory(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void openLoginPage(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(45, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().openLoginPage(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void openLrcPage(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(47, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().openLrcPage(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void openPlayList(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(38, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().openPlayList(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void pause(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().pause(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void play(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().play(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void playContent(int i, int i2, String str, int i3, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().playContent(i, i2, str, i3, z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void playFavor(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().playFavor(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void playItem(int source, MediaData mediaData) throws RemoteException {
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
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().playItem(source, mediaData);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void playSearchSongByNameItem(int source, String name, int index) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(name);
                    parcelObtain.writeInt(index);
                    if (this.mRemote.transact(28, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().playSearchSongByNameItem(source, name, index);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void prev(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().prev(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void replay(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(46, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().replay(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void searchMediaForVR(int source, String json) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(json);
                    if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().searchMediaForVR(source, json);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void searchSongByName(int source, String name) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(name);
                    if (this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().searchSongByName(source, name);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void searchSongByNameAsync(int source, String name, ISearchSongCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(name);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().searchSongByNameAsync(source, name, callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void seekTo(int source, long time) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeLong(time);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().seekTo(source, time);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void semanticSearch(int source, String emotion, String theme, String style, String scene) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(emotion);
                    parcelObtain.writeString(theme);
                    parcelObtain.writeString(style);
                    parcelObtain.writeString(scene);
                    if (this.mRemote.transact(41, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().semanticSearch(source, emotion, theme, style, scene);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void semanticSearchAndPlay(int i, String str, List<String> list, String str2, boolean z, boolean z2, String str3, IMusicQueryCallback iMusicQueryCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStringList(list);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeStrongBinder(iMusicQueryCallback != null ? iMusicQueryCallback.asBinder() : null);
                    if (this.mRemote.transact(48, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().semanticSearchAndPlay(i, str, list, str2, z, z2, str3, iMusicQueryCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void semanticSearchAsync(int source, String json, IMusicQueryCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(json);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(42, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().semanticSearchAsync(source, json, callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void sendCommand(int source, int app, String command, Bundle args, ResultReceiver cb) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(app);
                    parcelObtain.writeString(command);
                    if (args != null) {
                        parcelObtain.writeInt(1);
                        args.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (cb != null) {
                        parcelObtain.writeInt(1);
                        cb.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(49, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendCommand(source, app, command, args, cb);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void setActiveBtDevice(int source, String address) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(address);
                    if (this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setActiveBtDevice(source, address);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void setPlayMode(int source, int mode) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeInt(mode);
                    if (this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setPlayMode(source, mode);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void startApp(int source) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    if (this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().startApp(source);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void startAppTab(int source, String tab) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(tab);
                    if (this.mRemote.transact(40, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().startAppTab(source, tab);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMusicManager
            public void startScanPath(int source, String path) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(source);
                    parcelObtain.writeString(path);
                    if (this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().startScanPath(source, path);
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

        public static IMusicManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMusicManager)) ? new Proxy(obj) : (IMusicManager) iInterfaceQueryLocalInterface;
        }

        public static IMusicManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IMusicManager impl) {
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
                    addMusicStateListener(parcel.readInt(), IMusicStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    addDeviceStateListener(parcel.readInt(), IDeviceStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    playItem(parcel.readInt(), parcel.readInt() != 0 ? MediaData.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    play(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    pause(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    prev(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    next(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    seekTo(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    fastForward(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    fastRewind(parcel.readInt(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<MediaData> playList = getPlayList(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(playList);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    addFavor(parcel.readInt(), parcel.readInt() != 0 ? MediaData.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelFavor(parcel.readInt(), parcel.readInt() != 0 ? MediaData.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<MediaData> favorList = getFavorList(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(favorList);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentPlayState = getCurrentPlayState(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(currentPlayState);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    long currentPosition = getCurrentPosition(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(currentPosition);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    MediaData currentMediaData = getCurrentMediaData(parcel.readInt());
                    parcel2.writeNoException();
                    if (currentMediaData != null) {
                        parcel2.writeInt(1);
                        currentMediaData.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<DeviceInfo> devicesInfo = getDevicesInfo(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(devicesInfo);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    startApp(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPlayMode(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int playMode = getPlayMode(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(playMode);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    startScanPath(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<MusicFileData> currentPathFiles = getCurrentPathFiles(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeTypedList(currentPathFiles);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    connectBtDevice(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    setActiveBtDevice(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    getOnlineUserInfoAsync(parcel.readInt(), parcel.readInt(), IUserInfoCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    searchSongByName(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    playSearchSongByNameItem(parcel.readInt(), parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    BluetoothDevice connectedDevice = getConnectedDevice(parcel.readInt());
                    parcel2.writeNoException();
                    if (connectedDevice != null) {
                        parcel2.writeInt(1);
                        connectedDevice.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean btState = getBtState(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(btState ? 1 : 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    searchSongByNameAsync(parcel.readInt(), parcel.readString(), ISearchSongCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    openFavor(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    openHistory(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<String> recentlyAppSource = getRecentlyAppSource(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeStringList(recentlyAppSource);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    getContent(parcel.readInt(), parcel.readString(), IContentCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    playContent(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    searchMediaForVR(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    openPlayList(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    playFavor(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    startAppTab(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    semanticSearch(parcel.readInt(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    semanticSearchAsync(parcel.readInt(), parcel.readString(), IMusicQueryCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    getPlayListAsync(parcel.readInt(), IMusicListCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    addPsdMusicStateListener(parcel.readInt(), IMusicStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    openLoginPage(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    replay(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    openLrcPage(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    semanticSearchAndPlay(parcel.readInt(), parcel.readString(), parcel.createStringArrayList(), parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0, parcel.readString(), IMusicQueryCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendCommand(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iOnUIWordingTriggered = onUIWordingTriggered(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(iOnUIWordingTriggered);
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    Bundle currentMediaBundle = getCurrentMediaBundle(parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (ResultReceiver) ResultReceiver.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (currentMediaBundle != null) {
                        parcel2.writeInt(1);
                        currentMediaBundle.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    addMediaStateListener(parcel.readInt(), IMediaStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    addPsdMediaStateListener(parcel.readInt(), IMediaStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iIsSupportChangeMode = isSupportChangeMode(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iIsSupportChangeMode);
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsAgreedUserProtocol = isAgreedUserProtocol(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAgreedUserProtocol ? 1 : 0);
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsMusicQualitySwitch = isMusicQualitySwitch(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsMusicQualitySwitch ? 1 : 0);
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iNotifyVrStatusNotifierStatus = notifyVrStatusNotifierStatus(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iNotifyVrStatusNotifierStatus);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void addDeviceStateListener(int source, IDeviceStateListener listener) throws RemoteException;

    void addFavor(int source, MediaData mediaData) throws RemoteException;

    void addMediaStateListener(int source, IMediaStateListener listener) throws RemoteException;

    void addMusicStateListener(int source, IMusicStateListener listener) throws RemoteException;

    void addPsdMediaStateListener(int source, IMediaStateListener listener) throws RemoteException;

    void addPsdMusicStateListener(int source, IMusicStateListener listener) throws RemoteException;

    void cancelFavor(int source, MediaData mediaData) throws RemoteException;

    void connectBtDevice(int source, String address) throws RemoteException;

    void fastForward(int source, long time) throws RemoteException;

    void fastRewind(int source, long time) throws RemoteException;

    boolean getBtState(int source) throws RemoteException;

    BluetoothDevice getConnectedDevice(int source) throws RemoteException;

    void getContent(int source, String contentId, IContentCallback callback) throws RemoteException;

    Bundle getCurrentMediaBundle(int source, int app, String key, Bundle args, ResultReceiver cb) throws RemoteException;

    MediaData getCurrentMediaData(int source) throws RemoteException;

    List<MusicFileData> getCurrentPathFiles(int source) throws RemoteException;

    int getCurrentPlayState(int source) throws RemoteException;

    long getCurrentPosition(int source) throws RemoteException;

    List<DeviceInfo> getDevicesInfo(int source) throws RemoteException;

    List<MediaData> getFavorList(int source) throws RemoteException;

    void getOnlineUserInfoAsync(int source, int appSource, IUserInfoCallback callback) throws RemoteException;

    List<MediaData> getPlayList(int source) throws RemoteException;

    void getPlayListAsync(int source, IMusicListCallback callback) throws RemoteException;

    int getPlayMode(int source) throws RemoteException;

    List<String> getRecentlyAppSource(int source) throws RemoteException;

    boolean isAgreedUserProtocol(int source) throws RemoteException;

    boolean isMusicQualitySwitch(int source, int quality) throws RemoteException;

    int isSupportChangeMode(int source, int mode) throws RemoteException;

    void next(int source) throws RemoteException;

    int notifyVrStatusNotifierStatus(int source, int value) throws RemoteException;

    int onUIWordingTriggered(int source, String words) throws RemoteException;

    void openFavor(int source) throws RemoteException;

    void openHistory(int source) throws RemoteException;

    void openLoginPage(int source) throws RemoteException;

    void openLrcPage(int source) throws RemoteException;

    void openPlayList(int source) throws RemoteException;

    void pause(int source) throws RemoteException;

    void play(int source) throws RemoteException;

    void playContent(int source, int position, String content, int contentCode, boolean foreground) throws RemoteException;

    void playFavor(int source) throws RemoteException;

    void playItem(int source, MediaData mediaData) throws RemoteException;

    void playSearchSongByNameItem(int source, String name, int index) throws RemoteException;

    void prev(int source) throws RemoteException;

    void replay(int source) throws RemoteException;

    void searchMediaForVR(int source, String json) throws RemoteException;

    void searchSongByName(int source, String name) throws RemoteException;

    void searchSongByNameAsync(int source, String name, ISearchSongCallback callback) throws RemoteException;

    void seekTo(int source, long time) throws RemoteException;

    void semanticSearch(int source, String emotion, String theme, String style, String scene) throws RemoteException;

    void semanticSearchAndPlay(int source, String type, List<String> typeValues, String song, boolean autoPlay, boolean forceForeground, String queryText, IMusicQueryCallback callback) throws RemoteException;

    void semanticSearchAsync(int source, String json, IMusicQueryCallback callback) throws RemoteException;

    void sendCommand(int source, int app, String command, Bundle args, ResultReceiver cb) throws RemoteException;

    void setActiveBtDevice(int source, String address) throws RemoteException;

    void setPlayMode(int source, int mode) throws RemoteException;

    void startApp(int source) throws RemoteException;

    void startAppTab(int source, String tab) throws RemoteException;

    void startScanPath(int source, String path) throws RemoteException;
}
