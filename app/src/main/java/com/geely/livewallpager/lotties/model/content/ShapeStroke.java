package com.geely.livewallpager.lotties.model.content;

import android.graphics.Paint;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.animation.content.Content;
import com.geely.livewallpager.lotties.animation.content.StrokeContent;
import com.geely.livewallpager.lotties.model.animatable.AnimatableColorValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableIntegerValue;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeStroke implements ContentModel {
    private final LineCapType capType;
    private final AnimatableColorValue color;
    private final boolean hidden;
    private final LineJoinType joinType;
    private final List<AnimatableFloatValue> lineDashPattern;
    private final float miterLimit;
    private final String name;
    private final AnimatableFloatValue offset;
    private final AnimatableIntegerValue opacity;
    private final AnimatableFloatValue width;

    public enum LineCapType {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i = AnonymousClass1.$SwitchMap$com$geely$livewallpager$lotties$model$content$ShapeStroke$LineCapType[ordinal()];
            if (i == 1) {
                return Paint.Cap.BUTT;
            }
            if (i == 2) {
                return Paint.Cap.ROUND;
            }
            return Paint.Cap.SQUARE;
        }
    }

    /* renamed from: com.geely.livewallpager.lotties.model.content.ShapeStroke$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$geely$livewallpager$lotties$model$content$ShapeStroke$LineCapType;
        static final /* synthetic */ int[] $SwitchMap$com$geely$livewallpager$lotties$model$content$ShapeStroke$LineJoinType;

        static {
            int[] iArr = new int[LineJoinType.values().length];
            $SwitchMap$com$geely$livewallpager$lotties$model$content$ShapeStroke$LineJoinType = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$model$content$ShapeStroke$LineJoinType[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$model$content$ShapeStroke$LineJoinType[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            $SwitchMap$com$geely$livewallpager$lotties$model$content$ShapeStroke$LineCapType = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$model$content$ShapeStroke$LineCapType[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$model$content$ShapeStroke$LineCapType[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public enum LineJoinType {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i = AnonymousClass1.$SwitchMap$com$geely$livewallpager$lotties$model$content$ShapeStroke$LineJoinType[ordinal()];
            if (i == 1) {
                return Paint.Join.BEVEL;
            }
            if (i == 2) {
                return Paint.Join.MITER;
            }
            if (i != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public ShapeStroke(String name, AnimatableFloatValue offset, List<AnimatableFloatValue> lineDashPattern, AnimatableColorValue color, AnimatableIntegerValue opacity, AnimatableFloatValue width, LineCapType capType, LineJoinType joinType, float miterLimit, boolean hidden) {
        this.name = name;
        this.offset = offset;
        this.lineDashPattern = lineDashPattern;
        this.color = color;
        this.opacity = opacity;
        this.width = width;
        this.capType = capType;
        this.joinType = joinType;
        this.miterLimit = miterLimit;
        this.hidden = hidden;
    }

    @Override // com.geely.livewallpager.lotties.model.content.ContentModel
    public Content toContent(LottieDrawable drawable, BaseLayer layer) {
        return new StrokeContent(drawable, layer, this);
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

    public AnimatableFloatValue getWidth() {
        return this.width;
    }

    public List<AnimatableFloatValue> getLineDashPattern() {
        return this.lineDashPattern;
    }

    public AnimatableFloatValue getDashOffset() {
        return this.offset;
    }

    public LineCapType getCapType() {
        return this.capType;
    }

    public LineJoinType getJoinType() {
        return this.joinType;
    }

    public float getMiterLimit() {
        return this.miterLimit;
    }

    public boolean isHidden() {
        return this.hidden;
    }
}
