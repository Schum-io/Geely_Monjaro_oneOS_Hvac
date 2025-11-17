package com.geely.hvac.component;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.databinding.ObservableBoolean;
import com.geely.hvac.R;
import com.geely.hvac.component.intf.SelectorChangedListener;
import com.geely.hvac.utils.LogUtil;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class Selector extends ConstraintLayout implements View.OnClickListener {
    private static String TAG = "Selector";
    private int mActiveColor;
    private LinearLayout mContent;
    private ObservableBoolean mEnable;
    private int mIndex;
    private ViewWithBackground mIndicator;
    private int mIndicatorBg;
    private int mIndicatorHeight;
    private int mIndicatorRadius;
    private int mIndicatorWidth;
    private int mItemBg;
    private int mItemHeight;
    private int mItemRadius;
    private int mItemWidth;
    private String[] mLabels;
    private int mNormalColor;
    private SelectorChangedListener mOnSelectChangedListener;
    private int mTextSize;
    private ValueAnimator mValueAnimator;

    protected int indexToValue(int index) {
        return index;
    }

    protected int valueToIndex(int value) {
        return value;
    }

    public static void bind(Selector view, int value, SelectorChangedListener listener) {
        LogUtil.d(TAG, "bindSelectorValue " + view.getClass().getSimpleName() + " value:" + value);
        view.mOnSelectChangedListener = listener;
        view.select(view.valueToIndex(value), true);
    }

    public Selector(Context context) {
        super(context);
        this.mEnable = new ObservableBoolean(true);
        this.mLabels = new String[0];
        this.mIndex = 0;
        init(context, null);
    }

    public Selector(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mEnable = new ObservableBoolean(true);
        this.mLabels = new String[0];
        this.mIndex = 0;
        init(context, attrs);
    }

    public Selector(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mEnable = new ObservableBoolean(true);
        this.mLabels = new String[0];
        this.mIndex = 0;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.Selector);
        this.mItemWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, 0);
        this.mItemHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
        this.mItemRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.mItemBg = typedArrayObtainStyledAttributes.getColor(5, 0);
        this.mIndicatorWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0);
        this.mIndicatorHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.mIndicatorRadius = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, 0);
        this.mIndicatorBg = typedArrayObtainStyledAttributes.getColor(1, 0);
        this.mTextSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(11, 0);
        this.mActiveColor = typedArrayObtainStyledAttributes.getColor(0, 0);
        this.mNormalColor = typedArrayObtainStyledAttributes.getColor(10, 0);
        String string = typedArrayObtainStyledAttributes.getString(9);
        if (string != null && !string.isEmpty()) {
            this.mLabels = string.split(",");
        }
        typedArrayObtainStyledAttributes.recycle();
        initView(context);
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        this.mEnable.set(enabled);
    }

    private void initView(Context context) {
        ViewWithBackground viewWithBackground = new ViewWithBackground(context);
        int i = 0;
        viewWithBackground.setBackground(this.mItemBg, 0, this.mItemRadius);
        addView(viewWithBackground, new Constraints.LayoutParams(-1, 0));
        ViewWithBackground viewWithBackground2 = new ViewWithBackground(context);
        this.mIndicator = viewWithBackground2;
        viewWithBackground2.setBackground(this.mIndicatorBg, 0, this.mIndicatorRadius);
        Constraints.LayoutParams layoutParams = new Constraints.LayoutParams(this.mIndicatorWidth, this.mIndicatorHeight);
        layoutParams.topToTop = 0;
        layoutParams.bottomToBottom = 0;
        layoutParams.leftToLeft = 0;
        int i2 = this.mItemWidth;
        layoutParams.setMarginStart(((i2 - this.mIndicatorWidth) / 2) + (this.mIndex * i2));
        this.mIndicator.setElevation(4.0f);
        addView(this.mIndicator, layoutParams);
        this.mContent = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams2 = new Constraints.LayoutParams(-1, 0);
        this.mContent.setOrientation(0);
        this.mContent.setElevation(4.0f);
        addView(this.mContent, layoutParams2);
        while (i < this.mLabels.length) {
            TextView textView = new TextView(context);
            textView.setText(this.mLabels[i]);
            textView.setTextSize(this.mTextSize);
            textView.setTag(Integer.valueOf(i));
            textView.setOnClickListener(this);
            textView.setTextColor(i == this.mIndex ? this.mActiveColor : this.mNormalColor);
            textView.setGravity(17);
            this.mContent.addView(textView, new LinearLayout.LayoutParams(this.mItemWidth, this.mItemHeight));
            i++;
        }
    }

    public void select(int index, boolean fromUser) {
        if (this.mIndex == index) {
            return;
        }
        this.mIndex = index;
        int childCount = this.mContent.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = this.mContent.getChildAt(i);
            if (childAt instanceof TextView) {
                if (((Integer) childAt.getTag()).intValue() == index) {
                    ((TextView) childAt).setTextColor(this.mActiveColor);
                } else {
                    ((TextView) childAt).setTextColor(this.mNormalColor);
                }
            }
        }
        final LayoutParams layoutParams = (LayoutParams) this.mIndicator.getLayoutParams();
        int marginStart = layoutParams.getMarginStart();
        int i2 = this.mItemWidth;
        int i3 = ((i2 - this.mIndicatorWidth) / 2) + (this.mIndex * i2);
        ValueAnimator valueAnimator = this.mValueAnimator;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mValueAnimator.end();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(marginStart, i3);
        this.mValueAnimator = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(300L);
        this.mValueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.geely.hvac.component.-$$Lambda$Selector$VfiM0B9QJp4fEs2HlLKXLEZoxMg
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                lambda$select$0$Selector(layoutParams, valueAnimator2);
            }
        });
        this.mValueAnimator.start();
        if (this.mOnSelectChangedListener == null || fromUser) {
            return;
        }
        LogUtil.d(TAG, "mOnSelectChangedListener " + getClass().getSimpleName() + " index:" + index);
        this.mOnSelectChangedListener.onSelectChanged(this, indexToValue(index));
    }

    public /* synthetic */ void lambda$select$0$Selector(LayoutParams layoutParams, ValueAnimator valueAnimator) {
        layoutParams.setMarginStart(((Integer) valueAnimator.getAnimatedValue()).intValue());
        this.mIndicator.setLayoutParams(layoutParams);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (!this.mEnable.get()) {
            LogUtil.d(TAG, "onClick: not enable");
            SensorsDataAutoTrackHelper.trackViewOnClick(v);
            return;
        }
        Object tag = v.getTag();
        if (tag != null && (tag instanceof Integer)) {
            select(((Integer) tag).intValue(), false);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(v);
    }
}
