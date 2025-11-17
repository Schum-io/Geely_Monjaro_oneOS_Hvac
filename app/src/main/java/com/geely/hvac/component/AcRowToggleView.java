package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.geely.hvac.R;
import com.geely.hvac.databinding.LayoutAcRowToggleBinding;

/* loaded from: classes.dex */
public class AcRowToggleView extends ConstraintLayout {
    private LayoutAcRowToggleBinding mBinding;

    public AcRowToggleView(Context context) {
        super(context);
        init(context, null);
    }

    public AcRowToggleView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    public AcRowToggleView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    public static void bindState(AcRowToggleView view, boolean isFront) {
        view.setIsFront(isFront);
    }

    private void init(Context context, AttributeSet attrs) {
        this.mBinding = LayoutAcRowToggleBinding.inflate(LayoutInflater.from(context), this);
        setIsFront(true);
    }

    private void setIsFront(boolean isFront) {
        this.mBinding.arrow.setImageResource(isFront ? R.drawable.arrow_down : R.drawable.arrow_up);
        this.mBinding.txt.setText(isFront ? R.string.ac_row2 : R.string.ac_row1);
    }
}
