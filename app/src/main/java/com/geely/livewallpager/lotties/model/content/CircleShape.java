package com.geely.livewallpager.lotties.model.content;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.animation.content.Content;
import com.geely.livewallpager.lotties.animation.content.EllipseContent;
import com.geely.livewallpager.lotties.model.animatable.AnimatablePointValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableValue;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;

/* loaded from: classes.dex */
public class CircleShape implements ContentModel {
    private final boolean hidden;
    private final boolean isReversed;
    private final String name;
    private final AnimatableValue<PointF, PointF> position;
    private final AnimatablePointValue size;

    public CircleShape(String name, AnimatableValue<PointF, PointF> position, AnimatablePointValue size, boolean isReversed, boolean hidden) {
        this.name = name;
        this.position = position;
        this.size = size;
        this.isReversed = isReversed;
        this.hidden = hidden;
    }

    @Override // com.geely.livewallpager.lotties.model.content.ContentModel
    public Content toContent(LottieDrawable drawable, BaseLayer layer) {
        return new EllipseContent(drawable, layer, this);
    }

    public String getName() {
        return this.name;
    }

    public AnimatableValue<PointF, PointF> getPosition() {
        return this.position;
    }

    public AnimatablePointValue getSize() {
        return this.size;
    }

    public boolean isReversed() {
        return this.isReversed;
    }

    public boolean isHidden() {
        return this.hidden;
    }
}
