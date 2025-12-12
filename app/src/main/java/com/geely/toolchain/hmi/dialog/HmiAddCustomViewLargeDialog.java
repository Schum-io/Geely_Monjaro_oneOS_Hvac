package com.geely.toolchain.hmi.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.content.ContextCompat;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes.dex */
public class HmiAddCustomViewLargeDialog extends BaseHmiDialogFragment {
    private View hmiView;
    private HmiImageView mCloseIcon;
    private LinearLayout mCustomView;
    private HmiCloseListener mHmiCloseListener;
    private HmiConfigChangeListener mHmiConfigChangeListener;
    private HmiSelectTitleListener mHmiSelectTitleListener;
    private String mHmiTitle;
    private View[] mIndicators;
    private boolean mIsShowIndicators;
    private FrameLayout mRootView;
    private HmiTextView mTitle;
    private HmiTextView[] mTitles;
    private ArrayList<String> hmiTitles = new ArrayList<>();
    private int hmiCloseResourceId = R.drawable.oneoshmi_close_pop_big;
    private int maxItems = 3;
    private int flagSelectIndex = 0;
    private int mWidth = 1488;
    private int mHeight = 680;

    public interface HmiConfigChangeListener {
        void configChange(HmiAddCustomViewLargeDialog dialog, Configuration newConfig);
    }

    public interface HmiSelectTitleListener {
        void selectTab(int index);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_add_custom_view_large_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Log.i(this.TAG, "onViewCreated: run");
        if (savedInstanceState != null) {
            this.hmiTitles = savedInstanceState.getStringArrayList("hmiTitle");
            this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
            this.flagSelectIndex = savedInstanceState.getInt("flagSelectIndex", this.flagSelectIndex);
            this.mHmiTitle = savedInstanceState.getString("singleTitle");
        }
        int i = this.maxItems;
        this.mTitles = new HmiTextView[i];
        this.mIndicators = new View[i];
        initView(view);
        initData();
    }

    private void initView(View view) {
        Log.i(this.TAG, "initView: run");
        this.mTitles[0] = (HmiTextView) view.findViewById(R.id.title1);
        this.mTitles[1] = (HmiTextView) view.findViewById(R.id.title2);
        this.mTitles[2] = (HmiTextView) view.findViewById(R.id.title3);
        this.mIndicators[0] = view.findViewById(R.id.indicator1);
        this.mIndicators[1] = view.findViewById(R.id.indicator2);
        this.mIndicators[2] = view.findViewById(R.id.indicator3);
        this.mCloseIcon = (HmiImageView) view.findViewById(R.id.close);
        this.mTitle = (HmiTextView) view.findViewById(R.id.title);
        this.mRootView = (FrameLayout) view.findViewById(R.id.rootView);
        this.mCustomView = (LinearLayout) view.findViewById(R.id.customView);
        setTitlesColor(this.flagSelectIndex);
        this.mCloseIcon.setOnClickListener(this::lambda$initView$0$HmiAddCustomViewLargeDialog);
        if (!TextUtils.isEmpty(this.mHmiTitle)) {
            this.mTitle.setText(this.mHmiTitle);
            this.mTitle.setVisibility(0);
        }
        ArrayList<String> arrayList = this.hmiTitles;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.hmiTitles.size(); i++) {
            this.mTitles[i].setVisibility(0);
            int finalI = i;
            this.mTitles[i].setOnClickListener(view2 -> lambda$initView$1$HmiAddCustomViewLargeDialog(finalI, view2));
        }
    }

    public /* synthetic */ void lambda$initView$0$HmiAddCustomViewLargeDialog(View view) {
        HmiCloseListener hmiCloseListener = this.mHmiCloseListener;
        if (hmiCloseListener != null) {
            hmiCloseListener.hmiClose(this);
        } else {
            Log.i(this.TAG, "initView: mHmiCloseListener is null");
            dismiss();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public /* synthetic */ void lambda$initView$1$HmiAddCustomViewLargeDialog(int i, View view) {
        setTitlesColor(i);
        if (this.flagSelectIndex == i) {
            Log.i(this.TAG, "initView: 标题不可重复点击");
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
            return;
        }
        this.flagSelectIndex = i;
        HmiSelectTitleListener hmiSelectTitleListener = this.mHmiSelectTitleListener;
        if (hmiSelectTitleListener != null) {
            hmiSelectTitleListener.selectTab(i);
        } else {
            Log.e(this.TAG, "onClick: mHmiSelectTitleListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        Log.i(this.TAG, "initData: run");
        ArrayList<String> arrayList = this.hmiTitles;
        if (arrayList != null && !arrayList.isEmpty()) {
            for (int i = 0; i < this.hmiTitles.size(); i++) {
                this.mTitles[i].setText(this.hmiTitles.get(i));
            }
        }
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

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Window window = ((Dialog) Objects.requireNonNull(getDialog())).getWindow();
        if (window != null) {
            window.setLayout(this.mWidth, this.mHeight);
        }
        Log.i(this.TAG, "onStart: run mWidth:" + this.mWidth + "mHeight: " + this.mHeight);
    }

    public HmiAddCustomViewLargeDialog setIndicatorsVisibility(boolean isShowIndicators) {
        this.mIsShowIndicators = isShowIndicators;
        return this;
    }

    private void hmiConfigChange() {
        Log.i(this.TAG, "hmiConfigChange: run");
        Context context = getContext();
        if (context == null) {
            Log.i(this.TAG, "hmiConfigChange: context is null");
            return;
        }
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        setTitlesColor(this.flagSelectIndex);
        this.mCloseIcon.setImageResource(this.hmiCloseResourceId);
        this.mTitle.setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
    }

    public void setTitlesColor(int select) {
        Context context = getContext();
        if (context == null) {
            Log.i(this.TAG, "hmiConfigChange: context is null");
            return;
        }
        ArrayList<String> arrayList = this.hmiTitles;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.hmiTitles.size(); i++) {
            if (select == i) {
                this.mTitles[i].setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_title_color));
                if (this.mIsShowIndicators && this.hmiTitles.size() > 1) {
                    this.mIndicators[i].setVisibility(0);
                } else {
                    this.mIndicators[i].setVisibility(8);
                }
            } else {
                this.mTitles[i].setTextColor(ContextCompat.getColor(context, R.color.oneoshmi_dialog_un_select_title_color));
                this.mIndicators[i].setVisibility(8);
            }
        }
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        Log.i(this.TAG, "onConfigurationChanged: run");
        hmiConfigChange();
        HmiConfigChangeListener hmiConfigChangeListener = this.mHmiConfigChangeListener;
        if (hmiConfigChangeListener != null) {
            hmiConfigChangeListener.configChange(this, newConfig);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.i(this.TAG, this.TAG + " onSaveInstanceState run");
        outState.putStringArrayList("hmiTitle", this.hmiTitles);
        outState.putInt("hmiCloseResourceId", this.hmiCloseResourceId);
        outState.putInt("flagSelectIndex", this.flagSelectIndex);
        outState.putString("singleTitle", this.mHmiTitle);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        Log.i(this.TAG, "onViewStateRestored: run");
        if (savedInstanceState == null) {
            Log.i(this.TAG, "onViewStateRestored: savedInstanceState is null");
            return;
        }
        this.hmiTitles = savedInstanceState.getStringArrayList("hmiTitle");
        this.hmiCloseResourceId = savedInstanceState.getInt("hmiCloseResourceId", this.hmiCloseResourceId);
        this.flagSelectIndex = savedInstanceState.getInt("flagSelectIndex", this.flagSelectIndex);
        this.mHmiTitle = savedInstanceState.getString("singleTitle");
    }

    public HmiAddCustomViewLargeDialog setDialogSize(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        return this;
    }

    public HmiAddCustomViewLargeDialog setHmiAddView(View view) {
        Log.i(this.TAG, "setHmiAddView: view = " + view);
        this.hmiView = view;
        return this;
    }

    public HmiAddCustomViewLargeDialog setHmiConfigChangeListener(HmiConfigChangeListener hmiConfigChangeListener) {
        Log.i(this.TAG, "setHmiSelectTitleListener: hmiSelectTitleListener = " + hmiConfigChangeListener);
        this.mHmiConfigChangeListener = hmiConfigChangeListener;
        return this;
    }

    public HmiAddCustomViewLargeDialog setHmiTitles(ArrayList titles) {
        Log.i(this.TAG, "setHmiTitle: title = " + titles);
        this.hmiTitles = titles;
        return this;
    }

    public HmiAddCustomViewLargeDialog setHmiTitle(String titles) {
        Log.i(this.TAG, "setHmiTitle: title = " + titles);
        this.mHmiTitle = titles;
        return this;
    }

    public HmiAddCustomViewLargeDialog setHmiCloseResourceId(int closeResourceId) {
        Log.i(this.TAG, "setHmiCloseResourceId: closeResourceId = " + closeResourceId);
        this.hmiCloseResourceId = closeResourceId;
        return this;
    }

    public HmiAddCustomViewLargeDialog setHmiCloseListener(HmiCloseListener hmiCloseListener) {
        Log.i(this.TAG, "setHmiCloseListener: hmiCloseListener = " + hmiCloseListener);
        this.mHmiCloseListener = hmiCloseListener;
        return this;
    }

    public HmiAddCustomViewLargeDialog setHmiSelectTitleListener(HmiSelectTitleListener hmiSelectTitleListener) {
        Log.i(this.TAG, "setHmiSelectTitleListener: hmiSelectTitleListener = " + hmiSelectTitleListener);
        this.mHmiSelectTitleListener = hmiSelectTitleListener;
        return this;
    }
}
