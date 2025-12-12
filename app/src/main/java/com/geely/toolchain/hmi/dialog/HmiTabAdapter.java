package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.List;

/* loaded from: classes.dex */
public class HmiTabAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final String TAG = "HmiTabAdapter";
    private final Context context;
    private List<String> lists;
    private SelectionListener selectionListener;
    private int maxSize = 5;
    private int index = 0;

    public interface SelectionListener {
        void selectTab(int position);
    }

    public HmiTabAdapter(Context context) {
        this.context = context;
    }

    public void setData(List<String> list) {
        this.lists = list;
    }

    public void setMaxSize(int maxSize) {
        this.maxSize = maxSize;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        return new HmiViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.hmi_tab_item, parent, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder holder, final int position) {
        HmiViewHolder hmiViewHolder = (HmiViewHolder) holder;
        hmiViewHolder.textView.setText(this.lists.get(position));
        hmiViewHolder.textView.setTextColor(this.context.getColor(R.color.oneoshmi_dialog_content_color));
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiTabAdapter.this.lambda$onBindViewHolder$0$HmiTabAdapter(position, view);
            }
        });
        if (this.index == position) {
            hmiViewHolder.view.setVisibility(0);
            hmiViewHolder.view.setBackground(ContextCompat.getDrawable(this.context, R.drawable.oneoshmi_tab_item_indicator_shape));
            hmiViewHolder.textView.setTextColor(this.context.getColor(R.color.oneoshmi_main_theme_color));
            hmiViewHolder.textView.setTextSize(2, 36.0f);
            SelectionListener selectionListener = this.selectionListener;
            if (selectionListener != null) {
                selectionListener.selectTab(position);
                return;
            } else {
                Log.e(TAG, "selectionListener is null");
                return;
            }
        }
        hmiViewHolder.view.setVisibility(8);
        hmiViewHolder.view.setBackground(ContextCompat.getDrawable(this.context, R.drawable.oneoshmi_tab_item_indicator_shape));
        hmiViewHolder.textView.setTextColor(this.context.getColor(R.color.oneoshmi_dialog_content_color));
        hmiViewHolder.textView.setTextSize(2, 32.0f);
    }

    public /* synthetic */ void lambda$onBindViewHolder$0$HmiTabAdapter(int i, View view) {
        this.index = i;
        notifyDataSetChanged();
        SelectionListener selectionListener = this.selectionListener;
        if (selectionListener != null) {
            selectionListener.selectTab(i);
        } else {
            Log.e(TAG, "selectionListener is null");
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return Math.min(this.lists.size(), this.maxSize);
    }

    public void setSelectionListener(SelectionListener selectionListener) {
        this.selectionListener = selectionListener;
    }

    private static class HmiViewHolder extends RecyclerView.ViewHolder {
        public HmiTextView textView;
        public View view;

        public HmiViewHolder(View itemView) {
            super(itemView);
            this.textView = (HmiTextView) itemView.findViewById(R.id.tabItemText);
            this.view = itemView.findViewById(R.id.tabItemIndicator);
        }
    }
}
