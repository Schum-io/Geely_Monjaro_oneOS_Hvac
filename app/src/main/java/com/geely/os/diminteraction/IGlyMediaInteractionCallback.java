package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyMediaInteractionCallback {
    void onMediaHighlighted(IGlyMedia media);

    void onMediaSelected(IGlyMedia media);

    void onSourceSelected(int sourceType);

    void onUpdateMediaStatusRequest(int dataType);
}
