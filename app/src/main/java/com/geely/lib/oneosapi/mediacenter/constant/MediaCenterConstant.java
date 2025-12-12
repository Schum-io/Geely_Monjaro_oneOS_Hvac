package com.geely.lib.oneosapi.mediacenter.constant;

/* loaded from: classes.dex */
public class MediaCenterConstant {
    private static final String TAG = "MediaCenterConstant";

    public enum AppSource {
        UNKNOWN,
        WECARFLOW,
        KUWO,
        KUGOU,
        NETEASE_CLOUD,
        SOHU,
        JINRI,
        QYS,
        OTHER,
        FANDENG,
        TENCENT_VIDEO,
        XMLY,
        GC,
        HUOSHAN,
        BILIBILI,
        THUNDER_VOICE,
        CMVIDEO_VOICE
    }

    public enum AudioSource {
        AUDIO_SOURCE_UNKNOWN,
        AUDIO_SOURCE_USB,
        AUDIO_SOURCE_BT,
        AUDIO_SOURCE_RADIO,
        AUDIO_SOURCE_ONLINE,
        AUDIO_SOURCE_OTHER,
        AUDIO_SOURCE_YUNTING
    }

    public interface Command {
        public static final String ADD_FAVOR = "addFavor";
        public static final String CANCEL_FAVOR = "cancelFavor";
        public static final String CLOSE_FAVOR = "closeFavor";
        public static final String NEXT = "next";
        public static final String OPEN_HISTORY_LIST = "openHistoryList";
        public static final String PAUSE = "pause";
        public static final String PLAY = "play";
        public static final String PREV = "prev";
        public static final String SWITCH_SOURCE_QUALITY = "switchSourceQuality";
    }

    public interface CommandArgsKey {
        public static final String APP_SOURCE = "app_source";
        public static final String CLASSIC_TYPE = "classic_type";
        public static final String IS_AUTO_PLAY = "is_auto_play";
        public static final String IS_PSD_MODE = "is_psd_mode";
        public static final String QUALITY = "quality";
        public static final String REQUEST_ALL_MEDIA = "request_all_media";
    }

    public enum DeviceState {
        DEVICE_USB_MOUNT,
        DEVICE_USB_SCAN_COMPLETE,
        DEVICE_USB_UNMOUNT,
        DEVICE_BT_CONNECTED,
        DEVICE_BT_DISCONNECTED,
        DEVICE_BT_BOUND,
        DEVICE_BT_UNBOUND,
        DEVICE_BT_ON,
        DEVICE_BT_OFF,
        DEVICE_STATE_UNKNOWN
    }

    public interface MediaBoundKey {
        public static final String MEDIA_DATA = "media_data";
        public static final String PLAY_POSITION = "play_position";
        public static final String PLAY_STATE = "play_state";
    }

    public enum MediaType {
        UNKNOWN,
        WECARFLOW_MUSIC,
        WECARFLOW_BOOK,
        WECARFLOW_NEWS,
        WECARFLOW_RADIO,
        WECARFLOW_BROADCAST,
        WECARFLOW_VIDEO
    }

    public enum PlayMode {
        PLAY_MODE_QUEUE,
        PLAY_MODE_REPEAT,
        PLAY_MODE_RANDOM,
        PLAY_MODE_UNKNOWN
    }

    public enum PlayState {
        MUSIC_STATE_PLAY,
        MUSIC_STATE_PAUSE,
        MUSIC_STATE_STOP
    }

    public enum RebootPlay {
        ON(1),
        OFF(2);

        private int value;

        RebootPlay(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }
    }

    public static AppSource getAppSourceEnum(int value) {
        return (value < 0 || value >= 17) ? AppSource.UNKNOWN : AppSource.values()[value];
    }

    public static AudioSource getAudioSourceEnum(int value) {
        return (value < 0 || value >= 7) ? AudioSource.AUDIO_SOURCE_UNKNOWN : AudioSource.values()[value];
    }

    public static DeviceState getDeviceStateEnum(int value) {
        return (value < 0 || value >= 10) ? DeviceState.DEVICE_STATE_UNKNOWN : DeviceState.values()[value];
    }

    public static MediaType getMediaType(int value) {
        return (value < 0 || value >= 7) ? MediaType.UNKNOWN : MediaType.values()[value];
    }

    public static PlayMode getPlayModeEnum(int value) {
        return (value < 0 || value >= 4) ? PlayMode.PLAY_MODE_UNKNOWN : PlayMode.values()[value];
    }

    public static PlayState getPlayStateEnum(int value) {
        return (value < 0 || value >= 3) ? PlayState.MUSIC_STATE_STOP : PlayState.values()[value];
    }

    public static RebootPlay getRebootPlay(int value) {
        return (value <= 0 || value > 2) ? RebootPlay.OFF : RebootPlay.values()[value - 1];
    }
}
