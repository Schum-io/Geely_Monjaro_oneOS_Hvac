package com.geely.livewallpager.lotties.animation.content;

import java.util.List;

/* loaded from: classes.dex */
public interface Content {
    String getName();

    void setContents(List<Content> contentsBefore, List<Content> contentsAfter);
}
