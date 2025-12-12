package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.TouchDelegate;
import android.view.View;
import android.view.ViewGroup;
import com.geely.hvac.common.R;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class TouchDelegateView extends View {
    private final String TAG;
    private int mDelegateId;

    public TouchDelegateView(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.mDelegateId = 0;
        init(context, null);
    }

    public TouchDelegateView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.mDelegateId = 0;
        init(context, attrs);
    }

    public TouchDelegateView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.mDelegateId = 0;
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            LogUtil.d(this.TAG, "init, attr is null");
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.TouchDelegateView);
        this.mDelegateId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.TouchDelegateView_touchDelegateViewId, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        if (this.mDelegateId > 0) {
            try {
                setTouchDelegate(new TouchDelegate(new Rect(0, 0, w, h), ((ViewGroup) getParent()).findViewById(this.mDelegateId)));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
