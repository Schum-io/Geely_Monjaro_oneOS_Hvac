package com.geely.livewallpager.lotties.model.content;

import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.animation.content.Content;
import com.geely.livewallpager.lotties.animation.content.ContentGroup;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeGroup implements ContentModel {
    private final boolean hidden;
    private final List<ContentModel> items;
    private final String name;

    public ShapeGroup(String name, List<ContentModel> items, boolean hidden) {
        this.name = name;
        this.items = items;
        this.hidden = hidden;
    }

    public String getName() {
        return this.name;
    }

    public List<ContentModel> getItems() {
        return this.items;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.geely.livewallpager.lotties.model.content.ContentModel
    public Content toContent(LottieDrawable drawable, BaseLayer layer) {
        return new ContentGroup(drawable, layer, this);
    }

    public String toString() {
        return "ShapeGroup{name='" + this.name + "' Shapes: " + Arrays.toString(this.items.toArray()) + '}';
    }
}
