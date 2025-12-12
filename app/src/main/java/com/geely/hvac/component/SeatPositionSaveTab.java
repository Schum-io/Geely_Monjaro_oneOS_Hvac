package com.geely.hvac.component;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import androidx.databinding.ObservableBoolean;
import androidx.databinding.ObservableField;
import androidx.databinding.ObservableInt;
import com.geely.hvac.R;
import com.geely.hvac.component.intf.SeatPositionSaveTabChangeListener;
import com.geely.hvac.databinding.LayoutSeatPositionSaveTabBinding;
import com.geely.hvac.utils.LogUtil;
import java.util.Arrays;

/* loaded from: classes.dex */
public class SeatPositionSaveTab extends LinearLayout {
    private static final String TAG = "SeatPositionSaveTab";
    private LayoutSeatPositionSaveTabBinding mBinding;
    private final ObservableBoolean mCustomTagEnable;
    private SeatPositionSaveTabChangeListener mOnTabChangeListener;
    private final ObservableInt mTabIndex;
    private final ObservableField<String> mTag1;
    private final ObservableField<String> mTag2;
    private final ObservableField<String> mTag3;

    public SeatPositionSaveTab(Context context) {
        super(context);
        this.mTabIndex = new ObservableInt(0);
        this.mCustomTagEnable = new ObservableBoolean(false);
        this.mTag1 = new ObservableField<>("");
        this.mTag2 = new ObservableField<>("");
        this.mTag3 = new ObservableField<>("");
        init(context, null);
    }

    public SeatPositionSaveTab(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mTabIndex = new ObservableInt(0);
        this.mCustomTagEnable = new ObservableBoolean(false);
        this.mTag1 = new ObservableField<>("");
        this.mTag2 = new ObservableField<>("");
        this.mTag3 = new ObservableField<>("");
        init(context, attrs);
    }

    public SeatPositionSaveTab(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mTabIndex = new ObservableInt(0);
        this.mCustomTagEnable = new ObservableBoolean(false);
        this.mTag1 = new ObservableField<>("");
        this.mTag2 = new ObservableField<>("");
        this.mTag3 = new ObservableField<>("");
        init(context, attrs);
    }

    public static void bind(SeatPositionSaveTab tab, int tabIndex) {
        if (tab.mTabIndex.get() == tabIndex) {
            return;
        }
        tab.mTabIndex.set(tabIndex);
    }

    public static void bindSeatSaveTabTags(SeatPositionSaveTab tab, String[] tags) {
        LogUtil.d(TAG, "bindSeatSaveTabTags, tags:" + Arrays.toString(tags));
        tab.setTags(tags);
    }

    public static void bind(SeatPositionSaveTab tab, SeatPositionSaveTabChangeListener listener) {
        tab.mOnTabChangeListener = listener;
    }

    public ObservableField<String> getTag1() {
        return this.mTag1;
    }

    public ObservableField<String> getTag2() {
        return this.mTag2;
    }

    public ObservableField<String> getTag3() {
        return this.mTag3;
    }

    public ObservableBoolean getCustomTagEnable() {
        return this.mCustomTagEnable;
    }

    public ObservableInt getTabIndex() {
        return this.mTabIndex;
    }

    private void init(Context context, AttributeSet attrs) {
        LayoutSeatPositionSaveTabBinding layoutSeatPositionSaveTabBindingInflate = LayoutSeatPositionSaveTabBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = layoutSeatPositionSaveTabBindingInflate;
        layoutSeatPositionSaveTabBindingInflate.setTab(this);
    }

    public void setTags(String[] tags) {
        if (tags.length >= 3 && !TextUtils.isEmpty(tags[2])) {
            this.mCustomTagEnable.set(true);
        } else {
            this.mCustomTagEnable.set(false);
        }
        if (tags.length >= 1) {
            this.mTag1.set(tags[0]);
        }
        if (tags.length >= 2) {
            this.mTag2.set(tags[1]);
        }
        if (tags.length >= 3) {
            this.mTag3.set(tags[2]);
        }
    }

    public void itemClick(View view) {
        int i = this.mTabIndex.get();
        switch (view.getId()) {
            case R.id.label1 /* 2131296635 */:
                i = 0;
                break;
            case R.id.label2 /* 2131296636 */:
                i = 1;
                break;
            case R.id.label3 /* 2131296637 */:
                i = 2;
                break;
        }
        this.mTabIndex.set(i);
        SeatPositionSaveTabChangeListener seatPositionSaveTabChangeListener = this.mOnTabChangeListener;
        if (seatPositionSaveTabChangeListener != null) {
            seatPositionSaveTabChangeListener.onChanged(i);
        }
    }
}
