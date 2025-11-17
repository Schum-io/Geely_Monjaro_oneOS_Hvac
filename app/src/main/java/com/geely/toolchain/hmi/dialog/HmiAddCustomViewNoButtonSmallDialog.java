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
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiAddCustomViewNoButtonSmallDialog extends BaseHmiDialogFragment {
    private int hmiCloseResourceId = R.drawable.oneoshmi_ic_dialog_close;
    private String hmiTitle;
    private View hmiView;
    private HmiImageView mCloseIcon;
    private LinearLayout mCustomView;
    private HmiCloseListener mHmiCloseListener;
    private FrameLayout mRootView;
    private HmiTextView mTitle;

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_add_custom_view_no_button_small_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        if (savedInstanceState != null) {
            this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
            this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
        }
        initView(view);
        initData();
    }

    private void initView(View view) {
        Log.i(this.TAG, "initView: run");
        this.mTitle = (HmiTextView) view.findViewById(R.id.title);
        this.mCloseIcon = (HmiImageView) view.findViewById(R.id.close);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mCustomView = (LinearLayout) view.findViewById(R.id.customView);
        this.mCloseIcon.setOnClickListener(new View.OnClickListener() {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                HmiAddCustomViewNoButtonSmallDialog.this.lambda$initView$0$HmiAddCustomViewNoButtonSmallDialog(view2);
            }
        });
    }

    public /* synthetic */ void lambda$initView$0$HmiAddCustomViewNoButtonSmallDialog(View view) {
        HmiCloseListener hmiCloseListener = this.mHmiCloseListener;
        if (hmiCloseListener != null) {
            hmiCloseListener.hmiClose(this);
        } else {
            Log.i(this.TAG, "initView: mHmiCloseListener is null");
            dismiss();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        Log.i(this.TAG, "initData: run");
        this.mTitle.setText(this.hmiTitle);
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
        Log.i(this.TAG, "hmiConfigChange: run");
        Context context = getContext();
        if (context == null) {
            Log.i(this.TAG, "hmiConfigChange: context is null");
            return;
        }
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
        this.mCloseIcon.setImageResource(this.hmiCloseResourceId);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        Log.i(this.TAG, "onConfigurationChanged: run");
        hmiConfigChange();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.i(this.TAG, this.TAG + " onSaveInstanceState run");
        outState.putString("hmiTitle", this.hmiTitle);
        outState.putInt("hmiCloseResourceId", this.hmiCloseResourceId);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        Log.i(this.TAG, "onViewStateRestored: run");
        if (savedInstanceState == null) {
            Log.i(this.TAG, "onViewStateRestored: savedInstanceState is null");
        } else {
            this.hmiTitle = savedInstanceState.getString("hmiTitle", this.hmiTitle);
            this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
        }
    }

    public HmiAddCustomViewNoButtonSmallDialog setHmiAddView(View view) {
        Log.i(this.TAG, "setHmiAddView: run " + view.toString());
        this.hmiView = view;
        return this;
    }

    public HmiAddCustomViewNoButtonSmallDialog setHmiTitle(String title) {
        Log.i(this.TAG, "setHmiTitle: title = " + title);
        this.hmiTitle = title;
        return this;
    }

    public HmiAddCustomViewNoButtonSmallDialog setHmiCloseResourceId(int closeResourceId) {
        Log.i(this.TAG, "setHmiCloseResourceId: closeResourceId = " + closeResourceId);
        this.hmiCloseResourceId = closeResourceId;
        return this;
    }

    public HmiAddCustomViewNoButtonSmallDialog setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        Log.i(this.TAG, "setHmiCloseListener: run");
        this.mHmiCloseListener = hmiCloseListener;
        return this;
    }
}
