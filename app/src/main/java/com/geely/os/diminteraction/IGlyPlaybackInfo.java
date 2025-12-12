package com.geely.os.diminteraction;

import android.net.Uri;

/* loaded from: classes.dex */
public interface IGlyPlaybackInfo {
    String getAlbum();

    String getArtist();

    Uri getArtwork();

    String getCurrentLyricSentence();

    long getDuration();

    int getFavoriteState();

    int getLoopMode();

    Uri getLyric();

    String getLyricContent();

    Uri getMediaPath();

    Uri getNextArtwork();

    int getPlaybackStatus();

    int getPlayingItemPositionInQueue();

    Uri getPreviousArtwork();

    String getRadioFrequency();

    int getRadioMode();

    String getRadioStationName();

    int getSourceType();

    String getTitle();

    String getUUID();
}
