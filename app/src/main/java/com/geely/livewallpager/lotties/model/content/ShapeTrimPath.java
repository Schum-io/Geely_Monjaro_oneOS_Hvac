package com.geely.livewallpager.lotties.model.content;

import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.animation.content.Content;
import com.geely.livewallpager.lotties.animation.content.TrimPathContent;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;

/* loaded from: classes.dex */
public class ShapeTrimPath implements ContentModel {
    private final AnimatableFloatValue end;
    private final boolean hidden;
    private final String name;
    private final AnimatableFloatValue offset;
    private final AnimatableFloatValue start;
    private final Type type;

    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int id) {
            if (id == 1) {
                return SIMULTANEOUSLY;
            }
            if (id == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type " + id);
        }
    }

    public ShapeTrimPath(String name, Type type, AnimatableFloatValue start, AnimatableFloatValue end, AnimatableFloatValue offset, boolean hidden) {
        this.name = name;
        this.type = type;
        this.start = start;
        this.end = end;
        this.offset = offset;
        this.hidden = hidden;
    }

    public String getName() {
        return this.name;
    }

    public Type getType() {
        return this.type;
    }

    public AnimatableFloatValue getEnd() {
        return this.end;
    }

    public AnimatableFloatValue getStart() {
        return this.start;
    }

    public AnimatableFloatValue getOffset() {
        return this.offset;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.geely.livewallpager.lotties.model.content.ContentModel
    public Content toContent(LottieDrawable drawable, BaseLayer layer) {
        return new TrimPathContent(layer, this);
    }

    public String toString() {
        return "Trim Path: {start: " + this.start + ", end: " + this.end + ", offset: " + this.offset + "}";
    }
}
