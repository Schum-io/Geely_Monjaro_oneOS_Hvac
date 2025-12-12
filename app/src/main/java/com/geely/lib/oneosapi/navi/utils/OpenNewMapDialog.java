package com.geely.lib.oneosapi.navi.utils;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.geely.lib.oneosapi.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class OpenNewMapDialog extends Dialog {
    private Button btnCancel;
    private Button btnConfirm;
    private String cancel;
    private String confirm;
    private OnCancelClickListener onCancelClickListener;
    private OnConfirmClickListener onConfirmClickListener;
    private String title;
    private TextView tvTitle;

    public interface OnCancelClickListener {
        void CancelClick();
    }

    public interface OnConfirmClickListener {
        void ConfirmClick();
    }

    public OpenNewMapDialog(Context context) {
        super(context);
    }

    private void initData() {
        this.tvTitle.setText(this.title);
        this.btnConfirm.setText(this.confirm);
        this.btnCancel.setText(this.cancel);
    }

    private void initEvent() {
        this.btnConfirm.setOnClickListener(new View.OnClickListener() { // from class: com.geely.lib.oneosapi.navi.utils.OpenNewMapDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (OpenNewMapDialog.this.onConfirmClickListener != null) {
                    OpenNewMapDialog.this.onConfirmClickListener.ConfirmClick();
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
        this.btnCancel.setOnClickListener(new View.OnClickListener() { // from class: com.geely.lib.oneosapi.navi.utils.OpenNewMapDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (OpenNewMapDialog.this.onCancelClickListener != null) {
                    OpenNewMapDialog.this.onCancelClickListener.CancelClick();
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
    }

    private void initView() {
        this.tvTitle = (TextView) findViewById(R.id.tv_title);
        this.btnConfirm = (Button) findViewById(R.id.btn_confirm);
        this.btnCancel = (Button) findViewById(R.id.btn_cancel);
    }

    @Override // android.app.Dialog
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_open_new_map);
        initView();
        initData();
        initEvent();
    }

    public void setCancelClickListener(String cancel, OnCancelClickListener onCancelClickListener) {
        this.cancel = cancel;
        this.onCancelClickListener = onCancelClickListener;
    }

    public void setConfirmClickListener(String confirm, OnConfirmClickListener onConfirmClickListener) {
        this.confirm = confirm;
        this.onConfirmClickListener = onConfirmClickListener;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Override // android.app.Dialog
    public void show() {
        getWindow().setType(2038);
        super.show();
    }

    public OpenNewMapDialog(Context context, int themeResId) {
        super(context, themeResId);
    }
}
