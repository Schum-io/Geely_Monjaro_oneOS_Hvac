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
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiDoubleButtonNoTitleDialog extends BaseDialog {
    private static final String TAG = "HmiDoubleButtonNoTitleDialog";
    private HmiTextView mContent;
    private String mContentText;
    private HmiButton mLeftButton;
    private String mLeftButtonText;
    private HmiButton mRightButton;
    private String mRightButtonText;
    private ConstraintLayout mRootView;
    private SelectListener mSelectListener;
    private SelectListener2 mSelectListener2;

    public interface SelectListener {
        void leftAction();

        void rightAction();
    }

    public interface SelectListener2 {
        void leftAction(HmiDoubleButtonNoTitleDialog dialog);

        void rightAction(HmiDoubleButtonNoTitleDialog dialog);
    }

    public HmiDoubleButtonNoTitleDialog(Context context) {
        super(context);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        return R.layout.hmi_double_button_no_title_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initView(getWindow());
        initData();
    }

    public void hmiConfigChange(Context context) {
        int i = context.getResources().getConfiguration().uiMode;
        String str = TAG;
        Log.d(str, "uiMode ====" + i);
        Log.i(str, "hmiConfigChange: context = " + context);
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
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_not_title_content_color));
        this.mLeftButton.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_button_select_bg));
        this.mLeftButton.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_text_color));
        this.mRightButton.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_button_unselect_bg));
        this.mRightButton.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_unselect_btn_text_color));
    }

    private void initView(Window window) {
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
        this.mContent = (HmiTextView) window.findViewById(R.id.content);
        this.mLeftButton = (HmiButton) window.findViewById(R.id.leftButton);
        this.mRightButton = (HmiButton) window.findViewById(R.id.rightButton);
        this.mLeftButton.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiDoubleButtonNoTitleDialog$LOF2pP1J07agKKL_MYzTbwYng-E
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiDoubleButtonNoTitleDialog.this.lambda$initView$0$HmiDoubleButtonNoTitleDialog(view);
            }
        });
        this.mRightButton.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiDoubleButtonNoTitleDialog$JN9ha82sLhk1yDMrDXGtmw2RvZo
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiDoubleButtonNoTitleDialog.this.lambda$initView$1$HmiDoubleButtonNoTitleDialog(view);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiDoubleButtonNoTitleDialog(View view) {
        SelectListener selectListener = this.mSelectListener;
        if (selectListener != null) {
            selectListener.leftAction();
            dismiss();
        } else {
            String str = TAG;
            Log.i(str, "mSelectListener is null");
            SelectListener2 selectListener2 = this.mSelectListener2;
            if (selectListener2 != null) {
                selectListener2.leftAction(this);
            } else {
                Log.i(str, "mSelectListener2 is null");
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiDoubleButtonNoTitleDialog(View view) {
        SelectListener selectListener = this.mSelectListener;
        if (selectListener != null) {
            selectListener.rightAction();
            dismiss();
        } else {
            String str = TAG;
            Log.i(str, "mSelectListener is null");
            SelectListener2 selectListener2 = this.mSelectListener2;
            if (selectListener2 != null) {
                selectListener2.rightAction(this);
            } else {
                Log.i(str, "mSelectListener2 is null");
            }
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mContent.setText(this.mContentText);
        this.mLeftButton.setText(this.mLeftButtonText);
        this.mRightButton.setText(this.mRightButtonText);
    }

    public HmiDoubleButtonNoTitleDialog setContent(String content) {
        this.mContentText = content;
        Log.i(TAG, "content text is " + content);
        return this;
    }

    public HmiDoubleButtonNoTitleDialog setLeftButtonText(String text) {
        this.mLeftButtonText = text;
        Log.i(TAG, "left button text is" + text);
        return this;
    }

    public HmiDoubleButtonNoTitleDialog setRightButtonText(String text) {
        this.mRightButtonText = text;
        Log.i(TAG, "right button text is" + text);
        return this;
    }

    @Deprecated
    public HmiDoubleButtonNoTitleDialog setSelectListener(SelectListener selectListener) {
        this.mSelectListener = selectListener;
        Log.i(TAG, "HmiDoubleButtonNoTitleDialog SelectListener is not null");
        return this;
    }

    public HmiDoubleButtonNoTitleDialog setSelectListener2(SelectListener2 selectListener) {
        this.mSelectListener2 = selectListener;
        Log.i(TAG, "HmiDoubleButtonNoTitleDialog SelectListener2 is not null");
        return this;
    }
}
