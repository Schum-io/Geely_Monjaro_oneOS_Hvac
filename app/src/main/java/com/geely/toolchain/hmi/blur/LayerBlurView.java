package com.geely.toolchain.hmi.blur;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import com.geely.toolchain.hmi.R;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class LayerBlurView extends FrameLayout {
    private static final int SURFACE_VIEW_OVERLAY_LAYER = -1;
    private static final String TAG = "LayerBlurView";
    private static boolean sInit;
    private static Method sSetBackgroundLayerZOrdered;
    private static Method sSetBlurAttrsMethod;
    private static Method sSetBlurBehindMethod;
    private final float CORNER_RADIUS;
    private final String blurTag;
    private SurfaceView mBlurView;
    private float mCornerRadius;

    private static int argb(float alpha, float red, float green, float blue) {
        return (((int) ((alpha * 255.0f) + 0.5f)) << 24) | (((int) ((red * 255.0f) + 0.5f)) << 16) | (((int) ((green * 255.0f) + 0.5f)) << 8) | ((int) ((blue * 255.0f) + 0.5f));
    }

    public LayerBlurView(Context context) {
        this(context, null);
    }

    public LayerBlurView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LayerBlurView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mCornerRadius = 0.0f;
        this.CORNER_RADIUS = 0.0f;
        this.blurTag = "LayerBlurView_TAG";
        init(context);
        Log.i(TAG, "LayerBlurView() called isBlurSupported = [" + isBlurSupported() + "]");
        if (isBlurSupported()) {
            SurfaceView surfaceView = new SurfaceView(context);
            this.mBlurView = surfaceView;
            surfaceView.setTag("LayerBlurView_TAG");
            enableBlurBehind(this.mBlurView);
            addView(this.mBlurView);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.LayerBlurView);
        float f = typedArrayObtainStyledAttributes.getFloat(R.styleable.LayerBlurView_blurRadius, 160.0f);
        float f2 = typedArrayObtainStyledAttributes.getFloat(R.styleable.LayerBlurView_blurLuminance, 1.0f);
        float f3 = typedArrayObtainStyledAttributes.getFloat(R.styleable.LayerBlurView_blurAlpha, 1.0f);
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.LayerBlurView_blurCornerRadiusDP, 0.0f);
        dimension = dimension == 0.0f ? typedArrayObtainStyledAttributes.getFloat(R.styleable.LayerBlurView_blurCornerRadius, 0.0f) : dimension;
        setForegroundColor(typedArrayObtainStyledAttributes.getColor(R.styleable.LayerBlurView_blurForegroundColor, 0));
        int i = typedArrayObtainStyledAttributes.getInt(R.styleable.LayerBlurView_blurZOrder, -1);
        typedArrayObtainStyledAttributes.recycle();
        setBlurAttrs(f, f2, f3, dimension);
        setBackgroundLayerZOrdered(i);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        int mode = MeasureSpec.getMode(widthMeasureSpec);
        int mode2 = MeasureSpec.getMode(heightMeasureSpec);
        int size = MeasureSpec.getSize(widthMeasureSpec);
        int size2 = MeasureSpec.getSize(heightMeasureSpec);
        int iMax = 0;
        if (getLayoutParams().width == -2 || getLayoutParams().height == -2) {
            int i = -1;
            size2 = 0;
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if ("LayerBlurView_TAG".equals(childAt.getTag())) {
                    i = i2;
                } else if (childAt.getVisibility() != 8) {
                    measureChild(childAt, widthMeasureSpec, heightMeasureSpec);
                    size2 = Math.max(size2, childAt.getMeasuredHeight());
                    iMax = Math.max(iMax, childAt.getMeasuredWidth());
                }
            }
            if (mode == Integer.MIN_VALUE) {
                widthMeasureSpec = MeasureSpec.makeMeasureSpec(iMax, MeasureSpec.EXACTLY);
            }
            if (mode2 == Integer.MIN_VALUE) {
                heightMeasureSpec = MeasureSpec.makeMeasureSpec(size2, MeasureSpec.EXACTLY);
            }

            if (i != -1) {
                measureChild(getChildAt(i), widthMeasureSpec, heightMeasureSpec);
            }
            Log.d(TAG, "wrapcontentMeasure: widthSize" + iMax + ", heightSize:" + size2);
            size = iMax;
        }
        setMeasuredDimension(size, size2);
        Log.d(TAG, "onMeasure: widthSize" + size + ", heightSize:" + size2);
    }

    public void setBlurAttrs(float blurRadius, float luminance, float alpha, float cornerRadius) {
        this.mCornerRadius = cornerRadius;
        if (getSystemPropertyBoolean("persist.sys.layerblur.enable", true) && isBlurSupported()) {
            setBlurAttrs(this.mBlurView, blurRadius, luminance, alpha, (1.1f * cornerRadius) + 0.8f);
        } else {
            Log.e(TAG, "system is not support layer blur");
            RoundedDrawable roundedDrawable = new RoundedDrawable();
            roundedDrawable.setDrawable(new ColorDrawable(argb(1.0f - luminance, 0.0f, 0.0f, 0.0f)));
            roundedDrawable.setRadius((int) cornerRadius);
            setBackground(roundedDrawable);
        }
        Drawable foreground = getForeground();
        if (foreground instanceof RoundedDrawable) {
            ((RoundedDrawable) foreground).setRadius((int) cornerRadius);
        }
    }

    @Override // android.view.View
    public void setForeground(Drawable foreground) {
        if (foreground != null) {
            RoundedDrawable roundedDrawable = new RoundedDrawable();
            roundedDrawable.setRadius((int) this.mCornerRadius);
            roundedDrawable.setDrawable(foreground);
            super.setForeground(roundedDrawable);
            return;
        }
        super.setForeground(foreground);
    }

    public SurfaceView getBlurView() {
        return this.mBlurView;
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        SurfaceView surfaceView = this.mBlurView;
        if (surfaceView == null) {
            return;
        }
        surfaceView.setVisibility(visibility);
    }

    public void setForegroundColor(int color) {
        setForeground(new ColorDrawable(color));
    }

    public void setBackgroundLayerZOrdered(int z) {
        setBackgroundLayerZOrdered(this.mBlurView, z);
    }

    private static void init(Context context) {
        if (sInit) {
            return;
        }
        sInit = true;
        ReflectUtils.bypassHiddenApi(context);
        try {
            sSetBlurBehindMethod = ReflectUtils.from((Class<?>) SurfaceView.class).method("setBlurBehind", Boolean.TYPE).method();
            sSetBlurAttrsMethod = ReflectUtils.from((Class<?>) SurfaceView.class).method("setBlurAttrs", Float.TYPE, Float.TYPE, Float.TYPE, Float.TYPE).method();
        } catch (Exception e) {
            Log.e(TAG, "system is not support layer blur", e);
        }
        try {
            sSetBackgroundLayerZOrdered = ReflectUtils.from((Class<?>) SurfaceView.class).method("setBackgroundLayerZOrdered", Integer.TYPE).method();
        } catch (Exception e2) {
            Log.e(TAG, "system is not support setBackgroundLayerZOrdered", e2);
        }
    }

    private static boolean isBlurSupported() {
        return (sSetBlurBehindMethod == null || sSetBlurAttrsMethod == null) ? false : true;
    }

    private static void enableBlurBehind(SurfaceView surfaceView) {
        Method method;
        if (surfaceView == null || (method = sSetBlurBehindMethod) == null) {
            return;
        }
        try {
            method.invoke(surfaceView, true);
        } catch (Exception e) {
            Log.e(TAG, "setBlurBehind failed", e);
        }
    }

    private static void setBlurAttrs(SurfaceView surfaceView, float blurRadius, float luminance, float alpha, float cornerRadius) {
        Method method;
        if (surfaceView == null || (method = sSetBlurAttrsMethod) == null) {
            return;
        }
        try {
            method.invoke(surfaceView, Float.valueOf(blurRadius), Float.valueOf(luminance), Float.valueOf(alpha), Float.valueOf(Math.max(1.0f, cornerRadius)));
        } catch (Exception e) {
            Log.e(TAG, "setBlurBehind failed", e);
        }
    }

    private static void setBackgroundLayerZOrdered(SurfaceView surfaceView, int z) {
        if (surfaceView == null) {
            return;
        }
        Method method = sSetBackgroundLayerZOrdered;
        if (method == null) {
            Log.e(TAG, "system is not support setBackgroundLayerZOrdered");
            return;
        }
        try {
            method.invoke(surfaceView, Integer.valueOf(z));
        } catch (Exception e) {
            Log.e(TAG, "setBackgroundLayerZOrdered failed", e);
        }
    }

    private static boolean getSystemPropertyBoolean(String key, boolean defaultValue) {
        try {
            Class<?> systemPropertiesClass = Class.forName("android.os.SystemProperties");
            Method getBooleanMethod = systemPropertiesClass.getMethod("getBoolean", String.class, boolean.class);
            return (boolean) getBooleanMethod.invoke(null, key, defaultValue);
        } catch (Exception e) {
            // This will be logged if the class or method is not found.
            Log.e(TAG, "Failed to get system property " + key, e);
            // Return the default value if reflection fails
            return defaultValue;
        }
    }
}