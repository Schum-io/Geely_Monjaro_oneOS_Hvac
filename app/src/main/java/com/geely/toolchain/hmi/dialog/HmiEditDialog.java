package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiEditDialog extends BaseDialog {
    private HmiImageView mClose;
    public RecyclerView mEditRecyclerview;
    private ConstraintLayout mRootView;
    private HmiTextView mTitle;
    private String mTitleText;

    public HmiEditDialog(Context context) {
        super(context);
        this.mTitleText = "编辑";
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        return R.layout.hmi_edit_dialog;
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
        this.mClose.setImageResource(R.drawable.oneoshmi_close_pop_big);
        if (this.mEditRecyclerview.getAdapter() != null) {
            Log.i(TAG, "mEditRecyclerview 刷新了 " + this.mEditRecyclerview.getAdapter());
            this.mEditRecyclerview.getAdapter().notifyDataSetChanged();
        }
    }

    private void initView(Window window) {
        this.mClose = (HmiImageView) window.findViewById(R.id.close);
        this.mTitle = (HmiTextView) window.findViewById(R.id.title);
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
        this.mEditRecyclerview = (RecyclerView) window.findViewById(R.id.editRecyclerView);
        this.mClose.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiEditDialog$7oSCgpGK4izGAvIk9evDy6Ql4aM
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiEditDialog.this.lambda$initView$0$HmiEditDialog(view);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiEditDialog(View view) {
        dismiss();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mTitle.setText(this.mTitleText);
    }

    public HmiEditDialog setTitle(String title) {
        this.mTitleText = title;
        return this;
    }
}
