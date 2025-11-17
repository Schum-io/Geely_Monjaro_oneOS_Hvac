package com.geely.toolchain.hmi.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.geely.toolchain.hmi.R;
import com.geely.toolchain.hmi.util.UiUtil;

/* loaded from: classes.dex */
public class HmiTabItem extends ConstraintLayout {
    public static final String TAG = "HmiTabItem";
    private static final int defaultImageHeight = 48;
    private static final int defaultImageWidth = 48;
    private static final int defaultTextSize = 36;
    private ImageView ivIcon;
    private TextView tvContent;

    public HmiTabItem(Context context) {
        this(context, null);
    }

    public HmiTabItem(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public HmiTabItem(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        initView(context, attrs);
    }

    private void initView(Context context, AttributeSet attrs) {
        if (attrs == null) {
            Log.e(TAG, "initView attrs == null");
            return;
        }
        LayoutInflater.from(context).inflate(R.layout.hmi_layout_tab_item, (ViewGroup) this, true);
        this.tvContent = (TextView) findViewById(R.id.tv_content);
        this.ivIcon = (ImageView) findViewById(R.id.iv_icon);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.HmiTabItem);
        String string = typedArrayObtainStyledAttributes.getString(R.styleable.HmiTabItem_itemText);
        Log.i(TAG, "initView: HmiTabItem_itemText = " + string);
        int color = typedArrayObtainStyledAttributes.getColor(R.styleable.HmiTabItem_itemTextColor, android.R.color.black);
        Log.i(TAG, "initView: HmiTabItem_tabTextColor = " + color);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.HmiTabItem_itemTextSize, UiUtil.dp2px(getContext(), 36.0f));
        Log.i(TAG, "initView: HmiTabItem_itemTextSize = " + dimensionPixelSize);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.HmiTabItem_itemIconSrc, 0);
        Log.i(TAG, "initView: HmiTabItem_itemIconSrc = " + resourceId);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.HmiTabItem_itemIconWidth, 48);
        Log.i(TAG, "initView: HmiTabItem_itemIconWidth = " + dimensionPixelSize2);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.HmiTabItem_itemIconHeight, 48);
        Log.i(TAG, "initView: HmiTabItem_itemIconHeight = " + dimensionPixelSize3);
        typedArrayObtainStyledAttributes.recycle();
        this.tvContent.setTextColor(color);
        this.tvContent.setTextSize(dimensionPixelSize);
        if (!TextUtils.isEmpty(string)) {
            this.tvContent.setText(string);
        }
        this.ivIcon.setImageResource(resourceId);
        LayoutParams layoutParams = (LayoutParams) this.ivIcon.getLayoutParams();
        layoutParams.width = dimensionPixelSize2;
        layoutParams.height = dimensionPixelSize3;
        this.ivIcon.setLayoutParams(layoutParams);
    }

    public TextView getTvContent() {
        return this.tvContent;
    }

    public ImageView getIvIcon() {
        return this.ivIcon;
    }

    public void setGray(boolean isGray) {
        setAlpha(isGray ? 0.3f : 1.0f);
    }
}
