package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.HmiButton;
import com.geely.toolchain.hmi.view.HmiCircleCheckBox;
import com.geely.toolchain.hmi.view.HmiDialogDampScrollView;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiScrollBindHelper;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.geely.toolchain.hmi.view.HmiVerticalSeekbar;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiRollTextDialog extends BaseDialog {
    public static final int HAS_HINT = 2;
    public static final int NONE = 0;
    public static final int SINGLE_BUTTON = 1;
    private static final String TAG = "HmiRollTextDialog";
    private HmiCircleCheckBox mBox;
    private HmiButton mBtn;
    private String mBtnText;
    private HmiImageView mCloseBtn;
    private HmiTextView mContent;
    private CharSequence mContentText;
    private boolean mEnable;
    private LinearLayout mHintLayout;
    private HmiBtnClickListener mHmiBtnClickListener;
    private HmiScrollChangedListener mHmiScrollChangedListener;
    private HmiScrollViewHeightListener mHmiScrollViewHeightListener;
    private HmiTextView mNotHint;
    private HmiTextView mNotHintText;
    private ConstraintLayout mRootView;
    private HmiDialogDampScrollView mScrollView;
    private HmiTextView mTitle;
    private String mTitleText;
    private int mType;
    private HmiVerticalSeekbar seekBar;
    private View shadowBottom;
    private View shadowTop;

    public interface HmiBtnClickListener {
        void btnClick(HmiRollTextDialog dialog, boolean isRemind);
    }

    public interface HmiScrollChangedListener {
        void onBottom(HmiRollTextDialog dialog, Button btn);

        void onMiddle(HmiRollTextDialog dialog, Button btn);

        void onTop(HmiRollTextDialog dialog, Button btn);
    }

    public interface HmiScrollViewHeightListener {
        void isLessThanMaxHeight(HmiRollTextDialog dialog, boolean result);
    }

    public HmiRollTextDialog(Context context) {
        super(context);
        this.mEnable = true;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        return R.layout.hmi_roll_text_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView(getWindow());
        initData();
    }

    public void hmiConfigChange(Context context) {
        Log.d(TAG, "uiMode ====" + context.getResources().getConfiguration().uiMode);
        Log.i(TAG, "hmiConfigChange: context = " + context);
        boolean hmiCurrentModelIsDark = UiUtil.getHmiCurrentModelIsDark(context);
        Window window = getWindow();
        if (window == null || this.mRootView == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (hmiCurrentModelIsDark) {
            attributes.dimAmount = 0.8f;
        } else {
            attributes.dimAmount = 0.4f;
        }
        window.setAttributes(attributes);
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mCloseBtn.setImageResource(R.drawable.oneoshmi_close_pop_big);
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_content_color));
        this.mContent.setLinkTextColor(ContextCompat.getColor(context, R.color.oneoshmi_main_theme_color));
        this.shadowTop.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_shadow_top_shape));
        this.shadowBottom.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_shadow_bottom_shape));
        this.seekBar.setProgressDrawable(ContextCompat.getDrawable(context, R.drawable.oneoshmi_scrollbar_track));
        this.seekBar.setThumb(ContextCompat.getDrawable(context, R.drawable.oneoshmi_scrollbar));
        this.seekBar.setThumbOffset(0);
        HmiScrollBindHelper.bind(this.seekBar, this.mScrollView);
        this.seekBar.setVisibility(0);
        this.mBox.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_check_box_two_bg));
        this.mNotHint.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_bg_color));
        this.mNotHintText.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_content_color));
        setBtnEnableClick(this.mEnable, context);
        Log.i(TAG, "hmiConfigChange end");
    }

    private void initView(Window window) {
        this.mTitle = (HmiTextView) window.findViewById(R.id.title);
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
        this.mContent = (HmiTextView) window.findViewById(R.id.content);
        this.mBtn = (HmiButton) window.findViewById(R.id.btn);
        this.mHintLayout = (LinearLayout) window.findViewById(R.id.hint);
        this.mCloseBtn = (HmiImageView) window.findViewById(R.id.close);
        this.mBox = (HmiCircleCheckBox) window.findViewById(R.id.box);
        this.mScrollView = (HmiDialogDampScrollView) window.findViewById(R.id.scrollView);
        this.shadowTop = window.findViewById(R.id.shadowTop);
        this.shadowBottom = window.findViewById(R.id.shadowBottom);
        this.seekBar = (HmiVerticalSeekbar) window.findViewById(R.id.vertical_bar);
        this.mNotHint = (HmiTextView) window.findViewById(R.id.notHint);
        this.mNotHintText = (HmiTextView) window.findViewById(R.id.notHintText);
        HmiScrollBindHelper.bind(this.seekBar, this.mScrollView);
        setHmiListener();
    }

    private void setHmiListener() {
        this.mBtn.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiRollTextDialog$dDSfaFnY4QBDpQtJcz3g2Ghg7aU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiRollTextDialog.this.lambda$setHmiListener$0$HmiRollTextDialog(view);
            }
        });
        this.mCloseBtn.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiRollTextDialog$rABKp5yVf5ZU7-XQgShXn_eZTWM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiRollTextDialog.this.lambda$setHmiListener$1$HmiRollTextDialog(view);
            }
        });
        this.mScrollView.post(new Runnable() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiRollTextDialog$5e08UGxk-ZWCmaeFeF-DBAPxSJI
            @Override // java.lang.Runnable
            public final void run() {
                HmiRollTextDialog.this.lambda$setHmiListener$2$HmiRollTextDialog();
            }
        });
        final View childAt = this.mScrollView.getChildAt(0);
        this.mScrollView.setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiRollTextDialog$BpaEnptHldoMXwM0dat1Ah2Xhrs
            @Override // android.view.View.OnScrollChangeListener
            public final void onScrollChange(View view, int i, int i2, int i3, int i4) {
                HmiRollTextDialog.this.lambda$setHmiListener$3$HmiRollTextDialog(childAt, view, i, i2, i3, i4);
            }
        });
    }

    public /* synthetic */ void lambda$setHmiListener$0$HmiRollTextDialog(View view) {
        HmiBtnClickListener hmiBtnClickListener = this.mHmiBtnClickListener;
        if (hmiBtnClickListener != null) {
            hmiBtnClickListener.btnClick(this, this.mBox.isChecked());
            Log.i(TAG, "mBox Checked is " + this.mBox.isChecked());
        } else {
            Log.e(TAG, "mHmiBtnClickListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$setHmiListener$1$HmiRollTextDialog(View view) {
        dismiss();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$setHmiListener$2$HmiRollTextDialog() {
        if (this.mScrollView.getHeight() < UiUtil.dp2px(getContext(), this.mScrollView.getHmiMaxHeight())) {
            this.shadowBottom.setVisibility(8);
            this.shadowTop.setVisibility(8);
            this.seekBar.setVisibility(8);
            HmiScrollViewHeightListener hmiScrollViewHeightListener = this.mHmiScrollViewHeightListener;
            if (hmiScrollViewHeightListener != null) {
                hmiScrollViewHeightListener.isLessThanMaxHeight(this, true);
                return;
            } else {
                Log.e(TAG, "mHmiScrollViewHeightListener is null");
                return;
            }
        }
        HmiScrollViewHeightListener hmiScrollViewHeightListener2 = this.mHmiScrollViewHeightListener;
        if (hmiScrollViewHeightListener2 != null) {
            hmiScrollViewHeightListener2.isLessThanMaxHeight(this, false);
        } else {
            Log.e(TAG, "mHmiScrollViewHeightListener is null");
        }
    }

    public /* synthetic */ void lambda$setHmiListener$3$HmiRollTextDialog(View view, View view2, int i, int i2, int i3, int i4) {
        int measuredHeight = this.mScrollView.getMeasuredHeight();
        int measuredHeight2 = view.getMeasuredHeight();
        int i5 = i2 + measuredHeight;
        Log.i(TAG, "childViewHeight =" + measuredHeight2 + "---scrollY + scrollViewHeight=" + (i5 - this.mScrollView.getPaddingBottom()) + "------getScrollY()=" + this.mScrollView.getScrollY());
        if (measuredHeight2 - 5 <= i5) {
            this.shadowBottom.setVisibility(8);
            HmiScrollChangedListener hmiScrollChangedListener = this.mHmiScrollChangedListener;
            if (hmiScrollChangedListener != null) {
                hmiScrollChangedListener.onBottom(this, this.mBtn);
            } else {
                Log.i(TAG, "HmiScrollChangedListener is null1");
            }
        } else {
            this.shadowBottom.setVisibility(0);
            this.shadowTop.setVisibility(0);
            HmiScrollChangedListener hmiScrollChangedListener2 = this.mHmiScrollChangedListener;
            if (hmiScrollChangedListener2 != null) {
                hmiScrollChangedListener2.onMiddle(this, this.mBtn);
            } else {
                Log.i(TAG, "HmiScrollChangedListener is null2");
            }
        }
        if (this.mScrollView.getScrollY() == 0) {
            this.shadowTop.setVisibility(8);
            HmiScrollChangedListener hmiScrollChangedListener3 = this.mHmiScrollChangedListener;
            if (hmiScrollChangedListener3 != null) {
                hmiScrollChangedListener3.onTop(this, this.mBtn);
            } else {
                Log.i(TAG, "HmiScrollChangedListener is null3");
            }
        }
    }

    private void initData() {
        this.mTitle.setText(this.mTitleText);
        this.mContent.setText(this.mContentText);
        this.mBtn.setText(this.mBtnText);
        int i = this.mType;
        if (i == 1) {
            this.mScrollView.setHmiMaxHeight((int) getContext().getResources().getDimension(R.dimen.oneoshmi_dialog_320dp));
            this.mScrollView.setPadding(0, 0, 0, 0);
            ((ConstraintLayout.LayoutParams) this.shadowBottom.getLayoutParams()).bottomMargin = 0;
            ((ConstraintLayout.LayoutParams) this.seekBar.getLayoutParams()).bottomMargin = 0;
            this.mHintLayout.setVisibility(8);
            this.mBtn.setVisibility(0);
            return;
        }
        if (i == 2) {
            this.mScrollView.setHmiMaxHeight((int) getContext().getResources().getDimension(R.dimen.oneoshmi_dialog_208dp));
            this.mScrollView.setPadding(0, 0, 0, 0);
            ((ConstraintLayout.LayoutParams) this.mBtn.getLayoutParams()).topMargin = UiUtil.dp2px(getContext(), getContext().getResources().getDimension(R.dimen.oneoshmi_dialog_roll_button_top));
            ((ConstraintLayout.LayoutParams) this.shadowBottom.getLayoutParams()).bottomMargin = 0;
            ((ConstraintLayout.LayoutParams) this.seekBar.getLayoutParams()).bottomMargin = 0;
            this.mHintLayout.setVisibility(0);
            this.mBtn.setVisibility(0);
            return;
        }
        this.mScrollView.setHmiMaxHeight((int) getContext().getResources().getDimension(R.dimen.oneoshmi_dialog_368dp));
        this.mHintLayout.setVisibility(8);
        this.mBtn.setVisibility(8);
    }

    public HmiRollTextDialog setTitle(String title) {
        this.mTitleText = title;
        return this;
    }

    public HmiRollTextDialog setContent(CharSequence content) {
        this.mContentText = content;
        return this;
    }

    public HmiRollTextDialog setBtnText(String btnText) {
        this.mBtnText = btnText;
        return this;
    }

    public HmiRollTextDialog setType(int type) {
        this.mType = type;
        return this;
    }

    @Deprecated
    public HmiRollTextDialog setBtnEnableClick(boolean enable) {
        this.mEnable = enable;
        HmiButton hmiButton = this.mBtn;
        if (hmiButton == null) {
            Log.i(TAG, "setBtnEnableClick: mBtn is null");
            return null;
        }
        if (enable) {
            hmiButton.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.oneoshmi_dialog_button_select_bg));
            this.mBtn.setTextColor(getContext().getColor(R.color.oneoshmi_dialog_select_btn_text_color));
        } else {
            hmiButton.setBackground(ContextCompat.getDrawable(getContext(), R.drawable.oneoshmi_dialog_button_select_unclick_bg));
            this.mBtn.setTextColor(getContext().getColor(R.color.oneoshmi_dialog_select_btn_un_click_text_color));
        }
        this.mBtn.setEnabled(enable);
        return this;
    }

    public HmiRollTextDialog setBtnEnableClick(boolean enable, Context context) {
        this.mEnable = enable;
        if (enable) {
            this.mBtn.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_button_select_bg));
            this.mBtn.setTextColor(context.getColor(R.color.oneoshmi_dialog_select_btn_text_color));
        } else {
            this.mBtn.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_button_select_unclick_bg));
            this.mBtn.setTextColor(context.getColor(R.color.oneoshmi_dialog_select_btn_un_click_text_color));
        }
        this.mBtn.setEnabled(enable);
        return this;
    }

    public HmiRollTextDialog setHmiBtnClickListener(HmiBtnClickListener hmiBtnClickListener) {
        this.mHmiBtnClickListener = hmiBtnClickListener;
        return this;
    }

    public HmiRollTextDialog setHmiScrollChangedListener(HmiScrollChangedListener hmiScrollChangedListener) {
        this.mHmiScrollChangedListener = hmiScrollChangedListener;
        Log.i(TAG, "mHmiScrollChangedListener is not null");
        return this;
    }

    public HmiRollTextDialog setHmiScrollViewHeightListener(HmiScrollViewHeightListener hmiScrollViewHeightListener) {
        this.mHmiScrollViewHeightListener = hmiScrollViewHeightListener;
        return this;
    }
}
