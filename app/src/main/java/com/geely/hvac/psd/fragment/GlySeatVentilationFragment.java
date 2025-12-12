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
import com.geely.hvac.databinding.FragmentSeatVentilationBinding;
import com.geely.hvac.psd.component.PSDSeatSetTipsDialog;
import com.geely.hvac.utils.ActivityManager;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class GlySeatVentilationFragment extends Fragment {
    protected final String TAG = "GlySeatVentilationFragment";
    private PSDSeatSetTipsDialog mSeatSetTipsDialog;
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
        FragmentSeatVentilationBinding fragmentSeatVentilationBindingInflate = FragmentSeatVentilationBinding.inflate(inflater);
        this.mUiMode = getResources().getConfiguration().uiMode;
        fragmentSeatVentilationBindingInflate.setModel(appMainViewModel);
        appMainViewModel.setPsdVentilationSeatBinding(fragmentSeatVentilationBindingInflate);
        fragmentSeatVentilationBindingInflate.psdWindInfo.setOnClickListener(new View.OnClickListener() { // from class: com.geely.hvac.psd.fragment.GlySeatVentilationFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                LogUtil.i("GlySeatVentilationFragment", "showSeatSetTipsDialog");
                if (GlySeatVentilationFragment.this.mSeatSetTipsDialog == null) {
                    GlySeatVentilationFragment.this.mSeatSetTipsDialog = new PSDSeatSetTipsDialog(ActivityManager.getInstance().getCurrentVisibleActivityOrContext(), GlyAcApp.getInstance().getResources().getString(R.string.psd_seat_set_wind_tips));
                    GlySeatVentilationFragment.this.mSeatSetTipsDialog.getWindow().setType(2038);
                }
                if (!GlySeatVentilationFragment.this.mSeatSetTipsDialog.isShowing()) {
                    GlySeatVentilationFragment.this.mSeatSetTipsDialog.show();
                }
                SensorsDataAutoTrackHelper.trackViewOnClick(v);
            }
        });
        return fragmentSeatVentilationBindingInflate.getRoot();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        LogUtil.d("GlySeatVentilationFragment", "mUiMode = " + this.mUiMode + " , newConfig.uiMode = " + newConfig.uiMode);
        if (this.mUiMode != newConfig.uiMode) {
            this.mUiMode = newConfig.uiMode;
            PSDSeatSetTipsDialog pSDSeatSetTipsDialog = this.mSeatSetTipsDialog;
            if (pSDSeatSetTipsDialog != null) {
                pSDSeatSetTipsDialog.dismiss();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        LogUtil.d("GlySeatVentilationFragment", "onStop");
        PSDSeatSetTipsDialog pSDSeatSetTipsDialog = this.mSeatSetTipsDialog;
        if (pSDSeatSetTipsDialog != null) {
            pSDSeatSetTipsDialog.dismiss();
        }
    }
}
