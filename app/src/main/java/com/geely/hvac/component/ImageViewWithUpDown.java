package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.geely.hvac.utils.LogUtil;

/* loaded from: classes.dex */
public class ImageViewWithUpDown extends ImgUpDowStatus {
    private static final String TAG = "ImageViewWithUpDown";
    private UpDownAnimListener mUpDownAnimListener;
    private UpDownListener mUpDownListener;

    public interface UpDownAnimListener {
        void onRun();
    }

    public interface UpDownListener {
        void onDown(ImageView imageView);

        void onUp(ImageView imageView);
    }

    public ImageViewWithUpDown(Context context) {
        super(context);
    }

    public ImageViewWithUpDown(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public ImageViewWithUpDown(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }

    public static void bind(ImageViewWithUpDown imageView, UpDownListener listener) {
        imageView.setUpDownListener(listener);
    }

    public void setUpDownListener(UpDownListener upDownListener) {
        this.mUpDownListener = upDownListener;
    }

    public void setUpDownAnimListener(UpDownAnimListener upDownAnimListener) {
        this.mUpDownAnimListener = upDownAnimListener;
    }

    @Override // com.geely.hvac.component.ImgUpDowStatus, android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            LogUtil.d(TAG, "down");
            getParent().requestDisallowInterceptTouchEvent(true);
            setAlpha(0.6f);
            UpDownListener upDownListener = this.mUpDownListener;
            if (upDownListener != null) {
                upDownListener.onDown(this);
            }
            UpDownAnimListener upDownAnimListener = this.mUpDownAnimListener;
            if (upDownAnimListener != null) {
                upDownAnimListener.onRun();
            }
        } else if (action == 1) {
            LogUtil.d("", "up");
            setAlpha(1.0f);
            UpDownListener upDownListener2 = this.mUpDownListener;
            if (upDownListener2 != null) {
                upDownListener2.onUp(this);
            }
        } else if (action == 3) {
            LogUtil.d(TAG, "cancel");
            setAlpha(1.0f);
            UpDownListener upDownListener3 = this.mUpDownListener;
            if (upDownListener3 != null) {
                upDownListener3.onUp(this);
            }
        }
        return super.dispatchTouchEvent(event);
    }
}
