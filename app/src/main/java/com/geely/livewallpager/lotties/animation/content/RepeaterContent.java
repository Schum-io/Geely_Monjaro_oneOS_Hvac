package com.geely.livewallpager.lotties.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.LottieProperty;
import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.TransformKeyframeAnimation;
import com.geely.livewallpager.lotties.model.KeyPath;
import com.geely.livewallpager.lotties.model.content.Repeater;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;
import com.geely.livewallpager.lotties.utils.MiscUtils;
import com.geely.livewallpager.lotties.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public class RepeaterContent implements DrawingContent, PathContent, GreedyContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {
    private ContentGroup contentGroup;
    private final BaseKeyframeAnimation<Float, Float> copies;
    private final boolean hidden;
    private final BaseLayer layer;
    private final LottieDrawable lottieDrawable;
    private final String name;
    private final BaseKeyframeAnimation<Float, Float> offset;
    private final TransformKeyframeAnimation transform;
    private final Matrix matrix = new Matrix();
    private final Path path = new Path();

    public RepeaterContent(LottieDrawable lottieDrawable, BaseLayer layer, Repeater repeater) {
        this.lottieDrawable = lottieDrawable;
        this.layer = layer;
        this.name = repeater.getName();
        this.hidden = repeater.isHidden();
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation = repeater.getCopies().createAnimation();
        this.copies = baseKeyframeAnimationCreateAnimation;
        layer.addAnimation(baseKeyframeAnimationCreateAnimation);
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation2 = repeater.getOffset().createAnimation();
        this.offset = baseKeyframeAnimationCreateAnimation2;
        layer.addAnimation(baseKeyframeAnimationCreateAnimation2);
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
        TransformKeyframeAnimation transformKeyframeAnimationCreateAnimation = repeater.getTransform().createAnimation();
        this.transform = transformKeyframeAnimationCreateAnimation;
        transformKeyframeAnimationCreateAnimation.addAnimationsToLayer(layer);
        transformKeyframeAnimationCreateAnimation.addListener(this);
    }

    @Override // com.geely.livewallpager.lotties.animation.content.GreedyContent
    public void absorbContent(ListIterator<Content> contentsIter) {
        if (this.contentGroup != null) {
            return;
        }
        while (contentsIter.hasPrevious() && contentsIter.previous() != this) {
        }
        ArrayList arrayList = new ArrayList();
        while (contentsIter.hasPrevious()) {
            arrayList.add(contentsIter.previous());
            contentsIter.remove();
        }
        Collections.reverse(arrayList);
        this.contentGroup = new ContentGroup(this.lottieDrawable, this.layer, "Repeater", this.hidden, arrayList, null);
    }

    @Override // com.geely.livewallpager.lotties.animation.content.Content
    public String getName() {
        return this.name;
    }

    @Override // com.geely.livewallpager.lotties.animation.content.Content
    public void setContents(List<Content> contentsBefore, List<Content> contentsAfter) {
        this.contentGroup.setContents(contentsBefore, contentsAfter);
    }

    @Override // com.geely.livewallpager.lotties.animation.content.PathContent
    public Path getPath() {
        Path path = this.contentGroup.getPath();
        this.path.reset();
        float fFloatValue = this.copies.getValue().floatValue();
        float fFloatValue2 = this.offset.getValue().floatValue();
        for (int i = ((int) fFloatValue) - 1; i >= 0; i--) {
            this.matrix.set(this.transform.getMatrixForRepeater(i + fFloatValue2));
            this.path.addPath(path, this.matrix);
        }
        return this.path;
    }

    @Override // com.geely.livewallpager.lotties.animation.content.DrawingContent
    public void draw(Canvas canvas, Matrix parentMatrix, int alpha) {
        float fFloatValue = this.copies.getValue().floatValue();
        float fFloatValue2 = this.offset.getValue().floatValue();
        float fFloatValue3 = this.transform.getStartOpacity().getValue().floatValue() / 100.0f;
        float fFloatValue4 = this.transform.getEndOpacity().getValue().floatValue() / 100.0f;
        for (int i = ((int) fFloatValue) - 1; i >= 0; i--) {
            this.matrix.set(parentMatrix);
            float f = i;
            this.matrix.preConcat(this.transform.getMatrixForRepeater(f + fFloatValue2));
            this.contentGroup.draw(canvas, this.matrix, (int) (alpha * MiscUtils.lerp(fFloatValue3, fFloatValue4, f / fFloatValue)));
        }
    }

    @Override // com.geely.livewallpager.lotties.animation.content.DrawingContent
    public void getBounds(RectF outBounds, Matrix parentMatrix, boolean applyParents) {
        this.contentGroup.getBounds(outBounds, parentMatrix, applyParents);
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.geely.livewallpager.lotties.model.KeyPathElement
    public void resolveKeyPath(KeyPath keyPath, int depth, List<KeyPath> accumulator, KeyPath currentPartialKeyPath) {
        MiscUtils.resolveKeyPath(keyPath, depth, accumulator, currentPartialKeyPath, this);
    }

    @Override // com.geely.livewallpager.lotties.model.KeyPathElement
    public <T> void addValueCallback(T property, LottieValueCallback<T> callback) {
        if (this.transform.applyValueCallback(property, callback)) {
            return;
        }
        if (property == LottieProperty.REPEATER_COPIES) {
            this.copies.setValueCallback((LottieValueCallback<Float>) callback);
        } else if (property == LottieProperty.REPEATER_OFFSET) {
            this.offset.setValueCallback((LottieValueCallback<Float>) callback);
        }
    }
}
