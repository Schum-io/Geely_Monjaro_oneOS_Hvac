package com.geely.toolchain.hmi.view.selector.holder;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.geely.toolchain.hmi.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;

/* loaded from: classes.dex */
public class HmiViewHolder extends HmiDefaultHolder {
    private Context mContext;
    private RetryBtnListener mListener;

    public interface RetryBtnListener {
        void onListener();
    }

    public HmiViewHolder(Context context) {
        super(context);
        this.mContext = context;
    }

    @Override // com.geely.toolchain.hmi.view.selector.holder.HmiDefaultHolder
    public View setNetworkException(Context context) {
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.hmi_net_work_exception, (ViewGroup) null);
        if (viewInflate != null) {
            viewInflate.findViewById(R.id.btn_retry).setOnClickListener(new View.OnClickListener() {
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    HmiViewHolder.this.lambda$setNetworkException$0$HmiViewHolder(view);
                }
            });
        }
        return viewInflate;
    }

    public /* synthetic */ void lambda$setNetworkException$0$HmiViewHolder(View view) {
        RetryBtnListener retryBtnListener = this.mListener;
        if (retryBtnListener != null) {
            retryBtnListener.onListener();
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    @Override // com.geely.toolchain.hmi.view.selector.holder.HmiDefaultHolder
    public View setSearchWithout(Context context) {
        return LayoutInflater.from(context).inflate(R.layout.hmi_search_without, (ViewGroup) null);
    }

    @Override // com.geely.toolchain.hmi.view.selector.holder.HmiDefaultHolder
    public View setWithoutPhotoOrVideo(Context context) {
        return LayoutInflater.from(context).inflate(R.layout.hmi_without_photo_or_video, (ViewGroup) null);
    }

    @Override // com.geely.toolchain.hmi.view.selector.holder.HmiDefaultHolder
    public View setLoadingFail(Context context) {
        return LayoutInflater.from(context).inflate(R.layout.hmi_loading_fail, (ViewGroup) null);
    }

    public void setOnRetryClickListener(RetryBtnListener listener) {
        this.mListener = listener;
    }
}
