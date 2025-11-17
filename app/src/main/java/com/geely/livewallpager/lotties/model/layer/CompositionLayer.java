package com.geely.livewallpager.lotties.model.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.RectF;
import androidx.collection.LongSparseArray;
import com.geely.livewallpager.lotties.L;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.LottieProperty;
import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.geely.livewallpager.lotties.model.KeyPath;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.layer.Layer;
import com.geely.livewallpager.lotties.utils.Utils;
import com.geely.livewallpager.lotties.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CompositionLayer extends BaseLayer {
    private Boolean hasMasks;
    private Boolean hasMatte;
    private Paint layerPaint;
    private final List<BaseLayer> layers;
    private final RectF newClipRect;
    private final RectF rect;
    private BaseKeyframeAnimation<Float, Float> timeRemapping;

    public CompositionLayer(LottieDrawable lottieDrawable, Layer layerModel, List<Layer> layerModels, LottieComposition composition) {
        super(lottieDrawable, layerModel);
        int i;
        BaseLayer baseLayer;
        this.layers = new ArrayList();
        this.rect = new RectF();
        this.newClipRect = new RectF();
        this.layerPaint = new Paint();
        AnimatableFloatValue timeRemapping = layerModel.getTimeRemapping();
        if (timeRemapping != null) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation = timeRemapping.createAnimation();
            this.timeRemapping = baseKeyframeAnimationCreateAnimation;
            addAnimation(baseKeyframeAnimationCreateAnimation);
            this.timeRemapping.addUpdateListener(this);
        } else {
            this.timeRemapping = null;
        }
        LongSparseArray longSparseArray = new LongSparseArray(composition.getLayers().size());
        int size = layerModels.size() - 1;
        BaseLayer baseLayer2 = null;
        while (true) {
            if (size < 0) {
                break;
            }
            Layer layer = layerModels.get(size);
            BaseLayer baseLayerForModel = BaseLayer.forModel(layer, lottieDrawable, composition);
            if (baseLayerForModel != null) {
                longSparseArray.put(baseLayerForModel.getLayerModel().getId(), baseLayerForModel);
                if (baseLayer2 != null) {
                    baseLayer2.setMatteLayer(baseLayerForModel);
                    baseLayer2 = null;
                } else {
                    this.layers.add(0, baseLayerForModel);
                    int i2 = AnonymousClass1.$SwitchMap$com$geely$livewallpager$lotties$model$layer$Layer$MatteType[layer.getMatteType().ordinal()];
                    if (i2 == 1 || i2 == 2) {
                        baseLayer2 = baseLayerForModel;
                    }
                }
            }
            size--;
        }
        for (i = 0; i < longSparseArray.size(); i++) {
            BaseLayer baseLayer3 = (BaseLayer) longSparseArray.get(longSparseArray.keyAt(i));
            if (baseLayer3 != null && (baseLayer = (BaseLayer) longSparseArray.get(baseLayer3.getLayerModel().getParentId())) != null) {
                baseLayer3.setParentLayer(baseLayer);
            }
        }
    }

    /* renamed from: com.geely.livewallpager.lotties.model.layer.CompositionLayer$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$geely$livewallpager$lotties$model$layer$Layer$MatteType;

        static {
            int[] iArr = new int[Layer.MatteType.values().length];
            $SwitchMap$com$geely$livewallpager$lotties$model$layer$Layer$MatteType = iArr;
            try {
                iArr[Layer.MatteType.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$model$layer$Layer$MatteType[Layer.MatteType.INVERT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer
    void drawLayer(Canvas canvas, Matrix parentMatrix, int parentAlpha) {
        L.beginSection("CompositionLayer#draw");
        this.newClipRect.set(0.0f, 0.0f, this.layerModel.getPreCompWidth(), this.layerModel.getPreCompHeight());
        parentMatrix.mapRect(this.newClipRect);
        boolean z = this.lottieDrawable.isApplyingOpacityToLayersEnabled() && this.layers.size() > 1 && parentAlpha != 255;
        if (z) {
            this.layerPaint.setAlpha(parentAlpha);
            Utils.saveLayerCompat(canvas, this.newClipRect, this.layerPaint);
        } else {
            canvas.save();
        }
        if (z) {
            parentAlpha = 255;
        }
        for (int size = this.layers.size() - 1; size >= 0; size--) {
            if (!this.newClipRect.isEmpty() ? canvas.clipRect(this.newClipRect) : true) {
                this.layers.get(size).draw(canvas, parentMatrix, parentAlpha);
            }
        }
        canvas.restore();
        L.endSection("CompositionLayer#draw");
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer, com.geely.livewallpager.lotties.animation.content.DrawingContent
    public void getBounds(RectF outBounds, Matrix parentMatrix, boolean applyParents) {
        super.getBounds(outBounds, parentMatrix, applyParents);
        for (int size = this.layers.size() - 1; size >= 0; size--) {
            this.rect.set(0.0f, 0.0f, 0.0f, 0.0f);
            this.layers.get(size).getBounds(this.rect, this.boundsMatrix, true);
            outBounds.union(this.rect);
        }
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer
    public void setProgress(float progress) {
        super.setProgress(progress);
        if (this.timeRemapping != null) {
            progress = ((this.timeRemapping.getValue().floatValue() * this.layerModel.getComposition().getFrameRate()) - this.layerModel.getComposition().getStartFrame()) / (this.lottieDrawable.getComposition().getDurationFrames() + 0.01f);
        }
        if (this.timeRemapping == null) {
            progress -= this.layerModel.getStartProgress();
        }
        if (this.layerModel.getTimeStretch() != 0.0f) {
            progress /= this.layerModel.getTimeStretch();
        }
        for (int size = this.layers.size() - 1; size >= 0; size--) {
            this.layers.get(size).setProgress(progress);
        }
    }

    public boolean hasMasks() {
        if (this.hasMasks == null) {
            for (int size = this.layers.size() - 1; size >= 0; size--) {
                BaseLayer baseLayer = this.layers.get(size);
                if (baseLayer instanceof ShapeLayer) {
                    if (baseLayer.hasMasksOnThisLayer()) {
                        this.hasMasks = true;
                        return true;
                    }
                } else if ((baseLayer instanceof CompositionLayer) && ((CompositionLayer) baseLayer).hasMasks()) {
                    this.hasMasks = true;
                    return true;
                }
            }
            this.hasMasks = false;
        }
        return this.hasMasks.booleanValue();
    }

    public boolean hasMatte() {
        if (this.hasMatte == null) {
            if (hasMatteOnThisLayer()) {
                this.hasMatte = true;
                return true;
            }
            for (int size = this.layers.size() - 1; size >= 0; size--) {
                if (this.layers.get(size).hasMatteOnThisLayer()) {
                    this.hasMatte = true;
                    return true;
                }
            }
            this.hasMatte = false;
        }
        return this.hasMatte.booleanValue();
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer
    protected void resolveChildKeyPath(KeyPath keyPath, int depth, List<KeyPath> accumulator, KeyPath currentPartialKeyPath) {
        for (int i = 0; i < this.layers.size(); i++) {
            this.layers.get(i).resolveKeyPath(keyPath, depth, accumulator, currentPartialKeyPath);
        }
    }

    @Override // com.geely.livewallpager.lotties.model.layer.BaseLayer, com.geely.livewallpager.lotties.model.KeyPathElement
    public <T> void addValueCallback(T property, LottieValueCallback<T> callback) {
        super.addValueCallback(property, callback);
        if (property == LottieProperty.TIME_REMAP) {
            if (callback == null) {
                BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation = this.timeRemapping;
                if (baseKeyframeAnimation != null) {
                    baseKeyframeAnimation.setValueCallback(null);
                    return;
                }
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(callback);
            this.timeRemapping = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.addUpdateListener(this);
            addAnimation(this.timeRemapping);
        }
    }
}
