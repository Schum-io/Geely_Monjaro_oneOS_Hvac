package com.geely.hvac.psd.component;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.hvac.activity.BaseAutoHideDialog;
import com.geely.hvac.databinding.LayoutPsdSeatSetTipsBinding;

/* loaded from: classes.dex */
public class PSDSeatSetTipsDialog extends BaseAutoHideDialog {
    private String mCommit;

    public PSDSeatSetTipsDialog(Context context, String commit) {
        super(context);
        this.mCommit = commit;
    }

    @Override // com.geely.hvac.dialog.BaseDialog
    protected View getView() {
        LayoutPsdSeatSetTipsBinding layoutPsdSeatSetTipsBindingInflate = LayoutPsdSeatSetTipsBinding.inflate(getLayoutInflater());
        layoutPsdSeatSetTipsBindingInflate.setModel(getMainViewModel());
        layoutPsdSeatSetTipsBindingInflate.psdHeatWindInfo.setText(this.mCommit);
        return layoutPsdSeatSetTipsBindingInflate.getRoot();
    }

    @Override // com.geely.hvac.activity.BaseAutoHideDialog, com.geely.hvac.dialog.BaseDialog, android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.geely.hvac.activity.BaseAutoHideDialog, android.app.Dialog
    public void show() {
        super.show();
        if (GlyAcApp.getInstance().getResources().getString(R.string.psd_seat_set_heat_tips).equals(this.mCommit)) {
            getMainViewModel().setPsdHeatSeatSetTipsSelect(true);
        } else {
            getMainViewModel().setPsdVentilationSeatSetTipsSelect(true);
        }
    }

    @Override // com.geely.hvac.activity.BaseAutoHideDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        if (GlyAcApp.getInstance().getResources().getString(R.string.psd_seat_set_heat_tips).equals(this.mCommit)) {
            getMainViewModel().setPsdHeatSeatSetTipsSelect(false);
        } else {
            getMainViewModel().setPsdVentilationSeatSetTipsSelect(false);
        }
    }

    @Override // com.geely.hvac.activity.BaseAutoHideDialog, android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
