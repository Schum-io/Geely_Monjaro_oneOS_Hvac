package com.geely.livewallpager.lotties;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.view.ViewCompat;
import com.geely.hvac.R;
import com.geely.livewallpager.lotties.model.KeyPath;
import com.geely.livewallpager.lotties.utils.Logger;
import com.geely.livewallpager.lotties.utils.Utils;
import com.geely.livewallpager.lotties.value.LottieFrameInfo;
import com.geely.livewallpager.lotties.value.LottieValueCallback;
import com.geely.livewallpager.lotties.value.SimpleLottieValueCallback;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class LottieAnimationView extends AppCompatImageView {
    private static final LottieListener<Throwable> DEFAULT_FAILURE_LISTENER = new LottieListener<Throwable>() { // from class: com.geely.livewallpager.lotties.LottieAnimationView.1
        @Override // com.geely.livewallpager.lotties.LottieListener
        public void onResult(Throwable throwable) {
            if (Utils.isNetworkException(throwable)) {
                Logger.warning("Unable to load composition.", throwable);
                return;
            }
            throw new IllegalStateException("Unable to parse composition", throwable);
        }
    };
    private static final String TAG = "LottieAnimationView";
    private String animationName;
    private int animationResId;
    private boolean autoPlay;
    private int buildDrawingCacheDepth;
    private boolean cacheComposition;
    private LottieComposition composition;
    private LottieTask<LottieComposition> compositionTask;
    private LottieListener<Throwable> failureListener;
    private int fallbackResource;
    private boolean isInitialized;
    private final LottieListener<LottieComposition> loadedListener;
    private final LottieDrawable lottieDrawable;
    private Set<LottieOnCompositionLoadedListener> lottieOnCompositionLoadedListeners;
    private boolean playAnimationWhenShown;
    private RenderMode renderMode;
    private boolean wasAnimatingWhenDetached;
    private boolean wasAnimatingWhenNotShown;
    private final LottieListener<Throwable> wrappedFailureListener;

    public LottieAnimationView(Context context) {
        super(context);
        this.loadedListener = new LottieListener<LottieComposition>() { // from class: com.geely.livewallpager.lotties.LottieAnimationView.2
            @Override // com.geely.livewallpager.lotties.LottieListener
            public void onResult(LottieComposition composition) {
                LottieAnimationView.this.setComposition(composition);
            }
        };
        this.wrappedFailureListener = new LottieListener<Throwable>() { // from class: com.geely.livewallpager.lotties.LottieAnimationView.3
            @Override // com.geely.livewallpager.lotties.LottieListener
            public void onResult(Throwable result) {
                if (LottieAnimationView.this.fallbackResource != 0) {
                    LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                    lottieAnimationView.setImageResource(lottieAnimationView.fallbackResource);
                }
                (LottieAnimationView.this.failureListener == null ? LottieAnimationView.DEFAULT_FAILURE_LISTENER : LottieAnimationView.this.failureListener).onResult(result);
            }
        };
        this.fallbackResource = 0;
        this.lottieDrawable = new LottieDrawable();
        this.playAnimationWhenShown = false;
        this.wasAnimatingWhenNotShown = false;
        this.wasAnimatingWhenDetached = false;
        this.autoPlay = false;
        this.cacheComposition = true;
        this.renderMode = RenderMode.AUTOMATIC;
        this.lottieOnCompositionLoadedListeners = new HashSet();
        this.buildDrawingCacheDepth = 0;
        init(null);
    }

    public LottieAnimationView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.loadedListener = new LottieListener<LottieComposition>() { // from class: com.geely.livewallpager.lotties.LottieAnimationView.2
            @Override // com.geely.livewallpager.lotties.LottieListener
            public void onResult(LottieComposition composition) {
                LottieAnimationView.this.setComposition(composition);
            }
        };
        this.wrappedFailureListener = new LottieListener<Throwable>() { // from class: com.geely.livewallpager.lotties.LottieAnimationView.3
            @Override // com.geely.livewallpager.lotties.LottieListener
            public void onResult(Throwable result) {
                if (LottieAnimationView.this.fallbackResource != 0) {
                    LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                    lottieAnimationView.setImageResource(lottieAnimationView.fallbackResource);
                }
                (LottieAnimationView.this.failureListener == null ? LottieAnimationView.DEFAULT_FAILURE_LISTENER : LottieAnimationView.this.failureListener).onResult(result);
            }
        };
        this.fallbackResource = 0;
        this.lottieDrawable = new LottieDrawable();
        this.playAnimationWhenShown = false;
        this.wasAnimatingWhenNotShown = false;
        this.wasAnimatingWhenDetached = false;
        this.autoPlay = false;
        this.cacheComposition = true;
        this.renderMode = RenderMode.AUTOMATIC;
        this.lottieOnCompositionLoadedListeners = new HashSet();
        this.buildDrawingCacheDepth = 0;
        init(attrs);
    }

    public LottieAnimationView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.loadedListener = new LottieListener<LottieComposition>() { // from class: com.geely.livewallpager.lotties.LottieAnimationView.2
            @Override // com.geely.livewallpager.lotties.LottieListener
            public void onResult(LottieComposition composition) {
                LottieAnimationView.this.setComposition(composition);
            }
        };
        this.wrappedFailureListener = new LottieListener<Throwable>() { // from class: com.geely.livewallpager.lotties.LottieAnimationView.3
            @Override // com.geely.livewallpager.lotties.LottieListener
            public void onResult(Throwable result) {
                if (LottieAnimationView.this.fallbackResource != 0) {
                    LottieAnimationView lottieAnimationView = LottieAnimationView.this;
                    lottieAnimationView.setImageResource(lottieAnimationView.fallbackResource);
                }
                (LottieAnimationView.this.failureListener == null ? LottieAnimationView.DEFAULT_FAILURE_LISTENER : LottieAnimationView.this.failureListener).onResult(result);
            }
        };
        this.fallbackResource = 0;
        this.lottieDrawable = new LottieDrawable();
        this.playAnimationWhenShown = false;
        this.wasAnimatingWhenNotShown = false;
        this.wasAnimatingWhenDetached = false;
        this.autoPlay = false;
        this.cacheComposition = true;
        this.renderMode = RenderMode.AUTOMATIC;
        this.lottieOnCompositionLoadedListeners = new HashSet();
        this.buildDrawingCacheDepth = 0;
        init(attrs);
    }

    private void init(AttributeSet attrs) {
        String string;
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attrs, R.styleable.LottieAnimationView);
        if (!isInEditMode()) {
            this.cacheComposition = typedArrayObtainStyledAttributes.getBoolean(2, true);
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(13);
            boolean zHasValue2 = typedArrayObtainStyledAttributes.hasValue(8);
            boolean zHasValue3 = typedArrayObtainStyledAttributes.hasValue(19);
            if (zHasValue && zHasValue2) {
                throw new IllegalArgumentException("lottie_rawRes and lottie_fileName cannot be used at the same time. Please use only one at once.");
            }
            if (zHasValue) {
                int resourceId = typedArrayObtainStyledAttributes.getResourceId(13, 0);
                if (resourceId != 0) {
                    setAnimation(resourceId);
                }
            } else if (zHasValue2) {
                String string2 = typedArrayObtainStyledAttributes.getString(8);
                if (string2 != null) {
                    setAnimation(string2);
                }
            } else if (zHasValue3 && (string = typedArrayObtainStyledAttributes.getString(19)) != null) {
                setAnimationFromUrl(string);
            }
            setFallbackResource(typedArrayObtainStyledAttributes.getResourceId(7, 0));
        }
        if (typedArrayObtainStyledAttributes.getBoolean(1, false)) {
            this.wasAnimatingWhenDetached = true;
            this.autoPlay = true;
        }
        if (typedArrayObtainStyledAttributes.getBoolean(11, false)) {
            this.lottieDrawable.setRepeatCount(-1);
        }
        if (typedArrayObtainStyledAttributes.hasValue(16)) {
            setRepeatMode(typedArrayObtainStyledAttributes.getInt(16, 1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(15)) {
            setRepeatCount(typedArrayObtainStyledAttributes.getInt(15, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(18)) {
            setSpeed(typedArrayObtainStyledAttributes.getFloat(18, 1.0f));
        }
        setImageAssetsFolder(typedArrayObtainStyledAttributes.getString(10));
        setProgress(typedArrayObtainStyledAttributes.getFloat(12, 0.0f));
        enableMergePathsForKitKatAndAbove(typedArrayObtainStyledAttributes.getBoolean(6, false));
        if (typedArrayObtainStyledAttributes.hasValue(4)) {
            addValueCallback(new KeyPath("**"), LottieProperty.COLOR_FILTER, new LottieValueCallback<>(new SimpleColorFilter(typedArrayObtainStyledAttributes.getColor(4, 0))));
        }
        if (typedArrayObtainStyledAttributes.hasValue(17)) {
            this.lottieDrawable.setScale(typedArrayObtainStyledAttributes.getFloat(17, 1.0f));
        }
        if (typedArrayObtainStyledAttributes.hasValue(14)) {
            int iOrdinal = typedArrayObtainStyledAttributes.getInt(14, RenderMode.AUTOMATIC.ordinal());
            if (iOrdinal >= RenderMode.values().length) {
                iOrdinal = RenderMode.AUTOMATIC.ordinal();
            }
            setRenderMode(RenderMode.values()[iOrdinal]);
        }
        if (getScaleType() != null) {
            this.lottieDrawable.setScaleType(getScaleType());
        }
        typedArrayObtainStyledAttributes.recycle();
        this.lottieDrawable.setSystemAnimationsAreEnabled(Boolean.valueOf(Utils.getAnimationScale(getContext()) != 0.0f));
        enableOrDisableHardwareLayer();
        this.isInitialized = true;
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageResource(int resId) {
        cancelLoaderTask();
        super.setImageResource(resId);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        cancelLoaderTask();
        super.setImageDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView
    public void setImageBitmap(Bitmap bm) {
        cancelLoaderTask();
        super.setImageBitmap(bm);
    }

    @Override // android.widget.ImageView, android.view.View, android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable dr) {
        Drawable drawable = getDrawable();
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (drawable == lottieDrawable) {
            super.invalidateDrawable(lottieDrawable);
        } else {
            super.invalidateDrawable(dr);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.animationName = this.animationName;
        savedState.animationResId = this.animationResId;
        savedState.progress = this.lottieDrawable.getProgress();
        savedState.isAnimating = this.lottieDrawable.isAnimating() || (!ViewCompat.isAttachedToWindow(this) && this.wasAnimatingWhenDetached);
        savedState.imageAssetsFolder = this.lottieDrawable.getImageAssetsFolder();
        savedState.repeatMode = this.lottieDrawable.getRepeatMode();
        savedState.repeatCount = this.lottieDrawable.getRepeatCount();
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        String str = savedState.animationName;
        this.animationName = str;
        if (!TextUtils.isEmpty(str)) {
            setAnimation(this.animationName);
        }
        int i = savedState.animationResId;
        this.animationResId = i;
        if (i != 0) {
            setAnimation(i);
        }
        setProgress(savedState.progress);
        if (savedState.isAnimating) {
            playAnimation();
        }
        this.lottieDrawable.setImagesAssetsFolder(savedState.imageAssetsFolder);
        setRepeatMode(savedState.repeatMode);
        setRepeatCount(savedState.repeatCount);
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        if (this.isInitialized) {
            if (isShown()) {
                if (this.wasAnimatingWhenNotShown) {
                    resumeAnimation();
                } else if (this.playAnimationWhenShown) {
                    playAnimation();
                }
                this.wasAnimatingWhenNotShown = false;
                this.playAnimationWhenShown = false;
                return;
            }
            if (isAnimating()) {
                pauseAnimation();
                this.wasAnimatingWhenNotShown = true;
            }
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.autoPlay || this.wasAnimatingWhenDetached) {
            playAnimation();
            this.autoPlay = false;
            this.wasAnimatingWhenDetached = false;
        }
        if (Build.VERSION.SDK_INT < 23) {
            onVisibilityChanged(this, getVisibility());
        }
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDetachedFromWindow() {
        if (isAnimating()) {
            cancelAnimation();
            this.wasAnimatingWhenDetached = true;
        }
        super.onDetachedFromWindow();
    }

    public void enableMergePathsForKitKatAndAbove(boolean enable) {
        this.lottieDrawable.enableMergePathsForKitKatAndAbove(enable);
    }

    public boolean isMergePathsEnabledForKitKatAndAbove() {
        return this.lottieDrawable.isMergePathsEnabledForKitKatAndAbove();
    }

    public void setCacheComposition(boolean cacheComposition) {
        this.cacheComposition = cacheComposition;
    }

    public void setAnimation(final int rawRes) {
        this.animationResId = rawRes;
        this.animationName = null;
        setCompositionTask(this.cacheComposition ? LottieCompositionFactory.fromRawRes(getContext(), rawRes) : LottieCompositionFactory.fromRawRes(getContext(), rawRes, null));
    }

    public void setAnimation(final String assetName) {
        this.animationName = assetName;
        this.animationResId = 0;
        setCompositionTask(this.cacheComposition ? LottieCompositionFactory.fromAsset(getContext(), assetName) : LottieCompositionFactory.fromAsset(getContext(), assetName, null));
    }

    @Deprecated
    public void setAnimationFromJson(String jsonString) {
        setAnimationFromJson(jsonString, null);
    }

    public void setAnimationFromJson(String jsonString, String cacheKey) {
        setAnimation(new ByteArrayInputStream(jsonString.getBytes()), cacheKey);
    }

    public void setAnimation(InputStream stream, String cacheKey) {
        setCompositionTask(LottieCompositionFactory.fromJsonInputStream(stream, cacheKey));
    }

    public void setAnimationFromUrl(String url) {
        setCompositionTask(this.cacheComposition ? LottieCompositionFactory.fromUrl(getContext(), url) : LottieCompositionFactory.fromUrl(getContext(), url, null));
    }

    public void setAnimationFromUrl(String url, String cacheKey) {
        setCompositionTask(LottieCompositionFactory.fromUrl(getContext(), url, cacheKey));
    }

    public void setFailureListener(LottieListener<Throwable> failureListener) {
        this.failureListener = failureListener;
    }

    public void setFallbackResource(int fallbackResource) {
        this.fallbackResource = fallbackResource;
    }

    private void setCompositionTask(LottieTask<LottieComposition> compositionTask) {
        clearComposition();
        cancelLoaderTask();
        this.compositionTask = compositionTask.addListener(this.loadedListener).addFailureListener(this.wrappedFailureListener);
    }

    private void cancelLoaderTask() {
        LottieTask<LottieComposition> lottieTask = this.compositionTask;
        if (lottieTask != null) {
            lottieTask.removeListener(this.loadedListener);
            this.compositionTask.removeFailureListener(this.wrappedFailureListener);
        }
    }

    public void setComposition(LottieComposition composition) {
        if (L.DBG) {
            Log.v(TAG, "Set Composition \n" + composition);
        }
        this.lottieDrawable.setCallback(this);
        this.composition = composition;
        boolean composition2 = this.lottieDrawable.setComposition(composition);
        enableOrDisableHardwareLayer();
        if (getDrawable() != this.lottieDrawable || composition2) {
            onVisibilityChanged(this, getVisibility());
            requestLayout();
            Iterator<LottieOnCompositionLoadedListener> it = this.lottieOnCompositionLoadedListeners.iterator();
            while (it.hasNext()) {
                it.next().onCompositionLoaded(composition);
            }
        }
    }

    public LottieComposition getComposition() {
        return this.composition;
    }

    public boolean hasMasks() {
        return this.lottieDrawable.hasMasks();
    }

    public boolean hasMatte() {
        return this.lottieDrawable.hasMatte();
    }

    public void playAnimation() {
        if (isShown()) {
            this.lottieDrawable.playAnimation();
            enableOrDisableHardwareLayer();
        } else {
            this.playAnimationWhenShown = true;
        }
    }

    public void resumeAnimation() {
        if (isShown()) {
            this.lottieDrawable.resumeAnimation();
            enableOrDisableHardwareLayer();
        } else {
            this.playAnimationWhenShown = false;
            this.wasAnimatingWhenNotShown = true;
        }
    }

    public void setMinFrame(int startFrame) {
        this.lottieDrawable.setMinFrame(startFrame);
    }

    public float getMinFrame() {
        return this.lottieDrawable.getMinFrame();
    }

    public void setMinProgress(float startProgress) {
        this.lottieDrawable.setMinProgress(startProgress);
    }

    public void setMaxFrame(int endFrame) {
        this.lottieDrawable.setMaxFrame(endFrame);
    }

    public float getMaxFrame() {
        return this.lottieDrawable.getMaxFrame();
    }

    public void setMaxProgress(float endProgress) {
        this.lottieDrawable.setMaxProgress(endProgress);
    }

    public void setMinFrame(String markerName) {
        this.lottieDrawable.setMinFrame(markerName);
    }

    public void setMaxFrame(String markerName) {
        this.lottieDrawable.setMaxFrame(markerName);
    }

    public void setMinAndMaxFrame(String markerName) {
        this.lottieDrawable.setMinAndMaxFrame(markerName);
    }

    public void setMinAndMaxFrame(final String startMarkerName, final String endMarkerName, final boolean playEndMarkerStartFrame) {
        this.lottieDrawable.setMinAndMaxFrame(startMarkerName, endMarkerName, playEndMarkerStartFrame);
    }

    public void setMinAndMaxFrame(int minFrame, int maxFrame) {
        this.lottieDrawable.setMinAndMaxFrame(minFrame, maxFrame);
    }

    public void setMinAndMaxProgress(float minProgress, float maxProgress) {
        this.lottieDrawable.setMinAndMaxProgress(minProgress, maxProgress);
    }

    public void reverseAnimationSpeed() {
        this.lottieDrawable.reverseAnimationSpeed();
    }

    public void setSpeed(float speed) {
        this.lottieDrawable.setSpeed(speed);
    }

    public float getSpeed() {
        return this.lottieDrawable.getSpeed();
    }

    public void addAnimatorUpdateListener(ValueAnimator.AnimatorUpdateListener updateListener) {
        this.lottieDrawable.addAnimatorUpdateListener(updateListener);
    }

    public void removeUpdateListener(ValueAnimator.AnimatorUpdateListener updateListener) {
        this.lottieDrawable.removeAnimatorUpdateListener(updateListener);
    }

    public void removeAllUpdateListeners() {
        this.lottieDrawable.removeAllUpdateListeners();
    }

    public void addAnimatorListener(Animator.AnimatorListener listener) {
        this.lottieDrawable.addAnimatorListener(listener);
    }

    public void removeAnimatorListener(Animator.AnimatorListener listener) {
        this.lottieDrawable.removeAnimatorListener(listener);
    }

    public void removeAllAnimatorListeners() {
        this.lottieDrawable.removeAllAnimatorListeners();
    }

    @Deprecated
    public void loop(boolean loop) {
        this.lottieDrawable.setRepeatCount(loop ? -1 : 0);
    }

    public void setRepeatMode(int mode) {
        this.lottieDrawable.setRepeatMode(mode);
    }

    public int getRepeatMode() {
        return this.lottieDrawable.getRepeatMode();
    }

    public void setRepeatCount(int count) {
        this.lottieDrawable.setRepeatCount(count);
    }

    public int getRepeatCount() {
        return this.lottieDrawable.getRepeatCount();
    }

    public boolean isAnimating() {
        return this.lottieDrawable.isAnimating();
    }

    public void setImageAssetsFolder(String imageAssetsFolder) {
        this.lottieDrawable.setImagesAssetsFolder(imageAssetsFolder);
    }

    public String getImageAssetsFolder() {
        return this.lottieDrawable.getImageAssetsFolder();
    }

    public Bitmap updateBitmap(String id, Bitmap bitmap) {
        return this.lottieDrawable.updateBitmap(id, bitmap);
    }

    public void setImageAssetDelegate(ImageAssetDelegate assetDelegate) {
        this.lottieDrawable.setImageAssetDelegate(assetDelegate);
    }

    public void setFontAssetDelegate(FontAssetDelegate assetDelegate) {
        this.lottieDrawable.setFontAssetDelegate(assetDelegate);
    }

    public void setTextDelegate(TextDelegate textDelegate) {
        this.lottieDrawable.setTextDelegate(textDelegate);
    }

    public List<KeyPath> resolveKeyPath(KeyPath keyPath) {
        return this.lottieDrawable.resolveKeyPath(keyPath);
    }

    public <T> void addValueCallback(KeyPath keyPath, T property, LottieValueCallback<T> callback) {
        this.lottieDrawable.addValueCallback(keyPath, property, callback);
    }

    public <T> void addValueCallback(KeyPath keyPath, T property, final SimpleLottieValueCallback<T> callback) {
        this.lottieDrawable.addValueCallback(keyPath, property, new LottieValueCallback<T>() { // from class: com.geely.livewallpager.lotties.LottieAnimationView.4
            @Override // com.geely.livewallpager.lotties.value.LottieValueCallback
            public T getValue(LottieFrameInfo<T> lottieFrameInfo) {
                return (T) callback.getValue(lottieFrameInfo);
            }
        });
    }

    public void setScale(float scale) {
        this.lottieDrawable.setScale(scale);
        if (getDrawable() == this.lottieDrawable) {
            setImageDrawable(null);
            setImageDrawable(this.lottieDrawable);
        }
    }

    public float getScale() {
        return this.lottieDrawable.getScale();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ScaleType scaleType) {
        super.setScaleType(scaleType);
        LottieDrawable lottieDrawable = this.lottieDrawable;
        if (lottieDrawable != null) {
            lottieDrawable.setScaleType(scaleType);
        }
    }

    public void cancelAnimation() {
        this.wasAnimatingWhenDetached = false;
        this.wasAnimatingWhenNotShown = false;
        this.playAnimationWhenShown = false;
        this.lottieDrawable.cancelAnimation();
        enableOrDisableHardwareLayer();
    }

    public void pauseAnimation() {
        this.autoPlay = false;
        this.wasAnimatingWhenDetached = false;
        this.wasAnimatingWhenNotShown = false;
        this.playAnimationWhenShown = false;
        this.lottieDrawable.pauseAnimation();
        enableOrDisableHardwareLayer();
    }

    public void clearBitmap() {
        this.lottieDrawable.clearBitmap();
    }

    public void setFrame(int frame) {
        this.lottieDrawable.setFrame(frame);
    }

    public int getFrame() {
        return this.lottieDrawable.getFrame();
    }

    public void setProgress(float progress) {
        this.lottieDrawable.setProgress(progress);
    }

    public float getProgress() {
        return this.lottieDrawable.getProgress();
    }

    public long getDuration() {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition != null) {
            return (long) lottieComposition.getDuration();
        }
        return 0L;
    }

    public void setPerformanceTrackingEnabled(boolean enabled) {
        this.lottieDrawable.setPerformanceTrackingEnabled(enabled);
    }

    public PerformanceTracker getPerformanceTracker() {
        return this.lottieDrawable.getPerformanceTracker();
    }

    private void clearComposition() {
        this.composition = null;
        this.lottieDrawable.clearComposition();
    }

    public void setSafeMode(boolean safeMode) {
        this.lottieDrawable.setSafeMode(safeMode);
    }

    @Override // android.view.View
    public void buildDrawingCache(boolean autoScale) {
        L.beginSection("buildDrawingCache");
        this.buildDrawingCacheDepth++;
        super.buildDrawingCache(autoScale);
        if (this.buildDrawingCacheDepth == 1 && getWidth() > 0 && getHeight() > 0 && getLayerType() == 1 && getDrawingCache(autoScale) == null) {
            setRenderMode(RenderMode.HARDWARE);
        }
        this.buildDrawingCacheDepth--;
        L.endSection("buildDrawingCache");
    }

    public void setRenderMode(RenderMode renderMode) {
        this.renderMode = renderMode;
        enableOrDisableHardwareLayer();
    }

    public void setApplyingOpacityToLayersEnabled(boolean isApplyingOpacityToLayersEnabled) {
        this.lottieDrawable.setApplyingOpacityToLayersEnabled(isApplyingOpacityToLayersEnabled);
    }

    public void disableExtraScaleModeInFitXY() {
        this.lottieDrawable.disableExtraScaleModeInFitXY();
    }

    /* renamed from: com.geely.livewallpager.lotties.LottieAnimationView$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$geely$livewallpager$lotties$RenderMode;

        static {
            int[] iArr = new int[RenderMode.values().length];
            $SwitchMap$com$geely$livewallpager$lotties$RenderMode = iArr;
            try {
                iArr[RenderMode.HARDWARE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$RenderMode[RenderMode.SOFTWARE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$RenderMode[RenderMode.AUTOMATIC.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void enableOrDisableHardwareLayer() {
        /*
            r5 = this;
            int[] r0 = com.geely.livewallpager.lotties.LottieAnimationView.AnonymousClass5.$SwitchMap$com$geely$livewallpager$lotties$RenderMode
            com.geely.livewallpager.lotties.RenderMode r1 = r5.renderMode
            int r1 = r1.ordinal()
            r0 = r0[r1]
            r1 = 2
            r2 = 1
            if (r0 == r2) goto L3d
            if (r0 == r1) goto L13
            r3 = 3
            if (r0 == r3) goto L15
        L13:
            r1 = r2
            goto L3d
        L15:
            com.geely.livewallpager.lotties.LottieComposition r0 = r5.composition
            r3 = 0
            if (r0 == 0) goto L27
            boolean r0 = r0.hasDashPattern()
            if (r0 == 0) goto L27
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 28
            if (r0 >= r4) goto L27
            goto L3b
        L27:
            com.geely.livewallpager.lotties.LottieComposition r0 = r5.composition
            if (r0 == 0) goto L33
            int r0 = r0.getMaskAndMatteCount()
            r4 = 4
            if (r0 <= r4) goto L33
            goto L3b
        L33:
            int r0 = android.os.Build.VERSION.SDK_INT
            r4 = 21
            if (r0 >= r4) goto L3a
            goto L3b
        L3a:
            r3 = r2
        L3b:
            if (r3 == 0) goto L13
        L3d:
            int r0 = r5.getLayerType()
            if (r1 == r0) goto L47
            r0 = 0
            r5.setLayerType(r1, r0)
        L47:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.geely.livewallpager.lotties.LottieAnimationView.enableOrDisableHardwareLayer():void");
    }

    public boolean addLottieOnCompositionLoadedListener(LottieOnCompositionLoadedListener lottieOnCompositionLoadedListener) {
        LottieComposition lottieComposition = this.composition;
        if (lottieComposition != null) {
            lottieOnCompositionLoadedListener.onCompositionLoaded(lottieComposition);
        }
        return this.lottieOnCompositionLoadedListeners.add(lottieOnCompositionLoadedListener);
    }

    public boolean removeLottieOnCompositionLoadedListener(LottieOnCompositionLoadedListener lottieOnCompositionLoadedListener) {
        return this.lottieOnCompositionLoadedListeners.remove(lottieOnCompositionLoadedListener);
    }

    public void removeAllLottieOnCompositionLoadedListener() {
        this.lottieOnCompositionLoadedListeners.clear();
    }

    private static class SavedState extends BaseSavedState {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() { // from class: com.geely.livewallpager.lotties.LottieAnimationView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        String animationName;
        int animationResId;
        String imageAssetsFolder;
        boolean isAnimating;
        float progress;
        int repeatCount;
        int repeatMode;

        SavedState(Parcelable superState) {
            super(superState);
        }

        private SavedState(Parcel in) {
            super(in);
            this.animationName = in.readString();
            this.progress = in.readFloat();
            this.isAnimating = in.readInt() == 1;
            this.imageAssetsFolder = in.readString();
            this.repeatMode = in.readInt();
            this.repeatCount = in.readInt();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeString(this.animationName);
            parcel.writeFloat(this.progress);
            parcel.writeInt(this.isAnimating ? 1 : 0);
            parcel.writeString(this.imageAssetsFolder);
            parcel.writeInt(this.repeatMode);
            parcel.writeInt(this.repeatCount);
        }
    }
}
