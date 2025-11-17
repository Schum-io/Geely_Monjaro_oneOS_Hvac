package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.HmiButton;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiDoubleButtonHasTitleDialog extends BaseDialog {
    private static final String TAG = "TextDoubleButtonDialog";
    private int iconId;
    private HmiTextView mContent;
    private String mContentText;
    private HmiImageView mIcon;
    private HmiButton mLeftButton;
    private String mLeftButtonText;
    private HmiButton mRightButton;
    private String mRightButtonText;
    private ConstraintLayout mRootView;
    private SelectListener mSelectListener;
    private SelectListener2 mSelectListener2;
    private HmiTextView mTitle;
    private String mTitleText;

    public interface SelectListener {
        void leftAction();

        void rightAction();
    }

    public interface SelectListener2 {
        void leftAction(HmiDoubleButtonHasTitleDialog dialog);

        void rightAction(HmiDoubleButtonHasTitleDialog dialog);
    }

    public HmiDoubleButtonHasTitleDialog(Context context) {
        super(context);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        if (this.iconId == 0) {
            return R.layout.hmi_double_button_has_title_dialog;
        }
        return R.layout.hmi_double_button_has_image_and_title_dialog;
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
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (hmiCurrentModelIsDark) {
            attributes.dimAmount = 0.8f;
        } else {
            attributes.dimAmount = 0.4f;
        }
        window.setAttributes(attributes);
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_not_title_content_color));
        this.mLeftButton.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_button_select_bg));
        this.mLeftButton.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_text_color));
        this.mRightButton.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_button_unselect_bg));
        this.mRightButton.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_unselect_btn_text_color));
        int i = this.iconId;
        if (i != 0) {
            this.mIcon.setImageResource(i);
        }
    }

    private void initView(Window window) {
        this.mTitle = (HmiTextView) window.findViewById(R.id.tvTitle);
        this.mContent = (HmiTextView) window.findViewById(R.id.content);
        this.mLeftButton = (HmiButton) window.findViewById(R.id.leftButton);
        this.mRightButton = (HmiButton) window.findViewById(R.id.rightButton);
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
        if (this.iconId != 0) {
            this.mIcon = (HmiImageView) window.findViewById(R.id.icon);
        }
        this.mLeftButton.setOnClickListener(new View.OnClickListener() {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiDoubleButtonHasTitleDialog.this.lambda$initView$0$HmiDoubleButtonHasTitleDialog(view);
            }
        });
        this.mRightButton.setOnClickListener(new View.OnClickListener() {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiDoubleButtonHasTitleDialog.this.lambda$initView$1$HmiDoubleButtonHasTitleDialog(view);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiDoubleButtonHasTitleDialog(View view) {
        SelectListener selectListener = this.mSelectListener;
        if (selectListener != null) {
            selectListener.leftAction();
            dismiss();
        } else {
            Log.i(TAG, "mSelectListener is null");
            SelectListener2 selectListener2 = this.mSelectListener2;
            if (selectListener2 != null) {
                selectListener2.leftAction(this);
            } else {
                Log.i(TAG, "mSelectListener2 is null");
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiDoubleButtonHasTitleDialog(View view) {
        SelectListener selectListener = this.mSelectListener;
        if (selectListener != null) {
            selectListener.rightAction();
            dismiss();
        } else {
            Log.i(TAG, "mSelectListener is null");
            SelectListener2 selectListener2 = this.mSelectListener2;
            if (selectListener2 != null) {
                selectListener2.rightAction(this);
            } else {
                Log.i(TAG, "mSelectListener2 is null");
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mTitle.setText(this.mTitleText);
        this.mContent.setText(this.mContentText);
        this.mLeftButton.setText(this.mLeftButtonText);
        this.mRightButton.setText(this.mRightButtonText);
        int i = this.iconId;
        if (i != 0) {
            this.mIcon.setImageResource(i);
        }
    }

    public HmiDoubleButtonHasTitleDialog setTitle(String title) {
        this.mTitleText = title;
        return this;
    }

    public HmiDoubleButtonHasTitleDialog setContent(String content) {
        this.mContentText = content;
        return this;
    }

    public HmiDoubleButtonHasTitleDialog setLeftButtonText(String text) {
        this.mLeftButtonText = text;
        return this;
    }

    public HmiDoubleButtonHasTitleDialog setRightButtonText(String text) {
        this.mRightButtonText = text;
        return this;
    }

    @Deprecated
    public HmiDoubleButtonHasTitleDialog setMIcon(int iconId) {
        this.iconId = iconId;
        return this;
    }

    public HmiDoubleButtonHasTitleDialog setIcon(int iconId) {
        this.iconId = iconId;
        return this;
    }

    @Deprecated
    public HmiDoubleButtonHasTitleDialog setSelectListener(SelectListener selectListener) {
        this.mSelectListener = selectListener;
        return this;
    }

    public HmiDoubleButtonHasTitleDialog setSelectListener2(SelectListener2 selectListener) {
        this.mSelectListener2 = selectListener;
        return this;
    }
}
