package com.geely.toolchain.hmi.dialog;

import android.app.Dialog;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;
import com.geely.toolchain.hmi.util.UiUtil;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class BaseHmiDialogFragment extends DialogFragment {
    protected final String TAG = getClass().getSimpleName() + " - " + hashCode();
    private boolean isShow = false;

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    protected abstract int setLayoutId();

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Log.i(this.TAG, this.TAG + " : onCreate");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        ((Dialog) Objects.requireNonNull(getDialog())).getWindow().setBackgroundDrawable(new ColorDrawable(0));
        return inflater.inflate(setLayoutId(), container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Log.d(this.TAG, this.TAG + " : onViewCreated");
        super.onViewCreated(view, savedInstanceState);
        if (getContext() == null) {
            FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
            return;
        }
        if (UiUtil.getHmiCurrentModelIsDark(getContext())) {
            Log.d(this.TAG, "current mode is dark");
        } else {
            Log.d(this.TAG, "current mode is light");
        }
        FragmentTrackHelper.onFragmentViewCreated(this, view, savedInstanceState);
    }

    @Override // androidx.fragment.app.DialogFragment
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        Dialog dialog = new Dialog(requireContext()) { // from class: com.geely.toolchain.hmi.dialog.BaseHmiDialogFragment.1
            @Override // android.app.Dialog, android.content.DialogInterface
            public void dismiss() {
                InputMethodManager inputMethodManager;
                super.dismiss();
                View currentFocus = getCurrentFocus();
                if ((currentFocus instanceof TextView) && (inputMethodManager = (InputMethodManager) BaseHmiDialogFragment.this.requireContext().getSystemService("input_method")) != null && inputMethodManager.isActive()) {
                    inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
                }
            }
        };
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        Log.d(this.TAG, this.TAG + " : onResume");
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Log.d(this.TAG, this.TAG + " : onStart");
        super.onStart();
        int i = Build.VERSION.SDK_INT;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        Log.d(this.TAG, this.TAG + " : onPause");
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStop() {
        Log.d(this.TAG, this.TAG + " : onStop");
        super.onStop();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        Log.d(this.TAG, this.TAG + " : onDestroyView");
        this.isShow = false;
        super.onDestroyView();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        Log.d(this.TAG, this.TAG + " : onDestroy");
        this.isShow = false;
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        Log.d(this.TAG, this.TAG + " : onConfigurationChanged " + newConfig);
        super.onConfigurationChanged(newConfig);
    }

    @Override // androidx.fragment.app.Fragment
    public void onMultiWindowModeChanged(boolean isInMultiWindowMode) {
        Log.d(this.TAG, this.TAG + " : onMultiWindowModeChanged " + isInMultiWindowMode);
        super.onMultiWindowModeChanged(isInMultiWindowMode);
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(FragmentManager manager, String tag) {
        Log.d(this.TAG, this.TAG + " : show  " + tag);
        if (this.isShow) {
            Log.d(this.TAG, this.TAG + " : already show");
        } else {
            this.isShow = true;
            super.show(manager, tag);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        Log.d(this.TAG, this.TAG + " : dismiss");
        this.isShow = false;
        super.dismiss();
    }
}
