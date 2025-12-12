package com.geely.hvac.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.geely.hvac.databinding.PagerItemFragranceBinding;
import com.geely.hvac.viewmodel.AppMainViewModel;

/* loaded from: classes.dex */
public class FragranceViewHolder extends MainPagerViewHolder<PagerItemFragranceBinding> {
    public static FragranceViewHolder newInstance(Context context, ViewGroup parent, AppMainViewModel viewModel) {
        PagerItemFragranceBinding pagerItemFragranceBindingInflate = PagerItemFragranceBinding.inflate(LayoutInflater.from(context), parent, false);
        pagerItemFragranceBindingInflate.setModel(viewModel);
        return new FragranceViewHolder(pagerItemFragranceBindingInflate);
    }

    public FragranceViewHolder(PagerItemFragranceBinding binding) {
        super(binding);
    }
}
