package com.geely.lib.oneosapi.mediacenter.base;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.util.Log;
import com.geely.lib.oneosapi.mediacenter.IMusicManager;
import com.geely.lib.oneosapi.mediacenter.MediaCenterManager;
import com.geely.lib.oneosapi.mediacenter.bean.DeviceInfo;
import com.geely.lib.oneosapi.mediacenter.bean.MediaData;
import com.geely.lib.oneosapi.mediacenter.bean.MusicFileData;
import com.geely.lib.oneosapi.mediacenter.bean.OnlineUserInfo;
import com.geely.lib.oneosapi.mediacenter.bean.SearchResult;
import com.geely.lib.oneosapi.mediacenter.callback.MusicListCallback;
import com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant;
import com.geely.lib.oneosapi.mediacenter.listener.DeviceStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.MediaStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.MusicStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.QueryUsbMediaListener;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public abstract class BaseMusicManager {
    public Context mContext;
    public final MediaCenterManager mMediaCenterManager;
    public IMusicManager mService;
    public final CopyOnWriteArrayList<DeviceStateListener> mDeviceStateListeners = new CopyOnWriteArrayList<>();
    public final CopyOnWriteArrayList<MusicStateListener> mMusicStateListeners = new CopyOnWriteArrayList<>();
    public final CopyOnWriteArrayList<MediaStateListener> mMediaStateListeners = new CopyOnWriteArrayList<>();
    public final CopyOnWriteArrayList<QueryUsbMediaListener> mQueryUsbMediaListener = new CopyOnWriteArrayList<>();
    private final DeviceStateListenerImpl mDeviceStateListenerImpl = new DeviceStateListenerImpl();
    private final MusicStateListenerImpl mMusicStateListenerImpl = new MusicStateListenerImpl(this);
    private final MusicStateListenerImpl mPsdMusicStateListenerImpl = new MusicStateListenerImpl(true);
    private final MediaStateListenerImpl mMediaStateListenerImpl = new MediaStateListenerImpl(this);
    private final MediaStateListenerImpl mPsdMediaStateListenerImpl = new MediaStateListenerImpl(true);
    private final String mTag = getClass().getSimpleName();
    private final Handler mHandler = new Handler(Looper.getMainLooper());

    public class DeviceStateListenerImpl extends IDeviceStateListener.Stub {
        public DeviceStateListenerImpl() {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onAppDied(final int app) throws RemoteException {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.DeviceStateListenerImpl.8
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<DeviceStateListener> it = BaseMusicManager.this.mDeviceStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onAppDied(MediaCenterConstant.getAppSourceEnum(app));
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onAppExistStateChanged(final int source, final int app, final boolean existed) throws RemoteException {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.DeviceStateListenerImpl.7
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<DeviceStateListener> it = BaseMusicManager.this.mDeviceStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onAppExistStateChanged(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getAppSourceEnum(app), existed);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onBluetoothDeviceChange(final int source, final List<DeviceInfo> deviceInfoList) throws RemoteException {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.DeviceStateListenerImpl.6
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<DeviceStateListener> it = BaseMusicManager.this.mDeviceStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onBluetoothDeviceChange(MediaCenterConstant.getAudioSourceEnum(source), deviceInfoList);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onDeviceError(final int source, final int error, final String errorMsg) throws RemoteException {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.DeviceStateListenerImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<DeviceStateListener> it = BaseMusicManager.this.mDeviceStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onDeviceError(MediaCenterConstant.getAudioSourceEnum(source), error, errorMsg);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onDeviceStateChanged(final int source, final int state, final DeviceInfo info) throws RemoteException {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.DeviceStateListenerImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<DeviceStateListener> it = BaseMusicManager.this.mDeviceStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onDeviceStateChanged(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getDeviceStateEnum(state), info);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onMediaQueryFinished(final int source, final DeviceInfo info) throws RemoteException {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.DeviceStateListenerImpl.10
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<QueryUsbMediaListener> it = BaseMusicManager.this.mQueryUsbMediaListener.iterator();
                    while (it.hasNext()) {
                        it.next().onMediaQueryFinished(MediaCenterConstant.getAudioSourceEnum(source), info);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onMediaQueryStarted(final int source, final DeviceInfo info) throws RemoteException {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.DeviceStateListenerImpl.9
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<QueryUsbMediaListener> it = BaseMusicManager.this.mQueryUsbMediaListener.iterator();
                    while (it.hasNext()) {
                        it.next().onMediaQueryStarted(MediaCenterConstant.getAudioSourceEnum(source), info);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onScanPathFinish(final int source, final List<MusicFileData> musicFileDataList) throws RemoteException {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.DeviceStateListenerImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<DeviceStateListener> it = BaseMusicManager.this.mDeviceStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onScanPathFinish(MediaCenterConstant.getAudioSourceEnum(source), musicFileDataList);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onSearchSongResult(final int source, final int app, final List<SearchResult> searchResults) throws RemoteException {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.DeviceStateListenerImpl.5
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<DeviceStateListener> it = BaseMusicManager.this.mDeviceStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onSearchSongResult(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getAppSourceEnum(app), searchResults);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IDeviceStateListener
        public void onUserInfoResult(final int source, final int app, final OnlineUserInfo userInfo) throws RemoteException {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.DeviceStateListenerImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<DeviceStateListener> it = BaseMusicManager.this.mDeviceStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onUserInfoResult(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getAppSourceEnum(app), userInfo);
                    }
                }
            });
        }
    }

    public class MediaStateListenerImpl extends IMediaStateListener.Stub {
        private final boolean isPsdCallback;

        public MediaStateListenerImpl(final BaseMusicManager this$0) {
            this(false);
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onFavorStateChanged(final int source, final int app, final MediaData mediaData) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MediaStateListenerImpl.5
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MediaStateListener> it = BaseMusicManager.this.mMediaStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onFavorStateChanged(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getAppSourceEnum(app), mediaData);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onLrcLoad(final int source, final int app, final String lrc, final long time) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MediaStateListenerImpl.6
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MediaStateListener> it = BaseMusicManager.this.mMediaStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onLrcLoad(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getAppSourceEnum(app), lrc, time);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onMediaDataChanged(final int source, final int app, final MediaData mediaData) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MediaStateListenerImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MediaStateListener> it = BaseMusicManager.this.mMediaStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onMediaDataChanged(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getAppSourceEnum(app), mediaData);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onPlayListChanged(final int source, final int app, final List<MediaData> list) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MediaStateListenerImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MediaStateListener> it = BaseMusicManager.this.mMediaStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onPlayListChanged(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getAppSourceEnum(app), list);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onPlayModeChange(final int source, final int app, final int mode) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            BaseMusicManager.this.mHandler.post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MediaStateListenerImpl.7
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MediaStateListener> it = BaseMusicManager.this.mMediaStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onPlayModeChange(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getAppSourceEnum(app), MediaCenterConstant.getPlayModeEnum(mode));
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onPlayPositionChanged(final int source, final int app, final long current, final long total) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MediaStateListenerImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MediaStateListener> it = BaseMusicManager.this.mMediaStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onPlayPositionChanged(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getAppSourceEnum(app), current, total);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMediaStateListener
        public void onPlayStateChanged(final int source, final int app, final int state) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MediaStateListenerImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MediaStateListener> it = BaseMusicManager.this.mMediaStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onPlayStateChanged(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getAppSourceEnum(app), MediaCenterConstant.getPlayStateEnum(state));
                    }
                }
            });
        }

        public MediaStateListenerImpl(boolean isPsdCallback) {
            this.isPsdCallback = isPsdCallback;
        }
    }

    @Deprecated
    public class MusicStateListenerImpl extends IMusicStateListener.Stub {
        private final boolean isPsdCallback;

        public MusicStateListenerImpl(final BaseMusicManager this$0) {
            this(false);
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onFavorStateChanged(final int source, final MediaData mediaData) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MusicStateListenerImpl.5
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MusicStateListener> it = BaseMusicManager.this.mMusicStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onFavorStateChanged(MediaCenterConstant.getAudioSourceEnum(source), mediaData);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onLrcLoad(final int source, final String lrc, final long time) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MusicStateListenerImpl.6
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MusicStateListener> it = BaseMusicManager.this.mMusicStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onLrcLoad(MediaCenterConstant.getAudioSourceEnum(source), lrc, time);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onMediaDataChanged(final int source, final MediaData mediaData) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MusicStateListenerImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MusicStateListener> it = BaseMusicManager.this.mMusicStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onMediaDataChanged(MediaCenterConstant.getAudioSourceEnum(source), mediaData);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onPlayListChanged(final int source, final List<MediaData> list) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MusicStateListenerImpl.4
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MusicStateListener> it = BaseMusicManager.this.mMusicStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onPlayListChanged(MediaCenterConstant.getAudioSourceEnum(source), list);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onPlayModeChange(final int source, final int mode) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            BaseMusicManager.this.mHandler.post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MusicStateListenerImpl.7
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MusicStateListener> it = BaseMusicManager.this.mMusicStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onPlayModeChange(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getPlayModeEnum(mode));
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onPlayPositionChanged(final int source, final long current, final long total) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MusicStateListenerImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MusicStateListener> it = BaseMusicManager.this.mMusicStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onPlayPositionChanged(MediaCenterConstant.getAudioSourceEnum(source), current, total);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IMusicStateListener
        public void onPlayStateChanged(final int source, final int state) throws RemoteException {
            if (this.isPsdCallback != BaseMusicManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager.MusicStateListenerImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    Iterator<MusicStateListener> it = BaseMusicManager.this.mMusicStateListeners.iterator();
                    while (it.hasNext()) {
                        it.next().onPlayStateChanged(MediaCenterConstant.getAudioSourceEnum(source), MediaCenterConstant.getPlayStateEnum(state));
                    }
                }
            });
        }

        public MusicStateListenerImpl(boolean isPsdCallback) {
            this.isPsdCallback = isPsdCallback;
        }
    }

    public BaseMusicManager(Context context, IMusicManager service, MediaCenterManager mediaCenterManager) {
        this.mContext = context;
        initService(service);
        this.mMediaCenterManager = mediaCenterManager;
    }

    public void addDeviceStateListener(DeviceStateListener listener) {
        if (listener == null || this.mDeviceStateListeners.contains(listener)) {
            return;
        }
        this.mDeviceStateListeners.add(listener);
    }

    public void addFavor(MediaData mediaData) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "addFavor: mService is null");
            return;
        }
        try {
            iMusicManager.addFavor(getAudioSource(), mediaData);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void addMediaStateListener(MediaStateListener listener) {
        if (listener == null || this.mMediaStateListeners.contains(listener)) {
            return;
        }
        this.mMediaStateListeners.add(listener);
    }

    @Deprecated
    public void addMusicStateListener(MusicStateListener listener) {
        if (listener == null || this.mMusicStateListeners.contains(listener)) {
            return;
        }
        this.mMusicStateListeners.add(listener);
    }

    public void addUsbMediaQueryListener(QueryUsbMediaListener listener) {
        if (listener == null || this.mQueryUsbMediaListener.contains(listener)) {
            return;
        }
        this.mQueryUsbMediaListener.add(listener);
    }

    public void cancelFavor(MediaData mediaData) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "cancelFavor: mService is null");
            return;
        }
        try {
            iMusicManager.cancelFavor(getAudioSource(), mediaData);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void fastForward(long time) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "fastForward: mService is null");
            return;
        }
        try {
            iMusicManager.fastForward(getAudioSource(), time);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void fastRewind(long time) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "fastRewind: mService is null");
            return;
        }
        try {
            iMusicManager.fastRewind(getAudioSource(), time);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public abstract int getAudioSource();

    public MediaCenterConstant.AppSource getCurrentAppSource() {
        return this.mMediaCenterManager.getCurrentAppSource();
    }

    public MediaCenterConstant.AudioSource getCurrentAudioSource() {
        return this.mMediaCenterManager.getCurrentAudioSource();
    }

    public Bundle getCurrentMediaBundle(MediaCenterConstant.AppSource appSource, String key, Bundle args, ResultReceiver cb) {
        if (appSource == null) {
            appSource = MediaCenterConstant.AppSource.UNKNOWN;
        }
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                return iMusicManager.getCurrentMediaBundle(getAudioSource(), appSource.ordinal(), key, args, cb);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } else {
            Log.w(this.mTag, "getCurrentMediaBundle: mService is null");
        }
        return Bundle.EMPTY;
    }

    public MediaData getCurrentMediaData() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "getCurrentMediaData: mService is null");
            return null;
        }
        try {
            return iMusicManager.getCurrentMediaData(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public MediaCenterConstant.PlayState getCurrentPlayState() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                return MediaCenterConstant.getPlayStateEnum(iMusicManager.getCurrentPlayState(getAudioSource()));
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } else {
            Log.w(this.mTag, "getCurrentPlayState: mService is null");
        }
        return MediaCenterConstant.PlayState.MUSIC_STATE_STOP;
    }

    public long getCurrentPosition() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "getCurrentPosition: mService is null");
            return 0L;
        }
        try {
            return iMusicManager.getCurrentPosition(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0L;
        }
    }

    public List<DeviceInfo> getDevicesInfo() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "getDevicesInfo: mService is null");
            return null;
        }
        try {
            return iMusicManager.getDevicesInfo(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public List<MediaData> getFavorList() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "getFavorList: mService is null");
            return null;
        }
        try {
            return iMusicManager.getFavorList(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Deprecated
    public List<MediaData> getPlayList() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "getPlayList: mService is null");
            return null;
        }
        try {
            return iMusicManager.getPlayList(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void getPlayListAsync(MusicListCallback callback) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "getPlayListAsync: mService is null");
            return;
        }
        try {
            iMusicManager.getPlayListAsync(getAudioSource(), callback.getCallbackImpl());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public MediaCenterConstant.PlayMode getPlayMode() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                return MediaCenterConstant.getPlayModeEnum(iMusicManager.getPlayMode(getAudioSource()));
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        } else {
            Log.w(this.mTag, "getPlayMode: mService is null");
        }
        return MediaCenterConstant.PlayMode.PLAY_MODE_QUEUE;
    }

    public void initService(IMusicManager service) {
        this.mService = service;
        if (service != null) {
            try {
                service.addDeviceStateListener(getAudioSource(), this.mDeviceStateListenerImpl);
                this.mService.addMusicStateListener(getAudioSource(), this.mMusicStateListenerImpl);
                this.mService.addPsdMusicStateListener(getAudioSource(), this.mPsdMusicStateListenerImpl);
                this.mService.addMediaStateListener(getAudioSource(), this.mMediaStateListenerImpl);
                this.mService.addPsdMediaStateListener(getAudioSource(), this.mPsdMediaStateListenerImpl);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean isAlive() {
        IMusicManager iMusicManager = this.mService;
        return iMusicManager != null && iMusicManager.asBinder().isBinderAlive();
    }

    public void next() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "next: mService is null");
            return;
        }
        try {
            iMusicManager.next(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void pause() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "pause: mService is null");
            return;
        }
        try {
            iMusicManager.pause(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void play() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "play: mService is null");
            return;
        }
        try {
            iMusicManager.play(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void playItem(MediaData mediaData) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "playItem: mService is null");
            return;
        }
        try {
            iMusicManager.playItem(getAudioSource(), mediaData);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Deprecated
    public void pre() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "prev: mService is null");
            return;
        }
        try {
            iMusicManager.prev(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void prev() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "prev: mService is null");
            return;
        }
        try {
            iMusicManager.prev(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void removeDeviceStateListener(DeviceStateListener listener) {
        if (listener != null) {
            this.mDeviceStateListeners.remove(listener);
        }
    }

    public void removeMediaStateListener(MediaStateListener listener) {
        if (listener != null) {
            this.mMediaStateListeners.remove(listener);
        }
    }

    @Deprecated
    public void removeMusicStateListener(MusicStateListener listener) {
        if (listener != null) {
            this.mMusicStateListeners.remove(listener);
        }
    }

    public void removeUsbMediaQueryListener(QueryUsbMediaListener listener) {
        if (listener != null) {
            this.mQueryUsbMediaListener.remove(listener);
        }
    }

    public void seekTo(long time) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "seekTo: mService is null");
            return;
        }
        try {
            iMusicManager.seekTo(getAudioSource(), time);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void sendCommand(String command, Bundle args, ResultReceiver cb) {
        sendCommand(MediaCenterConstant.AppSource.UNKNOWN, command, args, cb);
    }

    public void setPlayMode(MediaCenterConstant.PlayMode mode) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "setPlayMode: mService is null");
            return;
        }
        try {
            iMusicManager.setPlayMode(getAudioSource(), mode.ordinal());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void setService(IMusicManager service) {
        initService(service);
    }

    public void startApp() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "startApp: mService is null");
            return;
        }
        try {
            iMusicManager.startApp(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void sendCommand(MediaCenterConstant.AppSource appSource, String command, Bundle args, ResultReceiver cb) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            Log.w(this.mTag, "sendCommand: mService is null");
            return;
        }
        try {
            iMusicManager.sendCommand(getAudioSource(), appSource.ordinal(), command, args, cb);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public Bundle getCurrentMediaBundle(String key, Bundle args, ResultReceiver cb) {
        return getCurrentMediaBundle(MediaCenterConstant.AppSource.UNKNOWN, key, args, cb);
    }

    public Bundle getCurrentMediaBundle(String key, ResultReceiver cb) {
        return getCurrentMediaBundle(MediaCenterConstant.AppSource.UNKNOWN, key, null, cb);
    }
}
