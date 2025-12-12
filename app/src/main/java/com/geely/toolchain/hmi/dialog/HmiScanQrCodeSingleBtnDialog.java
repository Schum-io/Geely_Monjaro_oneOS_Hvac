package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiStateButton;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiScanQrCodeSingleBtnDialog extends BaseHmiDialogFragment {
    private String hmiBtnText;
    private CharSequence hmiClause;
    private String hmiContent;
    private String hmiDesc;
    private String hmiTitle;
    private CheckBox mBox;
    private HmiStateButton mBtn;
    private HmiTextView mClause;
    private ImageView mClauseIcon;
    private int mClauseIconId;
    private HmiImageView mClose;
    private final int mCloseResourceId = R.drawable.oneoshmi_close_pop_big;
    private HmiTextView mContent;
    private HmiTextView mDesc;
    private LinearLayout mDescLinearLayout;
    private HmiBtnListener mHmiBtnListener;
    private HmiCloseListener mHmiCloseListener;
    private HmiQrCodeRefreshListener mHmiQrCodeRefreshListener;
    private HmiImageView mQrCode;
    private Bitmap mQrCodeBitmap;
    private FrameLayout mRootView;
    private HmiTextView mTitle;

    public interface HmiBtnListener {
        void action(HmiScanQrCodeSingleBtnDialog dialog, boolean isChecked);
    }

    public interface HmiQrCodeRefreshListener {
        void refresh();
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_scan_qr_code_single_btn_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        initView(view);
        initData();
    }

    private void initView(View view) {
        this.mClose = (HmiImageView) view.findViewById(R.id.close);
        this.mTitle = (HmiTextView) view.findViewById(R.id.title);
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        this.mQrCode = (HmiImageView) view.findViewById(R.id.qrCode);
        this.mDesc = (HmiTextView) view.findViewById(R.id.desc);
        this.mClause = (HmiTextView) view.findViewById(R.id.clause);
        this.mBtn = (HmiStateButton) view.findViewById(R.id.btn);
        this.mBox = (CheckBox) view.findViewById(R.id.box);
        this.mClauseIcon = (ImageView) view.findViewById(R.id.clauseIcon);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mDescLinearLayout = (LinearLayout) view.findViewById(R.id.ll);
        this.mBtn.setOnClickListener(new View.OnClickListener() {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiScanQrCodeSingleBtnDialog.this.lambda$initView$0$HmiScanQrCodeSingleBtnDialog(view2);
            }
        });
        this.mClose.setOnClickListener(new View.OnClickListener() {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiScanQrCodeSingleBtnDialog.this.lambda$initView$1$HmiScanQrCodeSingleBtnDialog(view2);
            }
        });
        this.mQrCode.setOnClickListener(new View.OnClickListener() {
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (HmiScanQrCodeSingleBtnDialog.this.mHmiQrCodeRefreshListener != null) {
                    HmiScanQrCodeSingleBtnDialog.this.mHmiQrCodeRefreshListener.refresh();
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiScanQrCodeSingleBtnDialog(View view) {
        HmiBtnListener hmiBtnListener = this.mHmiBtnListener;
        if (hmiBtnListener != null) {
            hmiBtnListener.action(this, this.mBox.isChecked());
        } else {
            Log.i(this.TAG, "action mHmiBtnListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiScanQrCodeSingleBtnDialog(View view) {
        HmiCloseListener hmiCloseListener = this.mHmiCloseListener;
        if (hmiCloseListener != null) {
            hmiCloseListener.hmiClose(this);
        } else {
            dismiss();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mClose.setImageResource(this.mCloseResourceId);
        this.mClauseIcon.setImageResource(this.mClauseIconId);
        this.mTitle.setText(this.hmiTitle);
        this.mQrCode.setImageBitmap(this.mQrCodeBitmap);
        this.mContent.setText(this.hmiContent);
        this.mClause.setMovementMethod(LinkMovementMethod.getInstance());
        this.mClause.setHighlightColor(ContextCompat.getColor(getContext(), R.color.oneoshmi_transparent));
        this.mClause.setText(this.hmiClause);
        this.mDesc.setText(this.hmiDesc);
        this.mContent.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (HmiScanQrCodeSingleBtnDialog.this.mContent.getLineCount() > 1) {
                    HmiScanQrCodeSingleBtnDialog.this.mDescLinearLayout.setGravity(8388627);
                }
                HmiScanQrCodeSingleBtnDialog.this.mContent.getViewTreeObserver().removeOnPreDrawListener(this);
                return false;
            }
        });
        this.mDesc.setText(this.hmiDesc);
        this.mBtn.setText(this.hmiBtnText);
    }

    public void hmiConfigChange() {
        Log.i(this.TAG, "hmiConfigChange: run");
        Context context = getContext();
        if (context == null) {
            Log.i(this.TAG, "hmiConfigChange: context is null");
            return;
        }
        Log.i(this.TAG, "uiMode ====" + context.getResources().getConfiguration().uiMode);
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mClose.setImageResource(this.mCloseResourceId);
        this.mClauseIcon.setImageResource(this.mClauseIconId);
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_content_color));
        this.mDesc.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_desc_color));
        this.mBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_single_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_dialog_btn_radius));
        this.mBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_single_btn_text_color));
    }

    public HmiScanQrCodeSingleBtnDialog setQrCodeBitmap(Bitmap qrCodeBitmap) {
        Log.i(this.TAG, "setQrCodeBitmap: qrCodeBitmap = " + qrCodeBitmap);
        this.mQrCodeBitmap = qrCodeBitmap;
        HmiImageView hmiImageView = this.mQrCode;
        if (hmiImageView != null) {
            hmiImageView.setImageBitmap(qrCodeBitmap);
        }
        return this;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        hmiConfigChange();
    }

    public HmiScanQrCodeSingleBtnDialog setClauseResourceId(int mDescIconId) {
        this.mClauseIconId = mDescIconId;
        return this;
    }

    public HmiScanQrCodeSingleBtnDialog setHmiTitle(String title) {
        this.hmiTitle = title;
        return this;
    }

    public HmiScanQrCodeSingleBtnDialog setHmiDesc(String desc) {
        this.hmiDesc = desc;
        return this;
    }

    public HmiScanQrCodeSingleBtnDialog setHmiClause(CharSequence clause) {
        this.hmiClause = clause;
        return this;
    }

    public HmiScanQrCodeSingleBtnDialog setHmiContent(String content) {
        this.hmiContent = content;
        return this;
    }

    public HmiScanQrCodeSingleBtnDialog setHmiBtnText(String btnText) {
        this.hmiBtnText = btnText;
        return this;
    }

    public HmiScanQrCodeSingleBtnDialog setHmiBtnListener(HmiBtnListener hmiBtnListener) {
        this.mHmiBtnListener = hmiBtnListener;
        return this;
    }

    public void setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        this.mHmiCloseListener = hmiCloseListener;
    }

    public HmiScanQrCodeSingleBtnDialog setHmiQrCodeRefreshListener(HmiQrCodeRefreshListener hmiQrCodeRefreshListener) {
        this.mHmiQrCodeRefreshListener = hmiQrCodeRefreshListener;
        return this;
    }
}
