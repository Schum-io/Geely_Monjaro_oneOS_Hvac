package com.geely.hvac.psd.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.databinding.FragmentSeatPhysicalTherapyBinding;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;

/* loaded from: classes.dex */
public class GlySeatPhysicalTherapyFragment extends Fragment {
    protected final String TAG = "GlySeatPhysicalTherapyFragment";

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
        FragmentSeatPhysicalTherapyBinding fragmentSeatPhysicalTherapyBindingInflate = FragmentSeatPhysicalTherapyBinding.inflate(inflater);
        fragmentSeatPhysicalTherapyBindingInflate.setModel(appMainViewModel);
        return fragmentSeatPhysicalTherapyBindingInflate.getRoot();
    }
}
