package com.geely.hvac.dialog;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.geely.hvac.activity.BaseAutoHideDialog;
import com.geely.hvac.databinding.LayoutSeatSetTipsBinding;

/* loaded from: classes.dex */
public class SeatSetTipsDialog extends BaseAutoHideDialog {
    public SeatSetTipsDialog(Context context) {
        super(context);
    }

    @Override // com.geely.hvac.dialog.BaseDialog
    protected View getView() {
        LayoutSeatSetTipsBinding layoutSeatSetTipsBindingInflate = LayoutSeatSetTipsBinding.inflate(getLayoutInflater());
        layoutSeatSetTipsBindingInflate.setModel(getMainViewModel());
        return layoutSeatSetTipsBindingInflate.getRoot();
    }

    @Override // com.geely.hvac.activity.BaseAutoHideDialog, com.geely.hvac.dialog.BaseDialog, android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }

    @Override // com.geely.hvac.activity.BaseAutoHideDialog, android.app.Dialog
    public void show() {
        super.show();
        getMainViewModel().setSeatSetTipsSelect(true);
    }

    @Override // com.geely.hvac.activity.BaseAutoHideDialog, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        getMainViewModel().setSeatSetTipsSelect(false);
    }

    @Override // com.geely.hvac.activity.BaseAutoHideDialog, android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }
}
