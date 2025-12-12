package com.geely.hvac.psd.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.databinding.FragmentSeatLocationBinding;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.geely.lib.oneosapi.user.bean.LoginType;
import com.sensorsdata.analytics.android.autotrack.aop.FragmentTrackHelper;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class GlySeatLocationFragment extends Fragment {
    protected final String TAG = "GlySeatLocationFragment";

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        FragmentTrackHelper.trackOnHiddenChanged(this, z);
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
        setProperty("com.autolink.trackball.control", "1");
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        setProperty("com.autolink.trackball.control", "1");
        FragmentTrackHelper.trackFragmentResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        setProperty("com.autolink.trackball.control", "1");
        AppMainViewModel appMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        FragmentSeatLocationBinding fragmentSeatLocationBindingInflate = FragmentSeatLocationBinding.inflate(inflater);
        fragmentSeatLocationBindingInflate.setModel(appMainViewModel);
        return fragmentSeatLocationBindingInflate.getRoot();
    }

    private static void setProperty(String key, String value) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            cls.getMethod("set", String.class, String.class).invoke(cls, key, value);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        setProperty("com.autolink.trackball.control", "1");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        setProperty("com.autolink.trackball.control", "1");
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        setProperty("com.autolink.trackball.control", LoginType.PASSWORD);
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        setProperty("com.autolink.trackball.control", LoginType.PASSWORD);
        FragmentTrackHelper.trackFragmentPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        setProperty("com.autolink.trackball.control", LoginType.PASSWORD);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        setProperty("com.autolink.trackball.control", LoginType.PASSWORD);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        setProperty("com.autolink.trackball.control", LoginType.PASSWORD);
    }
}
