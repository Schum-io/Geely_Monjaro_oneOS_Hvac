package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiStateButton;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiAddCustomViewDoubleButtonSmallDialog extends BaseHmiDialogFragment {
    private int hmiCloseResourceId = R.drawable.oneoshmi_ic_dialog_close;
    private String hmiLeftBtnText;
    private String hmiRightBtnText;
    private String hmiTitle;
    private View hmiView;
    private HmiImageView mCloseIcon;
    private LinearLayout mCustomView;
    private HmiCloseListener mHmiCloseListener;
    private HmiSelectListener mHmiSelectListener;
    private HmiStateButton mLeftBtn;
    private HmiStateButton mRightBtn;
    private FrameLayout mRootView;
    private HmiTextView mTitle;

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_add_custom_view_double_button_small_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState != null) {
            this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
            this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
            this.hmiLeftBtnText = savedInstanceState.getString("hmiLeftBtnText", this.hmiLeftBtnText);
            this.hmiRightBtnText = savedInstanceState.getString("hmiRightBtnText", this.hmiRightBtnText);
        }
        initView(view);
        initData();
    }

    private void initView(View view) {
        this.mTitle = (HmiTextView) view.findViewById(R.id.title);
        this.mCloseIcon = (HmiImageView) view.findViewById(R.id.close);
        this.mLeftBtn = (HmiStateButton) view.findViewById(R.id.leftBtn);
        this.mRightBtn = (HmiStateButton) view.findViewById(R.id.rightBtn);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mCustomView = (LinearLayout) view.findViewById(R.id.customView);
        this.mLeftBtn.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiAddCustomViewDoubleButtonSmallDialog$qQ2ImEQhnh3U-ZS7l0edLZEhPeg
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiAddCustomViewDoubleButtonSmallDialog.this.lambda$initView$0$HmiAddCustomViewDoubleButtonSmallDialog(view2);
            }
        });
        this.mRightBtn.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiAddCustomViewDoubleButtonSmallDialog$d2GHQdkhsrVw8Yl1hiXZi4Rrkso
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiAddCustomViewDoubleButtonSmallDialog.this.lambda$initView$1$HmiAddCustomViewDoubleButtonSmallDialog(view2);
            }
        });
        this.mCloseIcon.setOnClickListener(new View.OnClickListener() { // from class: com.geely.toolchain.hmi.dialog.-$$Lambda$HmiAddCustomViewDoubleButtonSmallDialog$juYxv0mlZEWMpWFT_fjDe_3D2IY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiAddCustomViewDoubleButtonSmallDialog.this.lambda$initView$2$HmiAddCustomViewDoubleButtonSmallDialog(view2);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiAddCustomViewDoubleButtonSmallDialog(View view) {
        HmiSelectListener hmiSelectListener = this.mHmiSelectListener;
        if (hmiSelectListener != null) {
            hmiSelectListener.leftAction(this);
        } else {
            Log.d(this.TAG, "leftAction mHmiSelectListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiAddCustomViewDoubleButtonSmallDialog(View view) {
        HmiSelectListener hmiSelectListener = this.mHmiSelectListener;
        if (hmiSelectListener != null) {
            hmiSelectListener.rightAction(this);
        } else {
            Log.d(this.TAG, "rightAction mHmiSelectListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$2$HmiAddCustomViewDoubleButtonSmallDialog(View view) {
        HmiCloseListener hmiCloseListener = this.mHmiCloseListener;
        if (hmiCloseListener != null) {
            hmiCloseListener.hmiClose(this);
        } else {
            Log.d(this.TAG, "initView: mHmiCloseListener is null");
            dismiss();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        this.mTitle.setText(this.hmiTitle);
        this.mLeftBtn.setText(this.hmiLeftBtnText);
        this.mRightBtn.setText(this.hmiRightBtnText);
        this.mCloseIcon.setImageResource(this.hmiCloseResourceId);
        View view = this.hmiView;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.hmiView);
            }
            this.mCustomView.addView(this.hmiView);
            return;
        }
        Log.e(this.TAG, "initData: hmiView  is null");
    }

    private void hmiConfigChange() {
        Context context = getContext();
        if (context == null) {
            return;
        }
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mLeftBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_color_click_default), context.getResources().getDimension(R.dimen.oneoshmi_common_radius_small));
        this.mRightBtn.setBtnColorAndRadius(ContextCompat.getColor(context, R.color.oneoshmi_dialog_un_select_btn_bg_color), context.getResources().getDimension(R.dimen.oneoshmi_common_radius_small));
        this.mLeftBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_select_btn_text_color));
        this.mRightBtn.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_unselect_btn_text_color));
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        hmiConfigChange();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.d(this.TAG, this.TAG + " onSaveInstanceState");
        outState.putString("hmiTitle", this.hmiTitle);
        outState.putInt("hmiCloseResourceId", this.hmiCloseResourceId);
        outState.putString("hmiLeftBtnText", this.hmiLeftBtnText);
        outState.putString("hmiRightBtnText", this.hmiRightBtnText);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        if (savedInstanceState == null) {
            Log.d(this.TAG, "onViewStateRestored: savedInstanceState is null");
            return;
        }
        this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
        this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
        this.hmiLeftBtnText = savedInstanceState.getString("hmiLeftBtnText", this.hmiLeftBtnText);
        this.hmiRightBtnText = savedInstanceState.getString("hmiRightBtnText", this.hmiRightBtnText);
    }

    public HmiAddCustomViewDoubleButtonSmallDialog setHmiAddView(View view) {
        Log.d(this.TAG, "setHmiAddView: " + view.toString());
        this.hmiView = view;
        return this;
    }

    public HmiAddCustomViewDoubleButtonSmallDialog setHmiTitle(String title) {
        Log.d(this.TAG, "setHmiTitle: " + title);
        this.hmiTitle = title;
        return this;
    }

    public HmiAddCustomViewDoubleButtonSmallDialog setHmiCloseResourceId(int closeResourceId) {
        Log.d(this.TAG, "setHmiCloseResourceId: " + closeResourceId);
        this.hmiCloseResourceId = closeResourceId;
        return this;
    }

    public HmiAddCustomViewDoubleButtonSmallDialog setHmiLeftBtnText(String leftBtnText) {
        Log.d(this.TAG, "setHmiLeftBtnText: " + leftBtnText);
        this.hmiLeftBtnText = leftBtnText;
        return this;
    }

    public HmiAddCustomViewDoubleButtonSmallDialog setHmiRightBtnText(String rightBtnText) {
        Log.d(this.TAG, "setHmiRightBtnText: " + rightBtnText);
        this.hmiRightBtnText = rightBtnText;
        return this;
    }

    public HmiAddCustomViewDoubleButtonSmallDialog setHmiSelectListener(HmiSelectListener selectListener) {
        Log.d(this.TAG, "setHmiSelectListener: run");
        this.mHmiSelectListener = selectListener;
        return this;
    }

    public HmiAddCustomViewDoubleButtonSmallDialog setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        Log.d(this.TAG, "setHmiCloseListener: run");
        this.mHmiCloseListener = hmiCloseListener;
        return this;
    }
}
