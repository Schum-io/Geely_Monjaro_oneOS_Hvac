package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.dialog.HmiDialogHelper;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiStateButton;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiHasCheckBoxSingleButtonDialog extends BaseHmiDialogFragment implements HmiDialogHelper {
    private String hmiBtnText;
    private String hmiContent;
    private String hmiDesc;
    private String hmiTitle;
    private CheckBox mBox;
    private HmiStateButton mBtn;
    private HmiImageView mClose;
    private final int mCloseResourceId = R.drawable.oneoshmi_close_pop_big;
    private HmiTextView mContent;
    private HmiTextView mDesc;
    private ImageView mDescIcon;
    private int mDescIconId;
    private LinearLayout mDescLinearLayout;
    private HmiBtnListener mHmiBtnListener;
    private HmiCloseListener mHmiCloseListener;
    private FrameLayout mRootView;
    private HmiTextView mTitle;

    public interface HmiBtnListener {
        void action(HmiHasCheckBoxSingleButtonDialog dialog, boolean isChecked);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_has_check_box_single_button_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState != null) {
            this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
            this.hmiContent = savedInstanceState.getString("hmiContent", this.hmiContent);
            this.hmiDesc = savedInstanceState.getString("hmiDesc", this.hmiDesc);
            this.hmiBtnText = savedInstanceState.getString("hmiBtnText", this.hmiBtnText);
        }
        initView(view);
        initData();
    }

    private void initView(View view) {
        this.mClose = (HmiImageView) view.findViewById(R.id.close);
        this.mTitle = (HmiTextView) view.findViewById(R.id.title);
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        this.mDesc = (HmiTextView) view.findViewById(R.id.desc);
        this.mBtn = (HmiStateButton) view.findViewById(R.id.btn);
        this.mBox = (CheckBox) view.findViewById(R.id.box);
        this.mDescIcon = (ImageView) view.findViewById(R.id.descIcon);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mDescLinearLayout = (LinearLayout) view.findViewById(R.id.ll);
        this.mBtn.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiHasCheckBoxSingleButtonDialog$6riILfe05EfcmEEzJ14HAjUceMI
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiHasCheckBoxSingleButtonDialog.this.lambda$initView$0$HmiHasCheckBoxSingleButtonDialog(view2);
            }
        });
        this.mClose.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiHasCheckBoxSingleButtonDialog$xU0TZK9av3T2pV5AP_vo7MJ93TY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiHasCheckBoxSingleButtonDialog.this.lambda$initView$1$HmiHasCheckBoxSingleButtonDialog(view2);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiHasCheckBoxSingleButtonDialog(View view) {
        HmiBtnListener hmiBtnListener = this.mHmiBtnListener;
        if (hmiBtnListener != null) {
            hmiBtnListener.action(this, this.mBox.isChecked());
        } else {
            Log.i(this.TAG, "action mHmiBtnListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiHasCheckBoxSingleButtonDialog(View view) {
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
        this.mDescIcon.setImageResource(this.mDescIconId);
        this.mTitle.setText(this.hmiTitle);
        this.mContent.setText(this.hmiContent);
        this.mContent.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.geely.toolchain.hmi.dialog.HmiHasCheckBoxSingleButtonDialog.1
            @Override // android.view.ViewTreeObserver.OnPreDrawListener
            public boolean onPreDraw() {
                if (HmiHasCheckBoxSingleButtonDialog.this.mContent.getLineCount() > 1) {
                    HmiHasCheckBoxSingleButtonDialog.this.mDescLinearLayout.setGravity(8388627);
                }
                HmiHasCheckBoxSingleButtonDialog.this.mContent.getViewTreeObserver().removeOnPreDrawListener(this);
                return false;
            }
        });
        this.mDesc.setText(this.hmiDesc);
        this.mBtn.setText(this.hmiBtnText);
    }

    private void hmiConfigChange() {
        Context context = getContext();
        if (context == null) {
            Log.i(this.TAG, "hmiConfigChange: context is null");
            return;
        }
        Log.i(this.TAG, "uiMode ====" + context.getResources().getConfiguration().uiMode);
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mClose.setImageResource(this.mCloseResourceId);
        this.mDescIcon.setImageResource(this.mDescIconId);
        this.mContent.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_content_color));
        this.mDesc.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_desc_color));
        this.mBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_single_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_dialog_btn_radius));
        this.mBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_single_btn_text_color));
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        hmiConfigChange();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.i(this.TAG, this.TAG + " onSaveInstanceState");
        outState.putString("hmiTitle", this.hmiTitle);
        outState.putString("hmiContent", this.hmiContent);
        outState.putString("hmiDesc", this.hmiDesc);
        outState.putString("hmiBtnText", this.hmiBtnText);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        if (savedInstanceState == null) {
            Log.i(this.TAG, "onViewStateRestored: savedInstanceState is null");
            return;
        }
        this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
        this.hmiContent = savedInstanceState.getString("hmiContent", this.hmiContent);
        this.hmiDesc = savedInstanceState.getString("hmiDesc", this.hmiDesc);
        this.hmiBtnText = savedInstanceState.getString("hmiBtnText", this.hmiBtnText);
    }

    public HmiHasCheckBoxSingleButtonDialog setDescResourceId(int mDescIconId) {
        this.mDescIconId = mDescIconId;
        return this;
    }

    public HmiHasCheckBoxSingleButtonDialog setHmiTitle(String title) {
        this.hmiTitle = title;
        return this;
    }

    public HmiHasCheckBoxSingleButtonDialog setHmiDesc(String desc) {
        this.hmiDesc = desc;
        return this;
    }

    public HmiHasCheckBoxSingleButtonDialog setHmiContent(String content) {
        this.hmiContent = content;
        return this;
    }

    public HmiHasCheckBoxSingleButtonDialog setHmiBtnText(String btnText) {
        this.hmiBtnText = btnText;
        return this;
    }

    public HmiHasCheckBoxSingleButtonDialog setHmiBtnListener(HmiBtnListener hmiBtnListener) {
        this.mHmiBtnListener = hmiBtnListener;
        return this;
    }

    public void setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        this.mHmiCloseListener = hmiCloseListener;
    }
}
