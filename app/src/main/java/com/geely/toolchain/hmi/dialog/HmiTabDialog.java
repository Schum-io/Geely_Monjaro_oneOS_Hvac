package com.geely.toolchain.hmi.dialog;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.geely.toolchain.hmi.BuildConfig;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.dialog.HmiTabAdapter;
import com.geely.toolchain.hmi.util.UiUtil;
import com.geely.toolchain.hmi.view.HmiImageView;
import com.geely.toolchain.hmi.view.HmiTextView;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class HmiTabDialog extends BaseDialog {
    private static final String TAG = "HmiTabDialog";
    private int indexTag;
    private HmiImageView mClose;
    private View mCustomView;
    private LinearLayout mCustomViewGroup;
    private int mHeight;
    private ConstraintLayout mRootView;
    private RecyclerView mTabRecyclerView;
    private HmiTextView mTitle;
    private String mTitleText;
    private int mWidth;
    private int maxSize;
    private SelectionListener selectionListener;
    private List<String> tabs;

    public interface SelectionListener {
        void selectTab(int position, LinearLayout mCustomViewGroup);
    }

    public HmiTabDialog(Context context) {
        super(context);
        this.mTitleText = "";
        this.maxSize = 5;
        this.indexTag = -1;
        this.mWidth = 1456;
        this.mHeight = BuildConfig.srceenHeight;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog
    protected int setLayoutId() {
        return R.layout.hmi_tab_dialog;
    }

    @Override // com.geely.toolchain.hmi.dialog.BaseDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        if (window != null) {
            window.setLayout(this.mWidth, this.mHeight);
            initView(window);
        }
        initData();
    }

    public void hmiConfigChange(Context context) {
        Log.d(TAG, "uiMode ====" + context.getResources().getConfiguration().uiMode);
        Log.i(TAG, "hmiConfigChange: context = " + context);
        boolean hmiCurrentModelIsDark = UiUtil.getHmiCurrentModelIsDark(context);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (hmiCurrentModelIsDark) {
            attributes.dimAmount = 0.8f;
        } else {
            attributes.dimAmount = 0.4f;
        }
        window.setAttributes(attributes);
        this.mRootView.setBackground(ContextCompat.getDrawable(context, R.drawable.oneoshmi_dialog_bg));
        this.mTitle.setTextColor(context.getColor(R.color.oneoshmi_dialog_not_title_content_color));
        this.mClose.setImageResource(R.drawable.oneoshmi_close_pop_big);
        if (this.mTitleText.isEmpty()) {
            ((RecyclerView.Adapter) Objects.requireNonNull(this.mTabRecyclerView.getAdapter())).notifyDataSetChanged();
        }
    }

    private void initView(Window window) {
        this.mTabRecyclerView = (RecyclerView) window.findViewById(R.id.tabRecyclerView);
        this.mClose = (HmiImageView) window.findViewById(R.id.close);
        this.mCustomViewGroup = (LinearLayout) window.findViewById(R.id.customViewGroup);
        this.mTitle = (HmiTextView) window.findViewById(R.id.title);
        this.mRootView = (ConstraintLayout) window.findViewById(R.id.rootView);
        this.mClose.setOnClickListener(this::lambda$initView$0$HmiTabDialog);
    }

    public /* synthetic */ void lambda$initView$0$HmiTabDialog(View view) {
        dismiss();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    private void initData() {
        if (this.mTitleText.isEmpty()) {
            this.mTitle.setVisibility(8);
            this.mCustomViewGroup.setVisibility(0);
            HmiTabAdapter hmiTabAdapter = new HmiTabAdapter(getContext());
            hmiTabAdapter.setMaxSize(this.maxSize);
            hmiTabAdapter.setData(this.tabs);
            this.mTabRecyclerView.setAdapter(hmiTabAdapter);
            hmiTabAdapter.setSelectionListener(this::lambda$initData$1$HmiTabDialog);
        } else {
            this.mTitle.setVisibility(0);
            this.mTitle.setText(this.mTitleText);
        }
        LinearLayout linearLayout = this.mCustomViewGroup;
        if (linearLayout != null) {
            ViewGroup viewGroup = (ViewGroup) linearLayout.getParent();
            if (viewGroup != null) {
                viewGroup.removeView(this.mCustomView);
            }
            this.mCustomViewGroup.addView(this.mCustomView);
            return;
        }
        Log.e(TAG, "initData: hmiView  is null");
    }

    public /* synthetic */ void lambda$initData$1$HmiTabDialog(int i) {
        if (this.indexTag == i) {
            return;
        }
        SelectionListener selectionListener = this.selectionListener;
        if (selectionListener != null) {
            this.indexTag = i;
            selectionListener.selectTab(i, this.mCustomViewGroup);
        } else {
            Log.e(TAG, "selectionListener is null");
        }
    }

    public HmiTabDialog setHmiTabs(List<String> tabs) {
        this.tabs = tabs;
        return this;
    }

    public HmiTabDialog setTitle(String titleText) {
        this.mTitleText = titleText;
        return this;
    }

    public HmiTabDialog setSelectionListener(SelectionListener selectionListener) {
        this.selectionListener = selectionListener;
        return this;
    }

    public HmiTabDialog setHmiCustomView(View view) {
        this.mCustomView = view;
        return this;
    }

    public HmiTabDialog setDialogSize(int width, int height) {
        this.mWidth = width;
        this.mHeight = height;
        return this;
    }
}
