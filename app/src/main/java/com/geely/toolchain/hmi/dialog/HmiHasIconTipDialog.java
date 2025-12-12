package com.geely.toolchain.hmi.dialog;

import android.app.Dialog;
import android.graphics.drawable.AnimationDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.widget.ProgressBar;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.blur.HmiBlurView;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import java.util.Objects;

/* loaded from: classes.dex */
public class HmiHasIconTipDialog extends BaseHmiDialogFragment {
    private String hmiContent;
    private int hmiIconId;
    private HmiBlurView mBlurView;
    private HmiTextView mContent;
    private HmiViewCreatedListener mHmiViewCreatedListener;
    private HmiImageView mIcon;
    private ProgressBar mProgressBar;

    public interface HmiViewCreatedListener {
        void initializedView(View view);
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment
    protected int setLayoutId() {
        return R.layout.hmi_has_icon_tip_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null) {
            Log.i(this.TAG, "onCreate: arguments is null");
        } else {
            this.hmiIconId = arguments.getInt("hmiIcon");
            this.hmiContent = arguments.getString("hmiContent");
        }
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);
        Window window = ((Dialog) Objects.requireNonNull(getDialog())).getWindow();
        window.setDimAmount(0.0f);
        if (savedInstanceState != null) {
            this.hmiIconId = savedInstanceState.getInt("hmiIcon", this.hmiIconId);
            this.hmiContent = savedInstanceState.getString("hmiContent", this.hmiContent);
        }
        HmiViewCreatedListener hmiViewCreatedListener = this.mHmiViewCreatedListener;
        if (hmiViewCreatedListener != null) {
            hmiViewCreatedListener.initializedView(view);
        }
        initView(view);
        initData();
        this.mBlurView.setWindow(window);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        Log.i(this.TAG, this.TAG + " onSaveInstanceState");
        outState.putInt("hmiIcon", this.hmiIconId);
        outState.putString("hmiContent", this.hmiContent);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onViewStateRestored(Bundle savedInstanceState) {
        super.onViewStateRestored(savedInstanceState);
        if (savedInstanceState == null) {
            Log.i(this.TAG, "onViewStateRestored: savedInstanceState is null");
        } else {
            this.hmiIconId = savedInstanceState.getInt("hmiIcon", this.hmiIconId);
            this.hmiContent = savedInstanceState.getString("hmiContent", this.hmiContent);
        }
    }

    private void initView(View view) {
        this.mIcon = (HmiImageView) view.findViewById(R.id.icon);
        this.mContent = (HmiTextView) view.findViewById(R.id.content);
        this.mProgressBar = (ProgressBar) view.findViewById(R.id.progressBar);
        this.mBlurView = (HmiBlurView) view.findViewById(R.id.blurView);
    }

    private void initData() {
        if (this.hmiIconId == 0) {
            this.mIcon.setVisibility(4);
            this.mProgressBar.setVisibility(0);
        } else {
            this.mIcon.setVisibility(0);
            this.mProgressBar.setVisibility(4);
        }
        this.mIcon.setImageResource(this.hmiIconId);
        if (this.mIcon.getDrawable() instanceof AnimationDrawable) {
            ((AnimationDrawable) this.mIcon.getDrawable()).start();
        }
        this.mContent.setText(this.hmiContent);
    }

    public void setHmiIconId(int hmiIconId) {
        this.hmiIconId = hmiIconId;
        HmiImageView hmiImageView = this.mIcon;
        if (hmiImageView != null) {
            hmiImageView.setVisibility(0);
            this.mProgressBar.setVisibility(4);
            this.mIcon.setImageResource(hmiIconId);
            if (this.mIcon.getDrawable() instanceof AnimationDrawable) {
                ((AnimationDrawable) this.mIcon.getDrawable()).start();
            }
        }
    }

    public void setHmiAnimationDrawable(AnimationDrawable animationDrawable) {
        HmiImageView hmiImageView = this.mIcon;
        if (hmiImageView != null) {
            hmiImageView.setVisibility(0);
            this.mProgressBar.setVisibility(4);
            this.mIcon.setImageDrawable(animationDrawable);
            ((AnimationDrawable) this.mIcon.getDrawable()).start();
        }
    }

    public HmiImageView getIcon() {
        HmiImageView hmiImageView = this.mIcon;
        if (hmiImageView != null) {
            return hmiImageView;
        }
        Log.i(this.TAG, "getIcon: mIcon is null");
        return null;
    }

    public ProgressBar getProgressBar() {
        ProgressBar progressBar = this.mProgressBar;
        if (progressBar != null) {
            return progressBar;
        }
        Log.i(this.TAG, "getProgressBar: mProgressBar is null");
        return null;
    }

    public void setHmiContent(String hmiContent) {
        this.hmiContent = hmiContent;
        HmiTextView hmiTextView = this.mContent;
        if (hmiTextView != null) {
            hmiTextView.setText(hmiContent);
        }
    }

    public void setHmiViewCreatedListener(HmiViewCreatedListener hmiViewCreatedListener) {
        this.mHmiViewCreatedListener = hmiViewCreatedListener;
    }
}
