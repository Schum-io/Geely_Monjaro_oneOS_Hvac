package com.geely.hvac.activity;

import android.view.View;
import com.geely.hvac.databinding.LayoutConstantAcWaringBinding;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

public class ConstantAcWarningActivity extends DialogActivity {
    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutConstantAcWaringBinding layoutConstantAcWaringBindingInflate = LayoutConstantAcWaringBinding.inflate(getLayoutInflater());
        layoutConstantAcWaringBindingInflate.setModel(getMainViewModel());
        layoutConstantAcWaringBindingInflate.sure.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
        return layoutConstantAcWaringBindingInflate.getRoot();
    }
}
