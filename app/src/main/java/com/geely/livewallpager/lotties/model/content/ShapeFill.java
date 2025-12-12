package com.geely.livewallpager.lotties.model.content;

import android.graphics.Path;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.animation.content.Content;
import com.geely.livewallpager.lotties.animation.content.FillContent;
import com.geely.livewallpager.lotties.model.animatable.AnimatableColorValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableIntegerValue;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;

/* loaded from: classes.dex */
public class ShapeFill implements ContentModel {
    private final AnimatableColorValue color;
    private final boolean fillEnabled;
    private final Path.FillType fillType;
    private final boolean hidden;
    private final String name;
    private final AnimatableIntegerValue opacity;

    public ShapeFill(String name, boolean fillEnabled, Path.FillType fillType, AnimatableColorValue color, AnimatableIntegerValue opacity, boolean hidden) {
        this.name = name;
        this.fillEnabled = fillEnabled;
        this.fillType = fillType;
        this.color = color;
        this.opacity = opacity;
        this.hidden = hidden;
    }

    public String getName() {
        return this.name;
    }

    public AnimatableColorValue getColor() {
        return this.color;
    }

    public AnimatableIntegerValue getOpacity() {
        return this.opacity;
    }

    public Path.FillType getFillType() {
        return this.fillType;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.geely.livewallpager.lotties.model.content.ContentModel
    public Content toContent(LottieDrawable drawable, BaseLayer layer) {
        return new FillContent(drawable, layer, this);
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.fillEnabled + '}';
    }
}
