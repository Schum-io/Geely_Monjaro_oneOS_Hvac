package com.geely.os.diminteraction;

import android.os.Bundle;
import java.util.List;

/* loaded from: classes.dex */
public interface IGlyMediaInteraction {
    void setMediaInteractionCallback(IGlyMediaInteractionCallback callback);

    void unsetMediaInteractionCallback(IGlyMediaInteractionCallback callback);

    void updateCurrentProgress(long progress);

    void updateCurrentSourceType(int sourceType);

    void updateExtensionInfo(Bundle extensionInfo);

    void updateMediaMuteState(int state);

    void updateMediaSourceTypeList(int[] sourceTypeList);

    void updatePlaybackInfo(IGlyPlaybackInfo playbackInfo);

    void updatePlaylist(int sourceType, List<IGlyMedia> playlist);
}
