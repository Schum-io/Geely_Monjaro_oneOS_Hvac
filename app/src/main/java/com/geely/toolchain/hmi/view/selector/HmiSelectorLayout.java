package com.geely.toolchain.hmi.view.selector;

import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.animation.OvershootInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.selector.listener.CustomSelectorEntity;
import com.geely.toolchain.hmi.view.selector.listener.OnTabSelectListener;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class HmiSelectorLayout extends FrameLayout {
    private static final float DIFF = 0.01f;
    public static final String TAG = "HmiSelectorLayout";
    private static final int TEXT_BOLD_BOTH = 2;
    private static final int TEXT_BOLD_NONE = 0;
    private static final int TEXT_BOLD_WHEN_SELECT = 1;
    private int mBgColor;
    protected float mBgRadius;
    private final IndicatorPoint mCurrentP;
    private int mCurrentPosition;
    private float mIconHeight;
    private float mIconMargin;
    private boolean mIconVisible;
    private float mIconWidth;
    private long mIndicatorAnimDuration;
    private boolean mIndicatorAnimEnable;
    private int mIndicatorColor;
    private float mIndicatorCornerRadius;
    private final GradientDrawable mIndicatorDrawable;
    private float mIndicatorHeight;
    private float mIndicatorMarginBottom;
    protected float mIndicatorMarginLeft;
    private float mIndicatorMarginRight;
    private float mIndicatorMarginTop;
    private final Rect mIndicatorRect;
    private float mIndicatorWidth;
    private final OvershootInterpolator mInterpolator;
    private final IndicatorPoint mLastP;
    private int mLastTab;
    private OnTabSelectListener mListener;
    private final ArrayList<CustomSelectorEntity> mSelectorEntities;
    private int mTabCount;
    private final LinearLayout mTabsContainer;
    private boolean mTextAllCaps;
    private int mTextBold;
    protected int mTextSelectColor;
    private float mTextSize;
    protected int mTextUnselectColor;
    private final ValueAnimator mValueAnimator;

    public static class IndicatorPoint {
        public float left;
        public float right;
    }

    public HmiSelectorLayout(Context context) {
        this(context, null, 0);
    }

    public HmiSelectorLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiSelectorLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mSelectorEntities = new ArrayList<>();
        this.mIndicatorRect = new Rect();
        this.mIndicatorDrawable = new GradientDrawable();
        this.mInterpolator = new OvershootInterpolator(1.0f);
        this.mCurrentP = new IndicatorPoint();
        this.mLastP = new IndicatorPoint();
        setWillNotDraw(false);
        setClipChildren(false);
        setClipToPadding(false);
        LinearLayout linearLayout = new LinearLayout(context);
        this.mTabsContainer = linearLayout;
        addView(linearLayout);
        obtainAttributes(context, attrs);
        int i = this.mBgColor;
        UiUtil.setBackgroundColor(this, i, i, this.mBgRadius);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.9f, 1.02f, 1.0f);
        this.mValueAnimator = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(400L);
    }

    protected void obtainAttributes(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiSelectorLayout);
        this.mBgColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiSelectorLayout_hmi_sl_bg_color, Color.parseColor("#80FFFFFF"));
        this.mBgRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_bg_radius, dp2px(0.0f));
        this.mIndicatorColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiSelectorLayout_hmi_sl_indicator_color, Color.parseColor("#1368FB"));
        this.mIndicatorHeight = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_indicator_height, dp2px(-1.0f));
        this.mIndicatorWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_indicator_width, dp2px(-1.0f));
        this.mIndicatorCornerRadius = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_indicator_corner_radius, dp2px(-1.0f));
        float dimension = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_indicator_margin, dp2px(4.0f));
        this.mIndicatorMarginLeft = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_indicator_margin_left, dimension);
        this.mIndicatorMarginTop = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_indicator_margin_top, dimension);
        this.mIndicatorMarginRight = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_indicator_margin_right, dimension);
        this.mIndicatorMarginBottom = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_indicator_margin_bottom, dimension);
        this.mIndicatorAnimEnable = typedArrayObtainStyledAttributes.getBoolean(R.styleable.HmiSelectorLayout_hmi_sl_indicator_anim_enable, true);
        this.mIndicatorAnimDuration = typedArrayObtainStyledAttributes.getInt(R.styleable.HmiSelectorLayout_hmi_sl_indicator_anim_duration, -1);
        this.mTextSize = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_textSize, sp2px(13.0f));
        this.mTextSelectColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiSelectorLayout_hmi_sl_textSelectColor, Color.parseColor("#ffffff"));
        this.mTextUnselectColor = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiSelectorLayout_hmi_sl_textUnselectColor, Color.parseColor("#AAffffff"));
        this.mTextBold = typedArrayObtainStyledAttributes.getInt(R.styleable.HmiSelectorLayout_hmi_sl_textBold, 2);
        this.mTextAllCaps = typedArrayObtainStyledAttributes.getBoolean(R.styleable.HmiSelectorLayout_hmi_sl_textAllCaps, false);
        this.mIconVisible = typedArrayObtainStyledAttributes.getBoolean(R.styleable.HmiSelectorLayout_hmi_sl_iconVisible, true);
        this.mIconWidth = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_iconWidth, dp2px(0.0f));
        this.mIconHeight = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_iconHeight, dp2px(0.0f));
        this.mIconMargin = typedArrayObtainStyledAttributes.getDimension(R.styleable.HmiSelectorLayout_hmi_sl_iconMargin, dp2px(2.5f));
        typedArrayObtainStyledAttributes.recycle();
    }

    public void setSelectorData(ArrayList<CustomSelectorEntity> tabEntities) {
        if (tabEntities == null || tabEntities.isEmpty()) {
            Log.e(TAG, "setTabData: tabEntities can not be NULL or EMPTY !");
            return;
        }
        this.mSelectorEntities.clear();
        this.mSelectorEntities.addAll(tabEntities);
        notifyDataSetChanged();
    }

    public void notifyDataSetChanged() {
        this.mTabsContainer.removeAllViews();
        this.mTabCount = this.mSelectorEntities.size();
        for (int i = 0; i < this.mTabCount; i++) {
            View viewInflate = View.inflate(getContext(), R.layout.hmi_layout_tab_left, null);
            viewInflate.setTag(Integer.valueOf(i));
            addTab(i, viewInflate);
        }
        updateTabStyles();
        setCurrentSelector(this.mCurrentPosition);
    }

    protected void addTab(final int position, View tabView) {
        CustomSelectorEntity customSelectorEntity = this.mSelectorEntities.get(position);
        if (customSelectorEntity == null) {
            return;
        }
        ((TextView) tabView.findViewById(R.id.tv_tab_title)).setText(customSelectorEntity.getSelectorTitle());
        ((ImageView) tabView.findViewById(R.id.iv_tab_icon)).setImageResource(customSelectorEntity.getUnselectedIcon());
        HmiSelectorIndicator hmiSelectorIndicator = (HmiSelectorIndicator) tabView.findViewById(R.id.view_indicator);
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) hmiSelectorIndicator.getLayoutParams();
        layoutParams.width = (int) (this.mIndicatorWidth - this.mIndicatorMarginLeft);
        layoutParams.height = (int) this.mIndicatorHeight;
        hmiSelectorIndicator.setLayoutParams(layoutParams);
        hmiSelectorIndicator.setCorner(this.mIndicatorColor, this.mIndicatorCornerRadius);
        hmiSelectorIndicator.setVisibility(8);
        tabView.setOnClickListener(new OnClickListener() {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiSelectorLayout.this.lambda$addTab$0$HmiSelectorLayout(view);
            }
        });
        this.mTabsContainer.addView(tabView, position, new LinearLayout.LayoutParams(0, -1, 1.0f));
    }

    public /* synthetic */ void lambda$addTab$0$HmiSelectorLayout(View view) {
        int iIntValue = ((Integer) view.getTag()).intValue();
        if (this.mCurrentPosition != iIntValue) {
            setCurrentSelector(iIntValue);
            startAnim();
            OnTabSelectListener onTabSelectListener = this.mListener;
            if (onTabSelectListener != null) {
                onTabSelectListener.onTabSelect(iIntValue);
            }
            Log.i(TAG, "tabView onTabSelect: tagPosition " + iIntValue);
        } else {
            OnTabSelectListener onTabSelectListener2 = this.mListener;
            if (onTabSelectListener2 != null) {
                onTabSelectListener2.onTabReselect(iIntValue);
            }
            Log.i(TAG, "tabView onTabReselect: tagPosition " + iIntValue);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void startAnim() {
        final HmiSelectorIndicator hmiSelectorIndicator = (HmiSelectorIndicator) this.mTabsContainer.getChildAt(this.mCurrentPosition).findViewById(R.id.view_indicator);
        this.mValueAnimator.removeAllUpdateListeners();
        if (this.mIndicatorAnimEnable && !this.mValueAnimator.isRunning()) {
            this.mValueAnimator.start();
            hmiSelectorIndicator.setVisibility(0);
        }
        this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                HmiSelectorLayout.lambda$startAnim$1(hmiSelectorIndicator, valueAnimator);
            }
        });
    }

    static /* synthetic */ void lambda$startAnim$1(HmiSelectorIndicator hmiSelectorIndicator, ValueAnimator valueAnimator) {
        if (valueAnimator == null || valueAnimator.getAnimatedValue() == null) {
            return;
        }
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        hmiSelectorIndicator.setPivotX(hmiSelectorIndicator.getWidth() >> 1);
        hmiSelectorIndicator.setPivotY(hmiSelectorIndicator.getHeight() >> 1);
        hmiSelectorIndicator.setScaleX(fFloatValue);
        hmiSelectorIndicator.setScaleY(fFloatValue);
    }

    private void updateTabStyles() {
        int i = 0;
        while (i < this.mTabCount) {
            View childAt = this.mTabsContainer.getChildAt(i);
            childAt.setPadding(0, 0, 0, 0);
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(i == this.mCurrentPosition ? this.mTextSelectColor : this.mTextUnselectColor);
            textView.setTextSize(0, this.mTextSize);
            if (this.mTextAllCaps) {
                textView.setText(textView.getText().toString().toUpperCase());
            }
            int i2 = this.mTextBold;
            if (i2 == 2) {
                textView.getPaint().setFakeBoldText(true);
            } else if (i2 == 0) {
                textView.getPaint().setFakeBoldText(false);
            }
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_tab_icon);
            if (this.mIconVisible) {
                imageView.setVisibility(0);
                CustomSelectorEntity customSelectorEntity = this.mSelectorEntities.get(i);
                imageView.setImageResource(i == this.mCurrentPosition ? customSelectorEntity.getSelectedIcon() : customSelectorEntity.getUnselectedIcon());
                float f = this.mIconWidth;
                int i3 = f <= 0.0f ? -2 : (int) f;
                float f2 = this.mIconHeight;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(i3, f2 > 0.0f ? (int) f2 : -2);
                layoutParams.rightMargin = (int) this.mIconMargin;
                imageView.setLayoutParams(layoutParams);
            } else {
                imageView.setVisibility(8);
            }
            i++;
        }
    }

    private void updateTabSelection(int position) {
        int i = 0;
        while (i < this.mTabCount) {
            View childAt = this.mTabsContainer.getChildAt(i);
            boolean z = i == position;
            TextView textView = (TextView) childAt.findViewById(R.id.tv_tab_title);
            textView.setTextColor(z ? this.mTextSelectColor : this.mTextUnselectColor);
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_tab_icon);
            CustomSelectorEntity customSelectorEntity = this.mSelectorEntities.get(i);
            imageView.setImageResource(z ? customSelectorEntity.getSelectedIcon() : customSelectorEntity.getUnselectedIcon());
            ((HmiSelectorIndicator) childAt.findViewById(R.id.view_indicator)).setVisibility(z ? 0 : 8);
            if (this.mTextBold == 1) {
                textView.getPaint().setFakeBoldText(z);
            }
            i++;
        }
    }

    public void setCurrentSelector(int position) {
        if (position >= getSelectorCount()) {
            Log.e(TAG, "setCurrentTab: position = " + position + " must be less  selectorCount " + getSelectorCount());
            return;
        }
        this.mLastTab = this.mCurrentPosition;
        this.mCurrentPosition = position;
        updateTabSelection(position);
        invalidate();
    }

    public void setIndicatorColor(int indicatorColor) {
        this.mIndicatorColor = indicatorColor;
        invalidate();
    }

    public void setIndicatorHeight(float indicatorHeight) {
        this.mIndicatorHeight = dp2px(indicatorHeight);
        invalidate();
    }

    public void setIndicatorWidth(float indicatorWidth) {
        this.mIndicatorWidth = dp2px(indicatorWidth);
        invalidate();
    }

    public void setIndicatorCornerRadius(float indicatorCornerRadius) {
        this.mIndicatorCornerRadius = dp2px(indicatorCornerRadius);
        invalidate();
    }

    public void setBgColor(int bgColor) {
        this.mBgColor = bgColor;
        UiUtil.setBackgroundColor(this, bgColor, bgColor, this.mBgRadius);
    }

    public void setBgRadius(float bgRadius) {
        this.mBgRadius = bgRadius;
        int i = this.mBgColor;
        UiUtil.setBackgroundColor(this, i, i, bgRadius);
    }

    public void setIndicatorMargin(float indicatorMarginLeft, float indicatorMarginTop, float indicatorMarginRight, float indicatorMarginBottom) {
        this.mIndicatorMarginLeft = dp2px(indicatorMarginLeft);
        this.mIndicatorMarginTop = dp2px(indicatorMarginTop);
        this.mIndicatorMarginRight = dp2px(indicatorMarginRight);
        this.mIndicatorMarginBottom = dp2px(indicatorMarginBottom);
        invalidate();
    }

    public void setIndicatorMargin(float indicatorMargin) {
        this.mIndicatorMarginLeft = dp2px(indicatorMargin);
        this.mIndicatorMarginTop = dp2px(indicatorMargin);
        this.mIndicatorMarginRight = dp2px(indicatorMargin);
        this.mIndicatorMarginBottom = dp2px(indicatorMargin);
        invalidate();
    }

    public void setIndicatorAnimDuration(long indicatorAnimDuration) {
        this.mIndicatorAnimDuration = indicatorAnimDuration;
    }

    public void setIndicatorAnimEnable(boolean indicatorAnimEnable) {
        this.mIndicatorAnimEnable = indicatorAnimEnable;
    }

    public void setTextSize(float textSize) {
        this.mTextSize = sp2px(textSize);
        updateTabStyles();
    }

    public void setTextSelectColor(int textSelectColor) {
        this.mTextSelectColor = textSelectColor;
        updateTabStyles();
    }

    public void setTextUnselectColor(int textUnselectColor) {
        this.mTextUnselectColor = textUnselectColor;
        updateTabStyles();
    }

    public void setTextBold(int textBold) {
        this.mTextBold = textBold;
        updateTabStyles();
    }

    public void setIconVisible(boolean iconVisible) {
        this.mIconVisible = iconVisible;
        updateTabStyles();
    }

    public void setIconWidth(float iconWidth) {
        this.mIconWidth = dp2px(iconWidth);
        updateTabStyles();
    }

    public void setIconHeight(float iconHeight) {
        this.mIconHeight = dp2px(iconHeight);
        updateTabStyles();
    }

    public void setIconMargin(float iconMargin) {
        this.mIconMargin = dp2px(iconMargin);
        updateTabStyles();
    }

    public void setTextAllCaps(boolean textAllCaps) {
        this.mTextAllCaps = textAllCaps;
        updateTabStyles();
    }

    public int getSelectorCount() {
        return this.mTabCount;
    }

    public int getCurrentPosition() {
        return this.mCurrentPosition;
    }

    public ImageView getIconView(int tab) {
        View childAt = this.mTabsContainer.getChildAt(tab);
        if (childAt != null) {
            return (ImageView) childAt.findViewById(R.id.iv_tab_icon);
        }
        return null;
    }

    public TextView getTitleView(int tab) {
        View childAt = this.mTabsContainer.getChildAt(tab);
        if (childAt == null) {
            return null;
        }
        childAt.findViewById(R.id.tv_tab_title);
        return null;
    }

    public void setOnTabSelectListener(OnTabSelectListener listener) {
        this.mListener = listener;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mValueAnimator.cancel();
        this.mValueAnimator.removeAllUpdateListeners();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable("instanceState", super.onSaveInstanceState());
        bundle.putInt("mCurrentTab", this.mCurrentPosition);
        return bundle;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (state instanceof Bundle) {
            Bundle bundle = (Bundle) state;
            this.mCurrentPosition = bundle.getInt("mCurrentTab");
            state = bundle.getParcelable("instanceState");
            if (this.mCurrentPosition != 0 && this.mTabsContainer.getChildCount() > 0) {
                updateTabSelection(this.mCurrentPosition);
            }
        }
        super.onRestoreInstanceState(state);
    }

    private static class PointEvaluator implements TypeEvaluator<IndicatorPoint> {
        private PointEvaluator() {
        }

        @Override // android.animation.TypeEvaluator
        public IndicatorPoint evaluate(float fraction, IndicatorPoint startValue, IndicatorPoint endValue) {
            float f = startValue.left + ((endValue.left - startValue.left) * fraction);
            float f2 = startValue.right + (fraction * (endValue.right - startValue.right));
            IndicatorPoint indicatorPoint = new IndicatorPoint();
            indicatorPoint.left = f;
            indicatorPoint.right = f2;
            return indicatorPoint;
        }
    }

    protected int dp2px(float dp) {
        return (int) ((dp * getContext().getResources().getDisplayMetrics().density) + 0.5f);
    }

    protected int sp2px(float sp) {
        return (int) ((sp * getContext().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    protected boolean compareFloat(float af, float bf) {
        return Math.abs(af - bf) < DIFF;
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        Log.i(TAG, "enabled:" + enabled);
        this.mTabsContainer.setEnabled(enabled);
        for (int i = 0; i < this.mTabCount; i++) {
            this.mTabsContainer.getChildAt(i).setEnabled(enabled);
        }
        if (enabled) {
            setAlpha(1.0f);
        } else {
            setAlpha(0.3f);
        }
    }
}
