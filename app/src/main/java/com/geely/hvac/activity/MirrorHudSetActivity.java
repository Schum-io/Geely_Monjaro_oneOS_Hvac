package com.geely.hvac.activity;

import android.view.View;
import com.geely.hvac.databinding.LayoutMirrorHudSetBinding;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

public class MirrorHudSetActivity extends DialogActivity {
    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutMirrorHudSetBinding layoutMirrorHudSetBindingInflate = LayoutMirrorHudSetBinding.inflate(getLayoutInflater());
        layoutMirrorHudSetBindingInflate.setModel(getMainViewModel());
        layoutMirrorHudSetBindingInflate.close.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                finish();
                SensorsDataAutoTrackHelper.trackViewOnClick(view);
            }
        });
        return layoutMirrorHudSetBindingInflate.getRoot();
    }
}
