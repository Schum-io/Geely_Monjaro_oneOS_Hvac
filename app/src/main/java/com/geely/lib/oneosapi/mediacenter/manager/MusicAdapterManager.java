package com.geely.lib.oneosapi.mediacenter.manager;

import android.content.Context;
import android.util.Log;
import com.geely.lib.oneosapi.mediacenter.MediaCenterManager;
import com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager;
import com.geely.lib.oneosapi.mediacenter.bean.MediaData;
import com.geely.lib.oneosapi.mediacenter.callback.MusicListCallback;
import com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant;
import com.geely.lib.oneosapi.mediacenter.listener.MediaStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.MusicStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.SourceStateListener;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public class MusicAdapterManager {
    public static final int FAILED = 0;
    public static final int SUCCESS = 1;
    private static final String TAG = "MusicAdapterManager";
    public static final int UNSUPPORTED = -1;
    public Context mContext;
    public MediaCenterManager mMediaCenterManager;
    private final MusicStateListenerImpl mMusicStateListenerImpl;
    private final SourceStateListener mSourceStateListenerImpl;
    private final CopyOnWriteArrayList<MusicStateListener> mMusicStateListeners = new CopyOnWriteArrayList<>();
    private final CopyOnWriteArrayList<SourceStateListener> mSourceStateListeners = new CopyOnWriteArrayList<>();

    /* renamed from: com.geely.lib.oneosapi.mediacenter.manager.MusicAdapterManager$2, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass2 {
        public static final /* synthetic */ int[] $SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource;

        static {
            MediaCenterConstant.AudioSource.values();
            int[] iArr = new int[7];
            $SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource = iArr;
            try {
                iArr[MediaCenterConstant.AudioSource.AUDIO_SOURCE_UNKNOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource[MediaCenterConstant.AudioSource.AUDIO_SOURCE_USB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource[MediaCenterConstant.AudioSource.AUDIO_SOURCE_ONLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource[MediaCenterConstant.AudioSource.AUDIO_SOURCE_YUNTING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource[MediaCenterConstant.AudioSource.AUDIO_SOURCE_BT.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$geely$lib$oneosapi$mediacenter$constant$MediaCenterConstant$AudioSource[MediaCenterConstant.AudioSource.AUDIO_SOURCE_RADIO.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public class MusicStateListenerImpl implements MusicStateListener {
        private MusicStateListenerImpl() {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.MusicStateListener
        public void onFavorStateChanged(MediaCenterConstant.AudioSource source, MediaData mediaData) {
            Iterator it = MusicAdapterManager.this.mMusicStateListeners.iterator();
            while (it.hasNext()) {
                ((MusicStateListener) it.next()).onFavorStateChanged(source, mediaData);
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.MusicStateListener
        public void onLrcLoad(MediaCenterConstant.AudioSource source, String lrc, long time) {
            Iterator it = MusicAdapterManager.this.mMusicStateListeners.iterator();
            while (it.hasNext()) {
                ((MusicStateListener) it.next()).onLrcLoad(source, lrc, time);
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.MusicStateListener
        public void onMediaDataChanged(MediaCenterConstant.AudioSource source, MediaData mediaData) {
            Iterator it = MusicAdapterManager.this.mMusicStateListeners.iterator();
            while (it.hasNext()) {
                ((MusicStateListener) it.next()).onMediaDataChanged(source, mediaData);
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.MusicStateListener
        public void onPlayListChanged(MediaCenterConstant.AudioSource source, List<MediaData> list) {
            Iterator it = MusicAdapterManager.this.mMusicStateListeners.iterator();
            while (it.hasNext()) {
                ((MusicStateListener) it.next()).onPlayListChanged(source, list);
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.MusicStateListener
        public void onPlayModeChange(MediaCenterConstant.AudioSource source, MediaCenterConstant.PlayMode mode) {
            Iterator it = MusicAdapterManager.this.mMusicStateListeners.iterator();
            while (it.hasNext()) {
                ((MusicStateListener) it.next()).onPlayModeChange(source, mode);
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.MusicStateListener
        public void onPlayPositionChanged(MediaCenterConstant.AudioSource source, long current, long total) {
            Iterator it = MusicAdapterManager.this.mMusicStateListeners.iterator();
            while (it.hasNext()) {
                ((MusicStateListener) it.next()).onPlayPositionChanged(source, current, total);
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.MusicStateListener
        public void onPlayStateChanged(MediaCenterConstant.AudioSource source, MediaCenterConstant.PlayState state) {
            Iterator it = MusicAdapterManager.this.mMusicStateListeners.iterator();
            while (it.hasNext()) {
                ((MusicStateListener) it.next()).onPlayStateChanged(source, state);
            }
        }
    }

    public MusicAdapterManager(Context context, MediaCenterManager mediaCenterManager) {
        SourceStateListener sourceStateListener = new SourceStateListener() { // from class: com.geely.lib.oneosapi.mediacenter.manager.MusicAdapterManager.1
            @Override // com.geely.lib.oneosapi.mediacenter.listener.SourceStateListener
            public void onSourceChanged(MediaCenterConstant.AudioSource source, MediaCenterConstant.AppSource appSource) {
                Iterator it = MusicAdapterManager.this.mSourceStateListeners.iterator();
                while (it.hasNext()) {
                    ((SourceStateListener) it.next()).onSourceChanged(source, appSource);
                }
            }
        };
        this.mSourceStateListenerImpl = sourceStateListener;
        this.mMusicStateListenerImpl = new MusicStateListenerImpl();
        this.mContext = context;
        this.mMediaCenterManager = mediaCenterManager;
        mediaCenterManager.addSourceStateListener(sourceStateListener);
        mediaCenterManager.getMusicManagerMap().forEach(new BiConsumer() { // from class: com.geely.lib.oneosapi.mediacenter.manager.-$$Lambda$MusicAdapterManager$cDnPT02UcqNt6MW7TunMIiGT1Aw
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((BaseMusicManager) obj2).addMusicStateListener(MusicAdapterManager.this.mMusicStateListenerImpl);
            }
        });
    }

    public int addFavor(MediaData mediaData) {
        BaseMusicManager baseMusicManager;
        MediaData currentMediaData;
        List<MediaData> favorList;
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if ((iOrdinal != 4 && iOrdinal != 6) || (currentMediaData = (baseMusicManager = this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource)).getCurrentMediaData()) == null || !currentMediaData.isFavorSupported) {
            return -1;
        }
        if (currentAudioSource == MediaCenterConstant.AudioSource.AUDIO_SOURCE_YUNTING && (favorList = baseMusicManager.getFavorList()) != null && favorList.size() == 20) {
            return 0;
        }
        baseMusicManager.addFavor(mediaData);
        return 1;
    }

    public void addMediaStateListener(final MediaStateListener listener) {
        this.mMediaCenterManager.getMusicManagerMap().forEach(new BiConsumer() { // from class: com.geely.lib.oneosapi.mediacenter.manager.-$$Lambda$MusicAdapterManager$e4Z2IKYtZUuhrdksfbOUpexy0Xw
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((BaseMusicManager) obj2).addMediaStateListener(listener);
            }
        });
    }

    public void addMusicStateListener(MusicStateListener listener) {
        if (listener == null || this.mMusicStateListeners.contains(listener)) {
            return;
        }
        this.mMusicStateListeners.add(listener);
    }

    public void addSourceStateListener(SourceStateListener listener) {
        if (listener == null || this.mSourceStateListeners.contains(listener)) {
            return;
        }
        this.mSourceStateListeners.add(listener);
    }

    public int cancelFavor(MediaData mediaData) {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal != 4 && iOrdinal != 6) {
            return -1;
        }
        BaseMusicManager baseMusicManager = this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource);
        if (baseMusicManager.getCurrentMediaData() != null && !baseMusicManager.getCurrentMediaData().isFavorSupported) {
            return -1;
        }
        if (baseMusicManager.getCurrentMediaData() == null || !baseMusicManager.getCurrentMediaData().isFavored) {
            return 0;
        }
        baseMusicManager.cancelFavor(mediaData);
        return 1;
    }

    public int closeFavor() {
        if (getCurrentAudioSource().ordinal() != 4) {
            return -1;
        }
        this.mMediaCenterManager.getOnlineMusicManager().closeFavor();
        return 1;
    }

    public int fastForward(long time) {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        if (currentAudioSource != MediaCenterConstant.AudioSource.AUDIO_SOURCE_ONLINE) {
            return -1;
        }
        this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).fastForward(time);
        return 1;
    }

    public int fastRewind(long time) {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        if (currentAudioSource != MediaCenterConstant.AudioSource.AUDIO_SOURCE_ONLINE) {
            return -1;
        }
        this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).fastRewind(time);
        return 1;
    }

    public BtMusicManager getBtMusicManager() {
        return this.mMediaCenterManager.getBtMusicManager();
    }

    public MediaCenterConstant.AppSource getCurrentAppSource() {
        MediaCenterConstant.AppSource currentAppSource = this.mMediaCenterManager.getCurrentAppSource();
        Log.d(TAG, "getCurrentAppSource() returned: " + currentAppSource);
        return currentAppSource;
    }

    public MediaCenterConstant.AudioSource getCurrentAudioSource() {
        MediaCenterConstant.AudioSource currentAudioSource = this.mMediaCenterManager.getCurrentAudioSource();
        Log.d(TAG, "getCurrentAudioSource() returned: " + currentAudioSource);
        return currentAudioSource;
    }

    public MediaData getCurrentMediaData() {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 4 || iOrdinal == 6) {
            return this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).getCurrentMediaData();
        }
        return null;
    }

    public MediaCenterConstant.PlayState getCurrentPlayState() {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 4 || iOrdinal == 6) {
            return this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).getCurrentPlayState();
        }
        return null;
    }

    public long getCurrentPosition() {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 4 || iOrdinal == 6) {
            return this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).getCurrentPosition();
        }
        return 0L;
    }

    @Deprecated
    public MediaCenterConstant.AudioSource getCurrentSource() {
        return this.mMediaCenterManager.getCurrentAudioSource();
    }

    public BaseMusicManager getMusicManager(MediaCenterConstant.AudioSource audioSource) {
        return this.mMediaCenterManager.getMusicManagerMap().get(audioSource);
    }

    public OnlineMusicManager getOnlineMusicManager() {
        return this.mMediaCenterManager.getOnlineMusicManager();
    }

    @Deprecated
    public List<MediaData> getPlayList() {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 1 || iOrdinal == 4 || iOrdinal == 6) {
            return this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).getPlayList();
        }
        return null;
    }

    public void getPlayListAsync(MusicListCallback callback) {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 4 || iOrdinal == 6) {
            this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).getPlayListAsync(callback);
        }
    }

    public MediaCenterConstant.PlayMode getPlayMode() {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 1 || iOrdinal == 2 || iOrdinal == 4 || iOrdinal == 6) {
            return this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).getPlayMode();
        }
        return null;
    }

    public UsbMusicManager getUsbMusicManager() {
        return this.mMediaCenterManager.getUsbMusicManager();
    }

    public YunTingManager getYunTingManager() {
        return this.mMediaCenterManager.getYunTingManager();
    }

    public boolean isCurrentMediaFavored() {
        MediaData currentMediaData;
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        if (currentAudioSource != MediaCenterConstant.AudioSource.AUDIO_SOURCE_ONLINE || (currentMediaData = this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).getCurrentMediaData()) == null) {
            return false;
        }
        return currentMediaData.isFavored;
    }

    public int next() {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        if (iOrdinal != 1 && iOrdinal != 2 && iOrdinal != 4 && iOrdinal != 6) {
            return -1;
        }
        this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).next();
        return 1;
    }

    public int openFavor() {
        if (getCurrentAudioSource().ordinal() != 4) {
            return -1;
        }
        this.mMediaCenterManager.getOnlineMusicManager().openFavor();
        return 1;
    }

    public int openHistory() {
        if (getCurrentAudioSource().ordinal() != 4) {
            return -1;
        }
        this.mMediaCenterManager.getOnlineMusicManager().openHistory();
        return 1;
    }

    public int openHistoryList(int classicType, boolean isAutoPlay) {
        if (getCurrentAudioSource().ordinal() != 4) {
            return -1;
        }
        this.mMediaCenterManager.getOnlineMusicManager().openHistoryList(classicType, isAutoPlay);
        return 1;
    }

    public int openPlayList() {
        if (getCurrentAudioSource().ordinal() != 4) {
            return -1;
        }
        this.mMediaCenterManager.getOnlineMusicManager().openPlayList();
        return 1;
    }

    public int pause() {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        if (iOrdinal != 1 && iOrdinal != 2 && iOrdinal != 4 && iOrdinal != 6) {
            return -1;
        }
        this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).pause();
        return 1;
    }

    public int play() {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        if (iOrdinal != 1 && iOrdinal != 2 && iOrdinal != 4 && iOrdinal != 6) {
            return -1;
        }
        this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).play();
        return 1;
    }

    public int playItem(MediaData mediaData) {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        if (iOrdinal != 1 && iOrdinal != 4 && iOrdinal != 6) {
            return -1;
        }
        this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).playItem(mediaData);
        return 1;
    }

    public int playMusicFavor() {
        if (getCurrentAudioSource().ordinal() != 4) {
            return -1;
        }
        this.mMediaCenterManager.getOnlineMusicManager().playFavor();
        return 1;
    }

    public int prev() {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        int iOrdinal = currentAudioSource.ordinal();
        if (iOrdinal == 0) {
            return 0;
        }
        if (iOrdinal != 1 && iOrdinal != 2 && iOrdinal != 4 && iOrdinal != 6) {
            return -1;
        }
        this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).prev();
        return 1;
    }

    public void removeMediaStateListener(final MediaStateListener listener) {
        this.mMediaCenterManager.getMusicManagerMap().forEach(new BiConsumer() { // from class: com.geely.lib.oneosapi.mediacenter.manager.-$$Lambda$MusicAdapterManager$1RpBtbg7bNQGXfQUVLGfL7ejEmo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((BaseMusicManager) obj2).removeMediaStateListener(listener);
            }
        });
    }

    public void removeMusicStateListener(MusicStateListener listener) {
        if (listener != null) {
            this.mMusicStateListeners.remove(listener);
        }
    }

    public void removeSourceStateListener(SourceStateListener listener) {
        if (listener != null) {
            this.mSourceStateListeners.remove(listener);
        }
    }

    public int replay() {
        if (getCurrentAudioSource().ordinal() != 4) {
            return -1;
        }
        this.mMediaCenterManager.getOnlineMusicManager().replay();
        return 1;
    }

    public void requestAudioSource(MediaCenterConstant.AudioSource source, MediaCenterConstant.AppSource app) {
        this.mMediaCenterManager.requestAudioSource(source, app);
    }

    public int seekTo(long time) {
        MediaCenterConstant.AudioSource currentAudioSource = getCurrentAudioSource();
        if (currentAudioSource != MediaCenterConstant.AudioSource.AUDIO_SOURCE_ONLINE) {
            return -1;
        }
        this.mMediaCenterManager.getMusicManagerMap().get(currentAudioSource).seekTo(time);
        return 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int setPlayMode(int r6) {
        /*
            r5 = this;
            com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant$AudioSource r0 = r5.getCurrentAudioSource()
            int r1 = r0.ordinal()
            if (r1 == 0) goto L50
            r2 = 1
            if (r1 == r2) goto L3c
            r3 = 2
            r4 = -1
            if (r1 == r3) goto L3b
            r3 = 3
            if (r1 == r3) goto L3b
            r3 = 4
            if (r1 == r3) goto L1b
            r3 = 6
            if (r1 == r3) goto L3c
            goto L4f
        L1b:
            com.geely.lib.oneosapi.mediacenter.MediaCenterManager r0 = r5.mMediaCenterManager
            java.util.Map r0 = r0.getMusicManagerMap()
            com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant$AudioSource r1 = com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant.AudioSource.AUDIO_SOURCE_ONLINE
            java.lang.Object r0 = r0.get(r1)
            com.geely.lib.oneosapi.mediacenter.manager.OnlineMusicManager r0 = (com.geely.lib.oneosapi.mediacenter.manager.OnlineMusicManager) r0
            com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant$PlayMode r1 = com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant.getPlayModeEnum(r6)
            int r1 = r0.isSupportChangeMode(r1)
            if (r1 != r2) goto L3b
            com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant$PlayMode r6 = com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant.getPlayModeEnum(r6)
            r0.setPlayMode(r6)
            return r2
        L3b:
            return r4
        L3c:
            com.geely.lib.oneosapi.mediacenter.MediaCenterManager r1 = r5.mMediaCenterManager
            java.util.Map r1 = r1.getMusicManagerMap()
            java.lang.Object r0 = r1.get(r0)
            com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager r0 = (com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager) r0
            com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant$PlayMode r6 = com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant.getPlayModeEnum(r6)
            r0.setPlayMode(r6)
        L4f:
            return r2
        L50:
            r6 = 0
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.geely.lib.oneosapi.mediacenter.manager.MusicAdapterManager.setPlayMode(int):int");
    }

    public int startAppTab(String tab) {
        this.mMediaCenterManager.getOnlineMusicManager().startAppTab(tab);
        return 1;
    }

    public void requestAudioSource(MediaCenterConstant.AudioSource source) {
        this.mMediaCenterManager.requestAudioSource(source);
    }
}
