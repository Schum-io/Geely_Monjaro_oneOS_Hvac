package com.ecarx.xui.adaptapi.diminteraction;

import android.net.Uri;
import android.os.Bundle;
import java.util.List;

public interface IMediaInteraction {
    interface IMedia {
        String getUUID();
        String getTitle();
        String getArtist();
        String getAlbum();
        long getDuration();
        int getPlayingItemPositionInQueue();
        int getSourceType();
        Uri getMediaPath();
        String getLyricContent();
        Uri getLyric();
        Uri getArtwork();
        String getRadioFrequency();
        String getRadioStationName();
        int getFavoriteState();
    }

    interface IPlaybackInfo {
        String getUUID();
        String getTitle();
        String getArtist();
        String getAlbum();
        String getRadioFrequency();
        String getRadioStationName();
        long getDuration();
        int getPlayingItemPositionInQueue();
        int getSourceType();
        Uri getMediaPath();
        int getPlaybackStatus();
        String getLyricContent();
        Uri getLyric();
        String getCurrentLyricSentence();
        Uri getPreviousArtwork();
        Uri getArtwork();
        Uri getNextArtwork();
        int getLoopMode();
        int getRadioMode();
        int getFavoriteState();
    }

    interface IMediaInteractionCallback {
        void onMediaHighlighted(IMedia iGlyMedia);
        void onMediaSelected(IMedia iGlyMedia);
        void onSourceSelected(int i);
        void onUpdateMediaStatusRequest(int i);
    }

    void setMediaInteractionCallback(IMediaInteractionCallback callback);
    void unsetMediaInteractionCallback(IMediaInteractionCallback callback);
    void updateCurrentProgress(long progress);
    void updateCurrentSourceType(int sourceType);
    void updateExtensionInfo(Bundle extensionInfo);
    void updateMediaMuteState(int state);
    void updateMediaSourceTypeList(int[] sourceTypeList);
    void updatePlaybackInfo(IPlaybackInfo playbackInfo);
    void updatePlaylist(int sourceType, List<IMedia> playlist);
}