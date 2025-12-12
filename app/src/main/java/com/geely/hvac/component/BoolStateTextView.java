package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.view.ViewCompat;
import com.geely.hvac.R;

/* loaded from: classes.dex */
public class BoolStateTextView extends AppCompatTextView {
    private int mFalseColor;
    private String mFalseText;
    private int mTrueColor;
    private String mTrueText;

    public BoolStateTextView(Context context) {
        super(context);
        init(context, null);
    }

    public BoolStateTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    public BoolStateTextView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.BoolStateTextView);
        this.mTrueColor = typedArrayObtainStyledAttributes.getColor(2, ViewCompat.MEASURED_STATE_MASK);
        this.mFalseColor = typedArrayObtainStyledAttributes.getColor(0, ViewCompat.MEASURED_STATE_MASK);
        this.mTrueText = typedArrayObtainStyledAttributes.getString(3);
        this.mFalseText = typedArrayObtainStyledAttributes.getString(1);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void bind(BoolStateTextView view, boolean isOn) {
        view.setStatus(isOn);
    }

    public void setStatus(boolean isOn) {
        setTextColor(isOn ? this.mTrueColor : this.mFalseColor);
        setText(isOn ? this.mTrueText : this.mFalseText);
    }
}
