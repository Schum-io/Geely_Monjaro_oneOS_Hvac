package com.geely.hvac.dialog;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.geely.hvac.databinding.LayoutAcSetBinding;

/* loaded from: classes.dex */
public class AcSetDialog extends BaseDialog {
    private LayoutAcSetBinding mBinding;

    public AcSetDialog(Context context) {
        super(context);
        LayoutAcSetBinding layoutAcSetBindingInflate = LayoutAcSetBinding.inflate(LayoutInflater.from(context));
        this.mBinding = layoutAcSetBindingInflate;
        layoutAcSetBindingInflate.setModel(getMainViewModel());
    }

    @Override // com.geely.hvac.dialog.BaseDialog
    protected View getView() {
        return this.mBinding.getRoot();
    }
}
