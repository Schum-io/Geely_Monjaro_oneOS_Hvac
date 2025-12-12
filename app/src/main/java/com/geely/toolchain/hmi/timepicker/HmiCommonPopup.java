package com.geely.toolchain.hmi.timepicker;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import java.util.Optional;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class HmiCommonPopup {
    private View mContentView;
    private Context mContext;
    private int mHeight;
    private PopupWindow.OnDismissListener mOnDismissListener;
    private View.OnTouchListener mOnTouchListener;
    private PopupWindow mPopupWindow;
    private int mWidth;
    private boolean mIsFocusable = true;
    private boolean mIsOutside = true;
    private int mResLayoutId = -1;
    private int mAnimationStyle = -1;
    private boolean mClipEnable = true;
    private boolean mIgnoreCheekPress = false;
    private int mInputMode = -1;
    private int mSoftInputMode = -1;
    private boolean mTouchable = true;

    protected HmiCommonPopup(Context context) {
        this.mContext = context;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public HmiCommonPopup showAsDropDown(final View anchor, final int xOff, final int yOff) {
        Optional.of(anchor).ifPresent(new Consumer() { // from class: com.geely.toolchain.hmi.timepicker.-$$Lambda$HmiCommonPopup$0S6nhWGGPSqLlc47w6nhmR3NiFo
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HmiCommonPopup.this.lambda$showAsDropDown$0$HmiCommonPopup(anchor, xOff, yOff, (View) obj);
            }
        });
        return this;
    }

    public /* synthetic */ void lambda$showAsDropDown$0$HmiCommonPopup(View view, int i, int i2, View view2) {
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null) {
            popupWindow.showAsDropDown(view, i, i2);
        }
    }

    public HmiCommonPopup showAsDropDown(final View anchor) {
        Optional.of(anchor).ifPresent(new Consumer() { // from class: com.geely.toolchain.hmi.timepicker.-$$Lambda$HmiCommonPopup$a5HQCJgdLuVP35zTBtEynVrE2bs
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HmiCommonPopup.this.lambda$showAsDropDown$1$HmiCommonPopup(anchor, (View) obj);
            }
        });
        return this;
    }

    public /* synthetic */ void lambda$showAsDropDown$1$HmiCommonPopup(View view, View view2) {
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null) {
            popupWindow.showAsDropDown(view);
        }
    }

    public HmiCommonPopup showAsDropDown(final View anchor, final int xOff, final int yOff, final int gravity) {
        Optional.of(anchor).ifPresent(new Consumer() { // from class: com.geely.toolchain.hmi.timepicker.-$$Lambda$HmiCommonPopup$Yblykh7NnqA02t98gaQbEF4PnB0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HmiCommonPopup.this.lambda$showAsDropDown$2$HmiCommonPopup(anchor, xOff, yOff, gravity, (View) obj);
            }
        });
        return this;
    }

    public /* synthetic */ void lambda$showAsDropDown$2$HmiCommonPopup(View view, int i, int i2, int i3, View view2) {
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null) {
            popupWindow.showAsDropDown(view, i, i2, i3);
        }
    }

    public HmiCommonPopup showAtLocation(final View parent, final int gravity, final int x, final int y) {
        Optional.of(parent).ifPresent(new Consumer() { // from class: com.geely.toolchain.hmi.timepicker.-$$Lambda$HmiCommonPopup$NibpVXS40vOFq0qUud6SAVjQwmE
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                HmiCommonPopup.this.lambda$showAtLocation$3$HmiCommonPopup(parent, gravity, x, y, (View) obj);
            }
        });
        return this;
    }

    public /* synthetic */ void lambda$showAtLocation$3$HmiCommonPopup(View view, int i, int i2, int i3, View view2) {
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null) {
            popupWindow.showAtLocation(view, i, i2, i3);
        }
    }

    private void apply(PopupWindow popupWindow) {
        popupWindow.setClippingEnabled(this.mClipEnable);
        if (this.mIgnoreCheekPress) {
            popupWindow.setIgnoreCheekPress();
        }
        int i = this.mInputMode;
        if (i != -1) {
            popupWindow.setInputMethodMode(i);
        }
        int i2 = this.mSoftInputMode;
        if (i2 != -1) {
            popupWindow.setSoftInputMode(i2);
        }
        PopupWindow.OnDismissListener onDismissListener = this.mOnDismissListener;
        if (onDismissListener != null) {
            popupWindow.setOnDismissListener(onDismissListener);
        }
        View.OnTouchListener onTouchListener = this.mOnTouchListener;
        if (onTouchListener != null) {
            popupWindow.setTouchInterceptor(onTouchListener);
        }
        popupWindow.setTouchable(this.mTouchable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public PopupWindow build() {
        if (this.mContentView == null) {
            this.mContentView = LayoutInflater.from(this.mContext).inflate(this.mResLayoutId, (ViewGroup) null);
        }
        if (this.mWidth != 0 && this.mHeight != 0) {
            this.mPopupWindow = new PopupWindow(this.mContentView, this.mWidth, this.mHeight);
        } else {
            this.mPopupWindow = new PopupWindow(this.mContentView, -2, -2);
        }
        int i = this.mAnimationStyle;
        if (i != -1) {
            this.mPopupWindow.setAnimationStyle(i);
        }
        apply(this.mPopupWindow);
        this.mPopupWindow.setFocusable(this.mIsFocusable);
        this.mPopupWindow.setBackgroundDrawable(new ColorDrawable(0));
        this.mPopupWindow.setOutsideTouchable(this.mIsOutside);
        if (this.mWidth == 0 || this.mHeight == 0) {
            this.mPopupWindow.getContentView().measure(0, 0);
            this.mWidth = this.mPopupWindow.getContentView().getMeasuredWidth();
            this.mHeight = this.mPopupWindow.getContentView().getMeasuredHeight();
        }
        this.mPopupWindow.update();
        return this.mPopupWindow;
    }

    public void dismiss() {
        PopupWindow popupWindow = this.mPopupWindow;
        if (popupWindow != null) {
            popupWindow.dismiss();
        }
    }

    public static class PopupWindowBuilder {
        private HmiCommonPopup mHmiCommonPopup;

        public PopupWindowBuilder(Context context) {
            this.mHmiCommonPopup = new HmiCommonPopup(context);
        }

        public PopupWindowBuilder size(int width, int height) {
            this.mHmiCommonPopup.mWidth = width;
            this.mHmiCommonPopup.mHeight = height;
            return this;
        }

        public PopupWindowBuilder setFocusable(boolean focusable) {
            this.mHmiCommonPopup.mIsFocusable = focusable;
            return this;
        }

        public PopupWindowBuilder setView(int resLayoutId) {
            this.mHmiCommonPopup.mResLayoutId = resLayoutId;
            this.mHmiCommonPopup.mContentView = null;
            return this;
        }

        public PopupWindowBuilder setView(View view) {
            this.mHmiCommonPopup.mContentView = view;
            this.mHmiCommonPopup.mResLayoutId = -1;
            return this;
        }

        public PopupWindowBuilder setOutsideTouchable(boolean outsideTouchable) {
            this.mHmiCommonPopup.mIsOutside = outsideTouchable;
            return this;
        }

        public PopupWindowBuilder setAnimationStyle(int animationStyle) {
            this.mHmiCommonPopup.mAnimationStyle = animationStyle;
            return this;
        }

        public PopupWindowBuilder setClippingEnable(boolean enable) {
            this.mHmiCommonPopup.mClipEnable = enable;
            return this;
        }

        public PopupWindowBuilder setIgnoreCheekPress(boolean ignoreCheekPress) {
            this.mHmiCommonPopup.mIgnoreCheekPress = ignoreCheekPress;
            return this;
        }

        public PopupWindowBuilder setInputMethodMode(int mode) {
            this.mHmiCommonPopup.mInputMode = mode;
            return this;
        }

        public PopupWindowBuilder setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
            this.mHmiCommonPopup.mOnDismissListener = onDismissListener;
            return this;
        }

        public PopupWindowBuilder setSoftInputMode(int softInputMode) {
            this.mHmiCommonPopup.mSoftInputMode = softInputMode;
            return this;
        }

        public PopupWindowBuilder setTouchable(boolean touchable) {
            this.mHmiCommonPopup.mTouchable = touchable;
            return this;
        }

        public PopupWindowBuilder setTouchListener(View.OnTouchListener touchListener) {
            this.mHmiCommonPopup.mOnTouchListener = touchListener;
            return this;
        }

        public PopupWindowBuilder setWidth(int width) {
            this.mHmiCommonPopup.mWidth = width;
            return this;
        }

        public PopupWindowBuilder setHeight(int height) {
            this.mHmiCommonPopup.mHeight = height;
            return this;
        }

        public HmiCommonPopup create() {
            this.mHmiCommonPopup.build();
            return this.mHmiCommonPopup;
        }
    }
}
