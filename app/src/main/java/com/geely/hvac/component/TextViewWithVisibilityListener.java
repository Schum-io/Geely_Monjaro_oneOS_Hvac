package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes.dex */
public class TextViewWithVisibilityListener extends AppCompatTextView {
    private VisibilityListener mVisibilityListener;

    public interface VisibilityListener {
        void setVisibility(int visibility);
    }

    public TextViewWithVisibilityListener(Context context) {
        super(context);
    }

    public TextViewWithVisibilityListener(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public TextViewWithVisibilityListener(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public void setVisibilityListener(VisibilityListener visibilityListener) {
        this.mVisibilityListener = visibilityListener;
    }

    @Override // android.view.View
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        VisibilityListener visibilityListener = this.mVisibilityListener;
        if (visibilityListener != null) {
            visibilityListener.setVisibility(visibility);
        }
    }
}
