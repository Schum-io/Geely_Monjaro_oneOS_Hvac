package com.geely.hvac.adapter;

import androidx.databinding.ViewDataBinding;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class MainPagerViewHolder<DB extends ViewDataBinding> extends RecyclerView.ViewHolder {
    private final DB mBinding;

    public DB getBinding() {
        return this.mBinding;
    }

    public MainPagerViewHolder(DB binding) {
        super(binding.getRoot());
        this.mBinding = binding;
    }
}
