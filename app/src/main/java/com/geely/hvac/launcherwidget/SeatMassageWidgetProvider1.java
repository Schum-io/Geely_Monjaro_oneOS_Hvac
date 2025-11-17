package com.geely.hvac.launcherwidget;

import com.geely.hvac.R;

/* loaded from: classes.dex */
public class SeatMassageWidgetProvider1 extends SeatMassageWidgetProvider {
    @Override // com.geely.hvac.launcherwidget.SeatMassageWidgetProvider
    protected int getLayoutId() {
        return R.layout.layout_shotgun_seat_massage_widget;
    }

    @Override // com.geely.hvac.launcherwidget.SeatMassageWidgetProvider
    protected int getZone() {
        return 4;
    }

    @Override // com.geely.hvac.launcherwidget.SeatMassageWidgetProvider
    protected Class getProviderClass() {
        return SeatMassageWidgetProvider1.class;
    }
}
