package com.geely.hvac.psd.component;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.geely.hvac.R;
import com.geely.hvac.psd.activity.GlySettingsSeatSecondDisplayActivity;
import com.geely.hvac.utils.LogUtil;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.List;

/* loaded from: classes.dex */
public class SeatSecondTabAdapter extends RecyclerView.Adapter<SeatSecondTabAdapter.SeatSecondTabViewHolder> {

    private Context mContext;
    private List<SeatTabEntity> mList;
    private SharedPreferences mPreferences;
    private int mSelectedIndex;

    public SeatSecondTabAdapter(Context context, List<SeatTabEntity> list, SharedPreferences preferences) {
        this.mContext = context;
        this.mList = list;
        this.mPreferences = preferences;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public SeatSecondTabViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new SeatSecondTabViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.listitem_seat_second_screen_functions, (ViewGroup) null));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(SeatSecondTabViewHolder seatSecondTabViewHolder, final int i) {
        seatSecondTabViewHolder.ivIcon.setImageResource(this.mList.get(i).getTabResource());
        seatSecondTabViewHolder.tvFunctionName.setText(this.mList.get(i).getTabName());
        if (this.mSelectedIndex == i) {
            seatSecondTabViewHolder.itemView.setBackgroundResource(R.drawable.shape_seat_second_display_function_tab_bg_selected);
            seatSecondTabViewHolder.ivIcon.setImageTintList(ColorStateList.valueOf(this.mContext.getColor(R.color.seat_second_display_text_selected)));
            seatSecondTabViewHolder.tvFunctionName.setTextColor(ColorStateList.valueOf(this.mContext.getColor(R.color.seat_second_display_text_selected)));
        } else {
            seatSecondTabViewHolder.itemView.setBackground(null);
            seatSecondTabViewHolder.ivIcon.setImageTintList(ColorStateList.valueOf(this.mContext.getColor(R.color.seat_second_display_text_unselected)));
            seatSecondTabViewHolder.tvFunctionName.setTextColor(ColorStateList.valueOf(this.mContext.getColor(R.color.seat_second_display_text_unselected)));
        }
        seatSecondTabViewHolder.itemView.setOnClickListener(view -> lambda$onBindViewHolder$0$SeatSecondTabAdapter(i, view));
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$SeatSecondTabAdapter(int i, View view) {
        this.mSelectedIndex = i;
        SharedPreferences.Editor editorEdit = this.mPreferences.edit();
        editorEdit.putInt("selectedIndex", this.mSelectedIndex);
        editorEdit.commit();
        LogUtil.d("SeatSecondTabAdapter", "item onclick i :" + i);
        Context context = this.mContext;
        if (context instanceof GlySettingsSeatSecondDisplayActivity) {
            ((GlySettingsSeatSecondDisplayActivity) context).switchFunction(i);
        }
        notifyDataSetChanged();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mList.size();
    }

    public static class SeatSecondTabViewHolder extends RecyclerView.ViewHolder {
        ImageView ivIcon;
        HmiTextView tvFunctionName;

        public SeatSecondTabViewHolder(View itemView) {
            super(itemView);
            this.ivIcon = (ImageView) itemView.findViewById(R.id.iv_icon);
            this.tvFunctionName = (HmiTextView) itemView.findViewById(R.id.tv_function_list);
        }
    }

    public void setSelectedIndex(int selectedIndex) {
        this.mSelectedIndex = selectedIndex;
    }
}
