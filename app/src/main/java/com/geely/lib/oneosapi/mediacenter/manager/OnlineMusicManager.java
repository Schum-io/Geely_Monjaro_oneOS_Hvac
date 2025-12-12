package com.geely.lib.oneosapi.mediacenter.manager;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.IMusicManager;
import com.geely.lib.oneosapi.mediacenter.MediaCenterManager;
import com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager;
import com.geely.lib.oneosapi.mediacenter.bean.MediaData;
import com.geely.lib.oneosapi.mediacenter.bean.SearchBean;
import com.geely.lib.oneosapi.mediacenter.callback.ContentCallback;
import com.geely.lib.oneosapi.mediacenter.callback.MusicQueryCallback;
import com.geely.lib.oneosapi.mediacenter.callback.SearchSongCallback;
import com.geely.lib.oneosapi.mediacenter.callback.UserInfoCallback;
import com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant;
import com.geely.lib.oneosapi.mediacenter.listener.OnlineDeviceStateListener;
import com.google.gson.GsonBuilder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class OnlineMusicManager extends BaseMusicManager {
    public static final String CHANNEL_BOOK = "channel_book";
    public static final String CHANNEL_BROADCAST = "channel_broadcast";
    public static final String CHANNEL_MUSIC = "channel_music";
    public static final String CHANNEL_NEWS = "channel_news";
    public static final String CHANNEL_RADIO = "channel_radio";
    private final int mAudioSource;

    public OnlineMusicManager(Context context, IMusicManager service, MediaCenterManager mediaCenterManager) {
        super(context, service, mediaCenterManager);
        this.mAudioSource = MediaCenterConstant.AudioSource.AUDIO_SOURCE_ONLINE.ordinal();
    }

    private List<SearchBean.Text> getValueList(List<String> value) {
        ArrayList arrayList = new ArrayList();
        for (String str : value) {
            SearchBean.Text text = new SearchBean.Text();
            text.text = str;
            arrayList.add(text);
        }
        return arrayList;
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public void addFavor(MediaData mediaData) {
        addFavor(mediaData, MediaCenterConstant.AppSource.UNKNOWN);
    }

    public void addOnlineDeviceStateListener(OnlineDeviceStateListener listener) {
        addDeviceStateListener(listener);
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public void cancelFavor(MediaData mediaData) {
        cancelFavor(mediaData, MediaCenterConstant.AppSource.UNKNOWN);
    }

    public void closeFavor() {
        sendCommand(MediaCenterConstant.Command.CLOSE_FAVOR, null, null);
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public int getAudioSource() {
        return this.mAudioSource;
    }

    public void getContent(String contentId, ContentCallback callback) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.getContent(getAudioSource(), contentId, callback.getCallbackImpl());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public MediaData getCurrentMediaData() {
        return getCurrentMediaData(MediaCenterConstant.AppSource.UNKNOWN);
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public MediaCenterConstant.PlayState getCurrentPlayState() {
        return getCurrentPlayState(MediaCenterConstant.AppSource.UNKNOWN);
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public long getCurrentPosition() {
        return getCurrentPosition(MediaCenterConstant.AppSource.UNKNOWN);
    }

    @Deprecated
    public void getOnlineUserInfoAsync(MediaCenterConstant.AppSource app) {
    }

    public void getOnlineUserInfoAsync(MediaCenterConstant.AppSource app, UserInfoCallback callback) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.getOnlineUserInfoAsync(getAudioSource(), app.ordinal(), callback.getCallbackImpl());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public List<MediaCenterConstant.AppSource> getRecentlyAppSource() {
        final ArrayList arrayList = new ArrayList();
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                List<String> recentlyAppSource = iMusicManager.getRecentlyAppSource(getAudioSource());
                if (recentlyAppSource != null) {
                    recentlyAppSource.forEach(new Consumer() { // from class: com.geely.lib.oneosapi.mediacenter.manager.-$$Lambda$OnlineMusicManager$sDfmt7tM0GtUR_Ec0CcpSEkvO_Y
                        @Override // java.util.function.Consumer
                        public final void accept(Object obj) {
                            arrayList.add(MediaCenterConstant.AppSource.valueOf((String) obj));
                        }
                    });
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return arrayList;
    }

    public boolean isAgreedUserProtocol() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            return false;
        }
        try {
            return iMusicManager.isAgreedUserProtocol(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isMusicQualitySwitch(int quality) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            return false;
        }
        try {
            return iMusicManager.isMusicQualitySwitch(getAudioSource(), quality);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int isSupportChangeMode(MediaCenterConstant.PlayMode mode) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            return 0;
        }
        try {
            return iMusicManager.isSupportChangeMode(getAudioSource(), mode.ordinal());
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public void next() {
        next(MediaCenterConstant.AppSource.UNKNOWN);
    }

    public int notifyVrStatusNotifierStatus(int value) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            return 0;
        }
        try {
            return iMusicManager.notifyVrStatusNotifierStatus(getAudioSource(), value);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public int onUIWordingTriggered(String words) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            return -1;
        }
        try {
            return iMusicManager.onUIWordingTriggered(getAudioSource(), words);
        } catch (RemoteException e) {
            e.printStackTrace();
            return -1;
        }
    }

    public void openFavor() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.openFavor(getAudioSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void openHistory() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.openHistory(getAudioSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void openHistoryList(int classicType, boolean isAutoPlay) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaCenterConstant.CommandArgsKey.IS_AUTO_PLAY, isAutoPlay);
        bundle.putInt(MediaCenterConstant.CommandArgsKey.CLASSIC_TYPE, classicType);
        sendCommand(MediaCenterConstant.Command.OPEN_HISTORY_LIST, bundle, null);
    }

    public void openLoginPage() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.openLoginPage(getAudioSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void openLrcPage() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.openLrcPage(getAudioSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void openPlayList() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.openPlayList(getAudioSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public void pause() {
        pause(MediaCenterConstant.AppSource.UNKNOWN);
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public void play() {
        play(MediaCenterConstant.AppSource.UNKNOWN);
    }

    public void playContent(int position, String content, int contentCode, boolean foreground) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.playContent(getAudioSource(), position, content, contentCode, foreground);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void playFavor() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.playFavor(getAudioSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void playSearchSongByNameItem(String songName, int index) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.playSearchSongByNameItem(getAudioSource(), songName, index);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public void prev() {
        prev(MediaCenterConstant.AppSource.UNKNOWN);
    }

    public void replay() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.replay(getAudioSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void requestAudioSource() {
        this.mMediaCenterManager.requestAudioSource(MediaCenterConstant.AudioSource.AUDIO_SOURCE_ONLINE);
    }

    public void searchMediaForVR(String json) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.searchMediaForVR(getAudioSource(), json);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Deprecated
    public void searchSongByName(String songName) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.searchSongByName(getAudioSource(), songName);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void searchSongByNameAsync(String songName, SearchSongCallback callback) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.searchSongByNameAsync(getAudioSource(), songName, callback.getCallbackImpl());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Deprecated
    public void semanticSearch(String emotion, String theme, String style, String scene) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.semanticSearch(getAudioSource(), emotion, theme, style, scene);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void startAppTab(String tab) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.startAppTab(getAudioSource(), tab);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void switchSourceQuality(int quality) {
        Bundle bundle = new Bundle();
        bundle.putInt(MediaCenterConstant.CommandArgsKey.QUALITY, quality);
        sendCommand(MediaCenterConstant.Command.SWITCH_SOURCE_QUALITY, bundle, null);
    }

    public void addFavor(MediaData mediaData, MediaCenterConstant.AppSource appSource) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaCenterConstant.CommandArgsKey.IS_PSD_MODE, this.mMediaCenterManager.isPsdMode());
        bundle.putInt(MediaCenterConstant.CommandArgsKey.APP_SOURCE, appSource.ordinal());
        sendCommand(MediaCenterConstant.Command.ADD_FAVOR, bundle, null);
    }

    public void cancelFavor(MediaData mediaData, MediaCenterConstant.AppSource appSource) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaCenterConstant.CommandArgsKey.IS_PSD_MODE, this.mMediaCenterManager.isPsdMode());
        bundle.putInt(MediaCenterConstant.CommandArgsKey.APP_SOURCE, appSource.ordinal());
        sendCommand(MediaCenterConstant.Command.CANCEL_FAVOR, bundle, null);
    }

    public MediaData getCurrentMediaData(MediaCenterConstant.AppSource appSource) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaCenterConstant.CommandArgsKey.IS_PSD_MODE, this.mMediaCenterManager.isPsdMode());
        bundle.putInt(MediaCenterConstant.CommandArgsKey.APP_SOURCE, appSource.ordinal());
        Bundle currentMediaBundle = getCurrentMediaBundle(MediaCenterConstant.MediaBoundKey.MEDIA_DATA, bundle, null);
        currentMediaBundle.setClassLoader(MediaData.class.getClassLoader());
        return (MediaData) currentMediaBundle.getParcelable(MediaCenterConstant.MediaBoundKey.MEDIA_DATA);
    }

    public MediaCenterConstant.PlayState getCurrentPlayState(MediaCenterConstant.AppSource appSource) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaCenterConstant.CommandArgsKey.IS_PSD_MODE, this.mMediaCenterManager.isPsdMode());
        bundle.putInt(MediaCenterConstant.CommandArgsKey.APP_SOURCE, appSource.ordinal());
        return MediaCenterConstant.getPlayStateEnum(getCurrentMediaBundle(MediaCenterConstant.MediaBoundKey.PLAY_STATE, bundle, null).getInt(MediaCenterConstant.MediaBoundKey.PLAY_STATE, -1));
    }

    public long getCurrentPosition(MediaCenterConstant.AppSource appSource) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaCenterConstant.CommandArgsKey.IS_PSD_MODE, this.mMediaCenterManager.isPsdMode());
        bundle.putInt(MediaCenterConstant.CommandArgsKey.APP_SOURCE, appSource.ordinal());
        return getCurrentMediaBundle(MediaCenterConstant.MediaBoundKey.PLAY_POSITION, bundle, null).getLong(MediaCenterConstant.MediaBoundKey.PLAY_POSITION, 0L);
    }

    public void next(MediaCenterConstant.AppSource appSource) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaCenterConstant.CommandArgsKey.IS_PSD_MODE, this.mMediaCenterManager.isPsdMode());
        bundle.putInt(MediaCenterConstant.CommandArgsKey.APP_SOURCE, appSource.ordinal());
        sendCommand(MediaCenterConstant.Command.NEXT, bundle, null);
    }

    public void pause(MediaCenterConstant.AppSource appSource) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaCenterConstant.CommandArgsKey.IS_PSD_MODE, this.mMediaCenterManager.isPsdMode());
        bundle.putInt(MediaCenterConstant.CommandArgsKey.APP_SOURCE, appSource.ordinal());
        sendCommand(MediaCenterConstant.Command.PAUSE, bundle, null);
    }

    public void play(MediaCenterConstant.AppSource appSource) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaCenterConstant.CommandArgsKey.IS_PSD_MODE, this.mMediaCenterManager.isPsdMode());
        bundle.putInt(MediaCenterConstant.CommandArgsKey.APP_SOURCE, appSource.ordinal());
        sendCommand("play", bundle, null);
    }

    public void prev(MediaCenterConstant.AppSource appSource) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(MediaCenterConstant.CommandArgsKey.IS_PSD_MODE, this.mMediaCenterManager.isPsdMode());
        bundle.putInt(MediaCenterConstant.CommandArgsKey.APP_SOURCE, appSource.ordinal());
        sendCommand(MediaCenterConstant.Command.PREV, bundle, null);
    }

    public void requestAudioSource(MediaCenterConstant.AppSource appSource) {
        this.mMediaCenterManager.requestAudioSource(MediaCenterConstant.AudioSource.AUDIO_SOURCE_ONLINE, appSource);
    }

    @Deprecated
    public void semanticSearch(String type, HashMap<String, List<String>> map, MusicQueryCallback callback) {
        if (this.mService != null) {
            SearchBean searchBean = new SearchBean();
            searchBean.semantic.domain = type;
            if (type.equals("fm")) {
                searchBean.semantic.query = SearchBean.QUERY_VALUE_FM;
            } else {
                searchBean.semantic.query = SearchBean.QUERY_VALUE_MUSIC;
            }
            if (!map.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (String str : map.keySet()) {
                    List<String> list = map.get(str);
                    if (list != null && !list.isEmpty()) {
                        SearchBean.Slot slot = new SearchBean.Slot();
                        slot.type = str;
                        slot.values = getValueList(list);
                        arrayList.add(slot);
                    }
                }
                searchBean.semantic.slots = arrayList;
            }
            String json = null;
            try {
                json = new GsonBuilder().disableHtmlEscaping().create().toJson(searchBean, SearchBean.class);
            } catch (Exception e) {
                e.printStackTrace();
            }
            try {
                this.mService.semanticSearchAsync(getAudioSource(), json, callback.getCallbackImpl());
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    public void semanticSearch(String type, List<String> typeValues, String song, boolean autoPlay, boolean forceForeground, String queryText, MusicQueryCallback callback) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.semanticSearchAndPlay(getAudioSource(), type, typeValues, song, autoPlay, forceForeground, queryText, callback.getCallbackImpl());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }
}
