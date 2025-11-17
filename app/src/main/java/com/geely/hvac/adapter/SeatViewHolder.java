package com.geely.hvac.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import com.geely.hvac.databinding.PagerItemSeatBinding;
import com.geely.hvac.viewmodel.AppMainViewModel;

/* loaded from: classes.dex */
public class SeatViewHolder extends MainPagerViewHolder<PagerItemSeatBinding> {
    public static SeatViewHolder newInstance(Context context, ViewGroup parent, AppMainViewModel viewModel) {
        PagerItemSeatBinding pagerItemSeatBindingInflate = PagerItemSeatBinding.inflate(LayoutInflater.from(context), parent, false);
        pagerItemSeatBindingInflate.setModel(viewModel);
        viewModel.setViewBinding(pagerItemSeatBindingInflate);
        return new SeatViewHolder(pagerItemSeatBindingInflate);
    }

    public SeatViewHolder(PagerItemSeatBinding binding) {
        super(binding);
    }
}
