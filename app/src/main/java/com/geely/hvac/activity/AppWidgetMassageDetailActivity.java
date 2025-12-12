package com.geely.hvac.activity;

import android.view.View;
import com.geely.hvac.databinding.LayoutAppWidgetMassageSetDetailBinding;

/* loaded from: classes.dex */
public class AppWidgetMassageDetailActivity extends DialogActivity {
    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutAppWidgetMassageSetDetailBinding layoutAppWidgetMassageSetDetailBindingInflate = LayoutAppWidgetMassageSetDetailBinding.inflate(getLayoutInflater());
        layoutAppWidgetMassageSetDetailBindingInflate.setModel(getMainViewModel());
        return layoutAppWidgetMassageSetDetailBindingInflate.getRoot();
    }
}
