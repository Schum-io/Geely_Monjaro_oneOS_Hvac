package com.geely.livewallpager.lotties;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import com.geely.livewallpager.lotties.manager.FontAssetManager;
import com.geely.livewallpager.lotties.manager.ImageAssetManager;
import com.geely.livewallpager.lotties.model.KeyPath;
import com.geely.livewallpager.lotties.model.Marker;
import com.geely.livewallpager.lotties.model.layer.CompositionLayer;
import com.geely.livewallpager.lotties.parser.LayerParser;
import com.geely.livewallpager.lotties.utils.Logger;
import com.geely.livewallpager.lotties.utils.LottieValueAnimator;
import com.geely.livewallpager.lotties.utils.MiscUtils;
import com.geely.livewallpager.lotties.value.LottieFrameInfo;
import com.geely.livewallpager.lotties.value.LottieValueCallback;
import com.geely.livewallpager.lotties.value.SimpleLottieValueCallback;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    public static final int INFINITE = -1;
    public static final int RESTART = 1;
    public static final int REVERSE = 2;
    private static final String TAG = "LottieDrawable";
    private int alpha;
    private final LottieValueAnimator animator;
    private final Set<ColorFilterData> colorFilterData;
    private LottieComposition composition;
    private CompositionLayer compositionLayer;
    private boolean enableMergePaths;
    FontAssetDelegate fontAssetDelegate;
    private FontAssetManager fontAssetManager;
    private ImageAssetDelegate imageAssetDelegate;
    private ImageAssetManager imageAssetManager;
    private String imageAssetsFolder;
    private boolean isApplyingOpacityToLayersEnabled;
    private boolean isDirty;
    private boolean isExtraScaleEnabled;
    private final ArrayList<LazyCompositionTask> lazyCompositionTasks;
    private final Matrix matrix = new Matrix();
    private boolean performanceTrackingEnabled;
    private final ValueAnimator.AnimatorUpdateListener progressUpdateListener;
    private boolean safeMode;
    private float scale;
    private ImageView.ScaleType scaleType;
    private boolean systemAnimationsEnabled;
    TextDelegate textDelegate;

    private interface LazyCompositionTask {
        void run(LottieComposition composition);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RepeatMode {
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public LottieDrawable() {
        LottieValueAnimator lottieValueAnimator = new LottieValueAnimator();
        this.animator = lottieValueAnimator;
        this.scale = 1.0f;
        this.systemAnimationsEnabled = true;
        this.safeMode = false;
        this.colorFilterData = new HashSet();
        this.lazyCompositionTasks = new ArrayList<>();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.geely.livewallpager.lotties.LottieDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                if (LottieDrawable.this.compositionLayer != null) {
                    LottieDrawable.this.compositionLayer.setProgress(LottieDrawable.this.animator.getAnimatedValueAbsolute());
                }
            }
        };
        this.progressUpdateListener = animatorUpdateListener;
        this.alpha = 255;
        this.isExtraScaleEnabled = true;
        this.isDirty = false;
        lottieValueAnimator.addUpdateListener(animatorUpdateListener);
    }

    public boolean hasMasks() {
        CompositionLayer compositionLayer = this.compositionLayer;
        return compositionLayer != null && compositionLayer.hasMasks();
    }

    public boolean hasMatte() {
        CompositionLayer compositionLayer = this.compositionLayer;
        return compositionLayer != null && compositionLayer.hasMatte();
    }

    public boolean enableMergePathsForKitKatAndAbove() {
        return this.enableMergePaths;
    }

    public void enableMergePathsForKitKatAndAbove(boolean enable) {
        if (this.enableMergePaths == enable) {
            return;
        }
        if (Build.VERSION.SDK_INT < 19) {
            Logger.warning("Merge paths are not supported pre-Kit Kat.");
            return;
        }
        this.enableMergePaths = enable;
        if (this.composition != null) {
            buildCompositionLayer();
        }
    }

    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.enableMergePaths;
    }

    public void setImagesAssetsFolder(String imageAssetsFolder) {
        this.imageAssetsFolder = imageAssetsFolder;
    }

    public String getImageAssetsFolder() {
        return this.imageAssetsFolder;
    }

    public boolean setComposition(LottieComposition composition) {
        if (this.composition == composition) {
            return false;
        }
        this.isDirty = false;
        clearComposition();
        this.composition = composition;
        buildCompositionLayer();
        this.animator.setComposition(composition);
        setProgress(this.animator.getAnimatedFraction());
        setScale(this.scale);
        updateBounds();
        Iterator it = new ArrayList(this.lazyCompositionTasks).iterator();
        while (it.hasNext()) {
            ((LazyCompositionTask) it.next()).run(composition);
            it.remove();
        }
        this.lazyCompositionTasks.clear();
        composition.setPerformanceTrackingEnabled(this.performanceTrackingEnabled);
        Callback callback = getCallback();
        if (!(callback instanceof ImageView)) {
            return true;
        }
        ImageView imageView = (ImageView) callback;
        imageView.setImageDrawable(null);
        imageView.setImageDrawable(this);
        return true;
    }

    public void setPerformanceTrackingEnabled(boolean enabled) {
        this.performanceTrackingEnabled = enabled;
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition != null) {
            lottieComposition.setPerformanceTrackingEnabled(enabled);
        }
    }

    public PerformanceTracker getPerformanceTracker() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition != null) {
            return lottieComposition.getPerformanceTracker();
        }
        return null;
    }

    public void setApplyingOpacityToLayersEnabled(boolean isApplyingOpacityToLayersEnabled) {
        this.isApplyingOpacityToLayersEnabled = isApplyingOpacityToLayersEnabled;
    }

    public void disableExtraScaleModeInFitXY() {
        this.isExtraScaleEnabled = false;
    }

    public boolean isApplyingOpacityToLayersEnabled() {
        return this.isApplyingOpacityToLayersEnabled;
    }

    private void buildCompositionLayer() {
        this.compositionLayer = new CompositionLayer(this, LayerParser.parse(this.composition), this.composition.getLayers(), this.composition);
    }

    public void clearComposition() {
        if (this.animator.isRunning()) {
            this.animator.cancel();
        }
        this.composition = null;
        this.compositionLayer = null;
        this.imageAssetManager = null;
        this.animator.clearComposition();
        invalidateSelf();
    }

    public void setSafeMode(boolean safeMode) {
        this.safeMode = safeMode;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (this.isDirty) {
            return;
        }
        this.isDirty = true;
        Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.alpha = alpha;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.alpha;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        Logger.warning("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.isDirty = false;
        L.beginSection("Drawable#draw");
        if (this.safeMode) {
            try {
                drawInternal(canvas);
            } catch (Throwable th) {
                Logger.error("Lottie crashed in draw!", th);
            }
        } else {
            drawInternal(canvas);
        }
        L.endSection("Drawable#draw");
    }

    private void drawInternal(Canvas canvas) {
        if (ImageView.ScaleType.FIT_XY == this.scaleType) {
            drawWithNewAspectRatio(canvas);
        } else {
            drawWithOriginalAspectRatio(canvas);
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        playAnimation();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        endAnimation();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return isAnimating();
    }

    public void playAnimation() {
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.2
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.playAnimation();
                }
            });
            return;
        }
        if (this.systemAnimationsEnabled || getRepeatCount() == 0) {
            this.animator.playAnimation();
        }
        if (this.systemAnimationsEnabled) {
            return;
        }
        setFrame((int) (getSpeed() < 0.0f ? getMinFrame() : getMaxFrame()));
        this.animator.endAnimation();
    }

    public void endAnimation() {
        this.lazyCompositionTasks.clear();
        this.animator.endAnimation();
    }

    public void resumeAnimation() {
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.3
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.resumeAnimation();
                }
            });
            return;
        }
        if (this.systemAnimationsEnabled || getRepeatCount() == 0) {
            this.animator.resumeAnimation();
        }
        if (this.systemAnimationsEnabled) {
            return;
        }
        setFrame((int) (getSpeed() < 0.0f ? getMinFrame() : getMaxFrame()));
        this.animator.endAnimation();
    }

    public void setMinFrame(final int minFrame) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.4
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setMinFrame(minFrame);
                }
            });
        } else {
            this.animator.setMinFrame(minFrame);
        }
    }

    public float getMinFrame() {
        return this.animator.getMinFrame();
    }

    public void setMinProgress(final float minProgress) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.5
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setMinProgress(minProgress);
                }
            });
        } else {
            setMinFrame((int) MiscUtils.lerp(lottieComposition.getStartFrame(), this.composition.getEndFrame(), minProgress));
        }
    }

    public void setMaxFrame(final int maxFrame) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.6
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setMaxFrame(maxFrame);
                }
            });
        } else {
            this.animator.setMaxFrame(maxFrame + 0.99f);
        }
    }

    public float getMaxFrame() {
        return this.animator.getMaxFrame();
    }

    public void setMaxProgress(final float maxProgress) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.7
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setMaxProgress(maxProgress);
                }
            });
        } else {
            setMaxFrame((int) MiscUtils.lerp(lottieComposition.getStartFrame(), this.composition.getEndFrame(), maxProgress));
        }
    }

    public void setMinFrame(final String markerName) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.8
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setMinFrame(markerName);
                }
            });
            return;
        }
        Marker marker = lottieComposition.getMarker(markerName);
        if (marker == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + markerName + ".");
        }
        setMinFrame((int) marker.startFrame);
    }

    public void setMaxFrame(final String markerName) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.9
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setMaxFrame(markerName);
                }
            });
            return;
        }
        Marker marker = lottieComposition.getMarker(markerName);
        if (marker == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + markerName + ".");
        }
        setMaxFrame((int) (marker.startFrame + marker.durationFrames));
    }

    public void setMinAndMaxFrame(final String markerName) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.10
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setMinAndMaxFrame(markerName);
                }
            });
            return;
        }
        Marker marker = lottieComposition.getMarker(markerName);
        if (marker == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + markerName + ".");
        }
        int i = (int) marker.startFrame;
        setMinAndMaxFrame(i, ((int) marker.durationFrames) + i);
    }

    public void setMinAndMaxFrame(final String startMarkerName, final String endMarkerName, final boolean playEndMarkerStartFrame) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.11
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setMinAndMaxFrame(startMarkerName, endMarkerName, playEndMarkerStartFrame);
                }
            });
            return;
        }
        Marker marker = lottieComposition.getMarker(startMarkerName);
        if (marker == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + startMarkerName + ".");
        }
        int i = (int) marker.startFrame;
        Marker marker2 = this.composition.getMarker(endMarkerName);
        if (endMarkerName == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + endMarkerName + ".");
        }
        setMinAndMaxFrame(i, (int) (marker2.startFrame + (playEndMarkerStartFrame ? 1.0f : 0.0f)));
    }

    public void setMinAndMaxFrame(final int minFrame, final int maxFrame) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.12
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setMinAndMaxFrame(minFrame, maxFrame);
                }
            });
        } else {
            this.animator.setMinAndMaxFrames(minFrame, maxFrame + 0.99f);
        }
    }

    public void setMinAndMaxProgress(final float minProgress, final float maxProgress) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.13
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setMinAndMaxProgress(minProgress, maxProgress);
                }
            });
        } else {
            setMinAndMaxFrame((int) MiscUtils.lerp(lottieComposition.getStartFrame(), this.composition.getEndFrame(), minProgress), (int) MiscUtils.lerp(this.composition.getStartFrame(), this.composition.getEndFrame(), maxProgress));
        }
    }

    public void reverseAnimationSpeed() {
        this.animator.reverseAnimationSpeed();
    }

    public void setSpeed(float speed) {
        this.animator.setSpeed(speed);
    }

    public float getSpeed() {
        return this.animator.getSpeed();
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener updateListener) {
        this.animator.addUpdateListener(updateListener);
    }

    public void removeAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener updateListener) {
        this.animator.removeUpdateListener(updateListener);
    }

    public void removeAllUpdateListeners() {
        this.animator.removeAllUpdateListeners();
        this.animator.addUpdateListener(this.progressUpdateListener);
    }

    public void addAnimatorListener(Animator.AnimatorListener listener) {
        this.animator.addListener(listener);
    }

    public void removeAnimatorListener(Animator.AnimatorListener listener) {
        this.animator.removeListener(listener);
    }

    public void removeAllAnimatorListeners() {
        this.animator.removeAllListeners();
    }

    public void setFrame(final int frame) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.14
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setFrame(frame);
                }
            });
        } else {
            this.animator.setFrame(frame);
        }
    }

    public int getFrame() {
        return (int) this.animator.getFrame();
    }

    public void setProgress(final float progress) {
        if (this.composition == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.15
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.setProgress(progress);
                }
            });
            return;
        }
        L.beginSection("Drawable#setProgress");
        this.animator.setFrame(MiscUtils.lerp(this.composition.getStartFrame(), this.composition.getEndFrame(), progress));
        L.endSection("Drawable#setProgress");
    }

    @Deprecated
    public void loop(boolean loop) {
        this.animator.setRepeatCount(loop ? -1 : 0);
    }

    public void setRepeatMode(int mode) {
        this.animator.setRepeatMode(mode);
    }

    public int getRepeatMode() {
        return this.animator.getRepeatMode();
    }

    public void setRepeatCount(int count) {
        this.animator.setRepeatCount(count);
    }

    public int getRepeatCount() {
        return this.animator.getRepeatCount();
    }

    public boolean isLooping() {
        return this.animator.getRepeatCount() == -1;
    }

    public boolean isAnimating() {
        LottieValueAnimator lottieValueAnimator = this.animator;
        if (lottieValueAnimator == null) {
            return false;
        }
        return lottieValueAnimator.isRunning();
    }

    void setSystemAnimationsAreEnabled(Boolean areEnabled) {
        this.systemAnimationsEnabled = areEnabled.booleanValue();
    }

    public void setScale(float scale) {
        this.scale = scale;
        updateBounds();
    }

    public void setImageAssetDelegate(ImageAssetDelegate assetDelegate) {
        this.imageAssetDelegate = assetDelegate;
        ImageAssetManager imageAssetManager = this.imageAssetManager;
        if (imageAssetManager != null) {
            imageAssetManager.setDelegate(assetDelegate);
        }
    }

    public void setFontAssetDelegate(FontAssetDelegate assetDelegate) {
        this.fontAssetDelegate = assetDelegate;
        FontAssetManager fontAssetManager = this.fontAssetManager;
        if (fontAssetManager != null) {
            fontAssetManager.setDelegate(assetDelegate);
        }
    }

    public void setTextDelegate(TextDelegate textDelegate) {
        this.textDelegate = textDelegate;
    }

    public TextDelegate getTextDelegate() {
        return this.textDelegate;
    }

    public boolean useTextGlyphs() {
        return this.textDelegate == null && this.composition.getCharacters().size() > 0;
    }

    public float getScale() {
        return this.scale;
    }

    public LottieComposition getComposition() {
        return this.composition;
    }

    private void updateBounds() {
        if (this.composition == null) {
            return;
        }
        float scale = getScale();
        setBounds(0, 0, (int) (this.composition.getBounds().width() * scale), (int) (this.composition.getBounds().height() * scale));
    }

    public void cancelAnimation() {
        this.lazyCompositionTasks.clear();
        this.animator.cancel();
        ImageAssetManager imageAssetManager = this.imageAssetManager;
        if (imageAssetManager != null) {
            imageAssetManager.clearImageAssetBitmap();
        }
    }

    public void clearBitmap() {
        ImageAssetManager imageAssetManager = this.imageAssetManager;
        if (imageAssetManager != null) {
            imageAssetManager.clearImageAssetBitmap();
        }
    }

    public void pauseAnimation() {
        this.lazyCompositionTasks.clear();
        this.animator.pauseAnimation();
    }

    public float getProgress() {
        return this.animator.getAnimatedValueAbsolute();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        if (this.composition == null) {
            return -1;
        }
        return (int) (this.composition.getBounds().width() * getScale());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        if (this.composition == null) {
            return -1;
        }
        return (int) (this.composition.getBounds().height() * getScale());
    }

    public List<KeyPath> resolveKeyPath(KeyPath keyPath) {
        if (this.compositionLayer == null) {
            Logger.warning("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.compositionLayer.resolveKeyPath(keyPath, 0, arrayList, new KeyPath(new String[0]));
        return arrayList;
    }

    public <T> void addValueCallback(final KeyPath keyPath, final T property, final LottieValueCallback<T> callback) {
        if (this.compositionLayer == null) {
            this.lazyCompositionTasks.add(new LazyCompositionTask() { // from class: com.geely.livewallpager.lotties.LottieDrawable.16
                @Override // com.geely.livewallpager.lotties.LottieDrawable.LazyCompositionTask
                public void run(LottieComposition composition) {
                    LottieDrawable.this.addValueCallback(keyPath, property, callback);
                }
            });
            return;
        }
        boolean zIsEmpty = true;
        if (keyPath.getResolvedElement() != null) {
            keyPath.getResolvedElement().addValueCallback(property, callback);
        } else {
            List<KeyPath> listResolveKeyPath = resolveKeyPath(keyPath);
            for (int i = 0; i < listResolveKeyPath.size(); i++) {
                listResolveKeyPath.get(i).getResolvedElement().addValueCallback(property, callback);
            }
            zIsEmpty = true ^ listResolveKeyPath.isEmpty();
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (property == LottieProperty.TIME_REMAP) {
                setProgress(getProgress());
            }
        }
    }

    public <T> void addValueCallback(KeyPath keyPath, T property, final SimpleLottieValueCallback<T> callback) {
        addValueCallback(keyPath, property, new LottieValueCallback<T>() { // from class: com.geely.livewallpager.lotties.LottieDrawable.17
            @Override // com.geely.livewallpager.lotties.value.LottieValueCallback
            public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
                return callback.getValue(lottieFrameInfo);
            }
        });
    }

    public Bitmap updateBitmap(String id, Bitmap bitmap) {
        ImageAssetManager imageAssetManager = getImageAssetManager();
        if (imageAssetManager == null) {
            Logger.warning("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
            return null;
        }
        Bitmap bitmapUpdateBitmap = imageAssetManager.updateBitmap(id, bitmap);
        invalidateSelf();
        return bitmapUpdateBitmap;
    }

    public Bitmap getImageAsset(String id) {
        ImageAssetManager imageAssetManager = getImageAssetManager();
        if (imageAssetManager != null) {
            return imageAssetManager.bitmapForId(id);
        }
        return null;
    }

    private ImageAssetManager getImageAssetManager() {
        if (getCallback() == null) {
            return null;
        }
        ImageAssetManager imageAssetManager = this.imageAssetManager;
        if (imageAssetManager != null && !imageAssetManager.hasSameContext(getContext())) {
            this.imageAssetManager = null;
        }
        if (this.imageAssetManager == null) {
            this.imageAssetManager = new ImageAssetManager(getCallback(), this.imageAssetsFolder, this.imageAssetDelegate, this.composition.getImages());
        }
        return this.imageAssetManager;
    }

    public Typeface getTypeface(String fontFamily, String style) {
        FontAssetManager fontAssetManager = getFontAssetManager();
        if (fontAssetManager != null) {
            return fontAssetManager.getTypeface(fontFamily, style);
        }
        return null;
    }

    private FontAssetManager getFontAssetManager() {
        if (getCallback() == null) {
            return null;
        }
        if (this.fontAssetManager == null) {
            this.fontAssetManager = new FontAssetManager(getCallback(), this.fontAssetDelegate);
        }
        return this.fontAssetManager;
    }

    private Context getContext() {
        Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable who) {
        Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable who, Runnable what, long when) {
        Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, what, when);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable who, Runnable what) {
        Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, what);
    }

    void setScaleType(ImageView.ScaleType scaleType) {
        this.scaleType = scaleType;
    }

    private float getMaxScale(Canvas canvas) {
        return Math.min(canvas.getWidth() / this.composition.getBounds().width(), canvas.getHeight() / this.composition.getBounds().height());
    }

    private void drawWithNewAspectRatio(Canvas canvas) {
        float f;
        if (this.compositionLayer == null) {
            return;
        }
        int iSave = -1;
        Rect bounds = getBounds();
        float fWidth = bounds.width() / this.composition.getBounds().width();
        float fHeight = bounds.height() / this.composition.getBounds().height();
        if (this.isExtraScaleEnabled) {
            float fMin = Math.min(fWidth, fHeight);
            if (fMin < 1.0f) {
                f = 1.0f / fMin;
                fWidth /= f;
                fHeight /= f;
            } else {
                f = 1.0f;
            }
            if (f > 1.0f) {
                iSave = canvas.save();
                float fWidth2 = bounds.width() / 2.0f;
                float fHeight2 = bounds.height() / 2.0f;
                float f2 = fWidth2 * fMin;
                float f3 = fMin * fHeight2;
                canvas.translate(fWidth2 - f2, fHeight2 - f3);
                canvas.scale(f, f, f2, f3);
            }
        }
        this.matrix.reset();
        this.matrix.preScale(fWidth, fHeight);
        this.compositionLayer.draw(canvas, this.matrix, this.alpha);
        if (iSave > 0) {
            canvas.restoreToCount(iSave);
        }
    }

    private void drawWithOriginalAspectRatio(Canvas canvas) {
        float f;
        if (this.compositionLayer == null) {
            return;
        }
        float f2 = this.scale;
        float maxScale = getMaxScale(canvas);
        if (f2 > maxScale) {
            f = this.scale / maxScale;
        } else {
            maxScale = f2;
            f = 1.0f;
        }
        int iSave = -1;
        if (f > 1.0f) {
            iSave = canvas.save();
            float fWidth = this.composition.getBounds().width() / 2.0f;
            float fHeight = this.composition.getBounds().height() / 2.0f;
            float f3 = fWidth * maxScale;
            float f4 = fHeight * maxScale;
            canvas.translate((getScale() * fWidth) - f3, (getScale() * fHeight) - f4);
            canvas.scale(f, f, f3, f4);
        }
        this.matrix.reset();
        this.matrix.preScale(maxScale, maxScale);
        this.compositionLayer.draw(canvas, this.matrix, this.alpha);
        if (iSave > 0) {
            canvas.restoreToCount(iSave);
        }
    }

    private static class ColorFilterData {
        final ColorFilter colorFilter;
        final String contentName;
        final String layerName;

        ColorFilterData(String layerName, String contentName, ColorFilter colorFilter) {
            this.layerName = layerName;
            this.contentName = contentName;
            this.colorFilter = colorFilter;
        }

        public int hashCode() {
            String str = this.layerName;
            int iHashCode = str != null ? 527 * str.hashCode() : 17;
            String str2 = this.contentName;
            return str2 != null ? iHashCode * 31 * str2.hashCode() : iHashCode;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ColorFilterData)) {
                return false;
            }
            ColorFilterData colorFilterData = (ColorFilterData) obj;
            return hashCode() == colorFilterData.hashCode() && this.colorFilter == colorFilterData.colorFilter;
        }
    }
}
