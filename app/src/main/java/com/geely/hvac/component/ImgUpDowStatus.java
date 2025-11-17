package com.geely.hvac.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatImageView;
import com.geely.hvac.common.R;

/* loaded from: classes.dex */
public class ImgUpDowStatus extends AppCompatImageView {
    private final String TAG;
    private int mActiveImgId;
    private int mNormalImgId;

    public ImgUpDowStatus(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        init(context, null);
    }

    public ImgUpDowStatus(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        init(context, attrs);
    }

    public ImgUpDowStatus(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        if (attrs == null) {
            return;
        }
        setClickable(true);
        setFocusable(true);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.ImgUpDowStatus);
        this.mNormalImgId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ImgUpDowStatus_normalImg, 0);
        this.mActiveImgId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.ImgUpDowStatus_activeImg, 0);
        typedArrayObtainStyledAttributes.recycle();
        setImageResource(this.mNormalImgId);
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        int i;
        int action = event.getAction();
        if (action == 0) {
            int i2 = this.mActiveImgId;
            if (i2 != 0) {
                setImageResource(i2);
            }
        } else if ((action == 1 || action == 3) && (i = this.mNormalImgId) != 0) {
            setImageResource(i);
        }
        return super.dispatchTouchEvent(event);
    }
}
