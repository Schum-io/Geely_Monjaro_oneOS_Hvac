package com.geely.hvac.psd.fragment;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.databinding.FragmentSeatHeatBinding;
import com.geely.hvac.psd.component.PSDSeatSetTipsDialog;
import com.geely.hvac.utils.ActivityManager;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class GlySeatHeatFragment extends Fragment {
    protected final String TAG = "GlySeatHeatFragment";
    PSDSeatSetTipsDialog mPsdSeatSetTipsDialog;
    private int mUiMode;

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        FragmentTrackHelper.onFragmentViewCreated(this, view, bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        FragmentTrackHelper.trackFragmentSetUserVisibleHint(this, z);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        AppMainViewModel appMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        FragmentSeatHeatBinding fragmentSeatHeatBindingInflate = FragmentSeatHeatBinding.inflate(inflater);
        this.mUiMode = getResources().getConfiguration().uiMode;
        fragmentSeatHeatBindingInflate.setModel(appMainViewModel);
        appMainViewModel.setPsdHeatViewBinding(fragmentSeatHeatBindingInflate);
        fragmentSeatHeatBindingInflate.psdHeatInfo.setOnClickListener(new View.OnClickListener() { // from class: com.geely.hvac.psd.fragment.GlySeatHeatFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LogUtil.i("GlySeatHeatFragment", "showSeatSetTipsDialog");
                if (GlySeatHeatFragment.this.mPsdSeatSetTipsDialog == null) {
                    GlySeatHeatFragment.this.mPsdSeatSetTipsDialog = new PSDSeatSetTipsDialog(ActivityManager.getInstance().getCurrentVisibleActivityOrContext(), GlyAcApp.getInstance().getResources().getString(R.string.psd_seat_set_heat_tips));
                    GlySeatHeatFragment.this.mPsdSeatSetTipsDialog.getWindow().setType(2038);
                }
                if (!GlySeatHeatFragment.this.mPsdSeatSetTipsDialog.isShowing()) {
                    GlySeatHeatFragment.this.mPsdSeatSetTipsDialog.show();
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
        return fragmentSeatHeatBindingInflate.getRoot();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        LogUtil.d("GlySeatHeatFragment", "mUiMode = " + this.mUiMode + " , newConfig.uiMode = " + newConfig.uiMode);
        if (this.mUiMode != newConfig.uiMode) {
            this.mUiMode = newConfig.uiMode;
            PSDSeatSetTipsDialog pSDSeatSetTipsDialog = this.mPsdSeatSetTipsDialog;
            if (pSDSeatSetTipsDialog != null) {
                pSDSeatSetTipsDialog.dismiss();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        LogUtil.d("GlySeatHeatFragment", "onStop");
        PSDSeatSetTipsDialog pSDSeatSetTipsDialog = this.mPsdSeatSetTipsDialog;
        if (pSDSeatSetTipsDialog != null) {
            pSDSeatSetTipsDialog.dismiss();
        }
    }
}
