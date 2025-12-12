package com.geely.toolchain.hmi.view;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.geely.toolchain.hmi.blur.LayerBlurView;
import com.geely.toolchain.hmi.view.card.CardViewApi21Impl;
import com.geely.toolchain.hmi.view.card.CardViewDelegate;
import com.geely.toolchain.hmi.view.card.CardViewImpl;

/* loaded from: classes.dex */
public class HmiShadowLayerBlurView extends LayerBlurView {
    private static final int[] COLOR_BACKGROUND_ATTR = {R.attr.colorBackground};
    private static final CardViewImpl IMPL;
    private static final String TAG = "HmiShadowLayerBlurView";
    private final CardViewDelegate mCardViewDelegate;
    final Rect mContentPadding;
    final Rect mShadowBounds;
    int mUserSetMinHeight;
    int mUserSetMinWidth;

    static {
        CardViewApi21Impl cardViewApi21Impl = new CardViewApi21Impl();
        IMPL = cardViewApi21Impl;
        cardViewApi21Impl.initStatic();
    }

    public HmiShadowLayerBlurView(Context context) {
        this(context, null);
    }

    public HmiShadowLayerBlurView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiShadowLayerBlurView(Context context, AttributeSet attrs, int defStyleAttr) throws Resources.NotFoundException {
        super(context, attrs, defStyleAttr);
        int color;
        this.mContentPadding = new Rect();
        this.mShadowBounds = new Rect();
        CardViewDelegate cardViewDelegate = new CardViewDelegate() {
            private Drawable mCardBackground;

            @Override // com.geely.toolchain.hmi.view.card.CardViewDelegate
            public boolean getPreventCornerOverlap() {
                return false;
            }

            @Override // com.geely.toolchain.hmi.view.card.CardViewDelegate
            public boolean getUseCompatPadding() {
                return false;
            }

            @Override // com.geely.toolchain.hmi.view.card.CardViewDelegate
            public void setCardBackground(Drawable drawable) {
                this.mCardBackground = drawable;
                HmiShadowLayerBlurView.this.setBackground(drawable);
            }

            @Override // com.geely.toolchain.hmi.view.card.CardViewDelegate
            public void setShadowPadding(int left, int top, int right, int bottom) {
                HmiShadowLayerBlurView.this.mShadowBounds.set(left, top, right, bottom);
                HmiShadowLayerBlurView hmiShadowLayerBlurView = HmiShadowLayerBlurView.this;
                HmiShadowLayerBlurView.super.setPadding(left + hmiShadowLayerBlurView.mContentPadding.left, top + HmiShadowLayerBlurView.this.mContentPadding.top, right + HmiShadowLayerBlurView.this.mContentPadding.right, bottom + HmiShadowLayerBlurView.this.mContentPadding.bottom);
            }

            @Override // com.geely.toolchain.hmi.view.card.CardViewDelegate
            public void setMinWidthHeightInternal(int width, int height) {
                if (width > HmiShadowLayerBlurView.this.mUserSetMinWidth) {
                    HmiShadowLayerBlurView.super.setMinimumWidth(width);
                }
                if (height > HmiShadowLayerBlurView.this.mUserSetMinHeight) {
                    HmiShadowLayerBlurView.super.setMinimumHeight(height);
                }
            }

            @Override // com.geely.toolchain.hmi.view.card.CardViewDelegate
            public Drawable getCardBackground() {
                return this.mCardBackground;
            }

            @Override // com.geely.toolchain.hmi.view.card.CardViewDelegate
            public View getCardView() {
                return HmiShadowLayerBlurView.this;
            }
        };
        this.mCardViewDelegate = cardViewDelegate;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, com.geely.toolchain.hmi.R.styleable.HmiShadowLayerBlurView);
        float dimension = typedArrayObtainStyledAttributes.getDimension(com.geely.toolchain.hmi.R.styleable.HmiShadowLayerBlurView_hmiElevation, 5.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(com.geely.toolchain.hmi.R.styleable.HmiShadowLayerBlurView_hmiRadius, 0.0f);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(COLOR_BACKGROUND_ATTR);
        int color2 = typedArrayObtainStyledAttributes2.getColor(0, 0);
        typedArrayObtainStyledAttributes2.recycle();
        float[] fArr = new float[3];
        Color.colorToHSV(color2, fArr);
        if (fArr[2] > 0.5f) {
            color = getResources().getColor(androidx.cardview.R.color.cardview_light_background, null);
        } else {
            color = getResources().getColor(androidx.cardview.R.color.cardview_dark_background, null);
        }
        IMPL.initialize(cardViewDelegate, context, ColorStateList.valueOf(color), dimension2, dimension, dimension);
        Log.i(TAG, "HmiShadowLayerBlurView: radius = " + dimension2 + " elevation = " + dimension);
        setCardBackgroundColor(0);
    }

    public void setRadius(float radius) {
        IMPL.setRadius(this.mCardViewDelegate, radius);
    }

    public float getRadius() {
        return IMPL.getRadius(this.mCardViewDelegate);
    }

    public void setCardBackgroundColor(int color) {
        IMPL.setBackgroundColor(this.mCardViewDelegate, ColorStateList.valueOf(color));
    }

    public void setCardBackgroundColor(ColorStateList color) {
        IMPL.setBackgroundColor(this.mCardViewDelegate, color);
    }
}
