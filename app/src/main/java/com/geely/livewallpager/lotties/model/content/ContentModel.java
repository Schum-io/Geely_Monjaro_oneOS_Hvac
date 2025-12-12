package com.geely.livewallpager.lotties.model.content;

import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.animation.content.Content;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;

/* loaded from: classes.dex */
public interface ContentModel {
    Content toContent(LottieDrawable drawable, BaseLayer layer);
}
