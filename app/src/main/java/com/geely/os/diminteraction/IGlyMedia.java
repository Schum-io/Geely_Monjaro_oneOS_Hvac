package com.geely.os.diminteraction;

import android.net.Uri;

/* loaded from: classes.dex */
public interface IGlyMedia {
    String getAlbum();

    String getArtist();

    Uri getArtwork();

    long getDuration();

    int getFavoriteState();

    Uri getLyric();

    String getLyricContent();

    Uri getMediaPath();

    int getPlayingItemPositionInQueue();

    String getRadioFrequency();

    String getRadioStationName();

    int getSourceType();

    String getTitle();

    String getUUID();
}
