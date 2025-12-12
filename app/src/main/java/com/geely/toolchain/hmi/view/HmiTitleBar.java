package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.geely.toolchain.hmi.R;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.List;

/* loaded from: classes.dex */
public class HmiTitleBar extends ConstraintLayout {
    private ImageView mIvBack;
    private RecyclerView mRvSub;
    private SubTitleAdapter mSubTitleAdapter;
    private String mTitleText;
    private TextView mTvTitle;
    private OnTitleBarBackListener onTitleBarBackListener;

    public interface OnTitleBarBackListener {
        void onTitleBarBack(View view);
    }

    public interface OnTitleBarSubItemClickListener {
        void onItemClick(View itemView, int position, SubItem subItem);
    }

    public HmiTitleBar(Context context) {
        this(context, null);
    }

    public HmiTitleBar(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiTitleBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs);
    }

    private void init(Context context, AttributeSet attrs) {
        LayoutInflater.from(context).inflate(R.layout.hmi_layout_title_bar, (ViewGroup) this, true);
        this.mIvBack = (ImageView) findViewById(R.id.iv_back);
        this.mTvTitle = (TextView) findViewById(R.id.tv_title);
        this.mRvSub = (RecyclerView) findViewById(R.id.rv_main);
        if (attrs == null) {
            return;
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiTitleBar);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.HmiTitleBar_hmiTitle);
        typedArrayObtainStyledAttributes.recycle();
        setTitleText(string);
        this.mIvBack.setOnClickListener(new OnClickListener() {
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                HmiTitleBar.this.lambda$init$0$HmiTitleBar(view);
            }
        });
        SubTitleAdapter subTitleAdapter = new SubTitleAdapter();
        this.mSubTitleAdapter = subTitleAdapter;
        this.mRvSub.setAdapter(subTitleAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(0);
        this.mRvSub.setLayoutManager(linearLayoutManager);
    }

    public /* synthetic */ void lambda$init$0$HmiTitleBar(View view) {
        OnTitleBarBackListener onTitleBarBackListener = this.onTitleBarBackListener;
        if (onTitleBarBackListener != null) {
            onTitleBarBackListener.onTitleBarBack(view);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    public void setTitleText(String titleText) {
        this.mTitleText = titleText;
        if (TextUtils.isEmpty(titleText)) {
            return;
        }
        this.mTvTitle.setText(this.mTitleText);
    }

    public void setOnTitleBarBackListener(OnTitleBarBackListener onTitleBarBackListener) {
        this.onTitleBarBackListener = onTitleBarBackListener;
    }

    public void setOnTitleBarSubItemClickListener(OnTitleBarSubItemClickListener onTitleBarSubItemClickListener) {
        this.mSubTitleAdapter.setOnTitleBarSubItemClickListener(onTitleBarSubItemClickListener);
    }

    public void setSubData(List<SubItem> subItems) {
        this.mSubTitleAdapter.setData(subItems);
    }

    public static class SubItem {
        private int resId;
        private String text;

        public SubItem() {
            this.text = "";
        }

        public SubItem(int resId, String text) {
            this.text = "";
            this.resId = resId;
            this.text = text;
        }

        public int getResId() {
            return this.resId;
        }

        public void setResId(int resId) {
            this.resId = resId;
        }

        public String getText() {
            return this.text;
        }

        public void setText(String text) {
            this.text = text;
        }
    }

    public static class SubTitleAdapter extends RecyclerView.Adapter<ViewHolder> {
        private List<SubItem> mSubItemList;
        private OnTitleBarSubItemClickListener onTitleBarSubItemClickListener;

        public void setData(List<SubItem> subItems) {
            this.mSubItemList = subItems;
            notifyDataSetChanged();
        }

        public void setOnTitleBarSubItemClickListener(OnTitleBarSubItemClickListener onTitleBarSubItemClickListener) {
            this.onTitleBarSubItemClickListener = onTitleBarSubItemClickListener;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            return new ViewHolder(LayoutInflater.from(parent.getContext()).inflate(R.layout.hmi_layout_title_bar_item, parent, false));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(ViewHolder holder, final int position) {
            final SubItem subItem;
            List<SubItem> list = this.mSubItemList;
            if (list == null || (subItem = list.get(position)) == null) {
                return;
            }
            holder.ivIcon.setImageResource(subItem.getResId());
            holder.tvContent.setText(subItem.getText());
            holder.itemView.setOnClickListener(new OnClickListener() {
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SubTitleAdapter.this.lambda$onBindViewHolder$0$HmiTitleBar$SubTitleAdapter(position, subItem, view);
                }
            });
        }

        public /* synthetic */ void lambda$onBindViewHolder$0$HmiTitleBar$SubTitleAdapter(int i, SubItem subItem, View view) {
            OnTitleBarSubItemClickListener onTitleBarSubItemClickListener = this.onTitleBarSubItemClickListener;
            if (onTitleBarSubItemClickListener != null) {
                onTitleBarSubItemClickListener.onItemClick(view, i, subItem);
            }
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.mSubItemList.size();
        }
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {
        private final ImageView ivIcon;
        private final TextView tvContent;

        public ViewHolder(View itemView) {
            super(itemView);
            this.ivIcon = (ImageView) itemView.findViewById(R.id.iv_icon);
            this.tvContent = (TextView) itemView.findViewById(R.id.tv_subTitle);
        }
    }
}
