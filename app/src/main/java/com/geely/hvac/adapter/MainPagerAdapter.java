package com.geely.hvac.adapter;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;

/* loaded from: classes.dex */
public class MainPagerAdapter extends RecyclerView.Adapter<MainPagerViewHolder> {
    private final Context mContext;
    private final AppMainViewModel mMainViewModel;
    private final String TAG = getClass().getSimpleName();
    private int mItemSize = 3;

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int position) {
        return position;
    }

    public MainPagerAdapter(Context context, AppMainViewModel viewModel) {
        this.mMainViewModel = viewModel;
        this.mContext = context;
    }

    public void setItemSize(int size) {
        if (this.mItemSize == size) {
            return;
        }
        this.mItemSize = size;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public MainPagerViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        LogUtil.d(this.TAG, "onCreateViewHolder, viewType:" + viewType);
        if (viewType == 0) {
            return AirConditionViewHolder.newInstance(this.mContext, parent, this.mMainViewModel);
        }
        if (viewType == 1) {
            return SeatViewHolder.newInstance(this.mContext, parent, this.mMainViewModel);
        }
        if (viewType != 2) {
            return null;
        }
        return FragranceViewHolder.newInstance(this.mContext, parent, this.mMainViewModel);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(MainPagerViewHolder holder, int position) {
        LogUtil.d(this.TAG, "onBindViewHolder, holder:" + holder + ",position:" + position);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mItemSize;
    }
}
