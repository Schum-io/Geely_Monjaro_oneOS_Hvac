package com.geely.hvac.activity;

import android.view.View;
import com.geely.hvac.databinding.LayoutPhysiotherapySetDetailLeftBinding;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class PhysiotherapyDetailLeftActivity extends DialogActivity {
    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutPhysiotherapySetDetailLeftBinding layoutPhysiotherapySetDetailLeftBindingInflate = LayoutPhysiotherapySetDetailLeftBinding.inflate(getLayoutInflater());
        layoutPhysiotherapySetDetailLeftBindingInflate.setModel(getMainViewModel());
        layoutPhysiotherapySetDetailLeftBindingInflate.close.setOnClickListener(this::onCloseClicked);
        return layoutPhysiotherapySetDetailLeftBindingInflate.getRoot();
    }

    private void onCloseClicked(View view) {
        finish();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }
}
