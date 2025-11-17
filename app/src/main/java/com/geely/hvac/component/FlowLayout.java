package com.geely.hvac.component;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.geely.hvac.utils.LogUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class FlowLayout extends RelativeLayout {
    private final String TAG;
    private ArrayList<List<View>> childList;
    private ArrayList<Integer> lineHeights;

    public FlowLayout(Context context) {
        super(context);
        this.TAG = getClass().getSimpleName();
        this.childList = new ArrayList<>();
        this.lineHeights = new ArrayList<>();
    }

    public FlowLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.TAG = getClass().getSimpleName();
        this.childList = new ArrayList<>();
        this.lineHeights = new ArrayList<>();
    }

    public FlowLayout(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.TAG = getClass().getSimpleName();
        this.childList = new ArrayList<>();
        this.lineHeights = new ArrayList<>();
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int size = MeasureSpec.getSize(widthMeasureSpec);
        int size2 = MeasureSpec.getSize(heightMeasureSpec);
        this.childList.clear();
        this.lineHeights.clear();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        ArrayList arrayList = new ArrayList();
        int iIntValue = 0;
        int i = 0;
        int measuredWidth = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            MarginLayoutParams marginLayoutParams = (MarginLayoutParams) childAt.getLayoutParams();
            childAt.measure(getChildMeasureSpec(widthMeasureSpec, getPaddingLeft() + getPaddingRight(), marginLayoutParams.width), getChildMeasureSpec(heightMeasureSpec, getPaddingTop() + getPaddingBottom(), marginLayoutParams.height));
            if ((measuredWidth != 0 || childAt.getMeasuredWidth() + marginLayoutParams.rightMargin + marginLayoutParams.leftMargin <= paddingLeft) && childAt.getMeasuredWidth() + measuredWidth + marginLayoutParams.rightMargin + marginLayoutParams.leftMargin > paddingLeft) {
                this.childList.add(arrayList);
                this.lineHeights.add(Integer.valueOf(i));
                arrayList = new ArrayList();
                i = 0;
                measuredWidth = 0;
            }
            int measuredHeight = childAt.getMeasuredHeight() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
            if (measuredHeight > i) {
                i = measuredHeight;
            }
            measuredWidth += childAt.getMeasuredWidth() + marginLayoutParams.rightMargin + marginLayoutParams.leftMargin;
            arrayList.add(childAt);
        }
        this.lineHeights.add(Integer.valueOf(i));
        this.childList.add(arrayList);
        if (getLayoutParams().height == -2) {
            Iterator<Integer> it = this.lineHeights.iterator();
            while (it.hasNext()) {
                iIntValue += it.next().intValue();
            }
            size2 = iIntValue + getPaddingTop() + getPaddingBottom();
        }
        setMeasuredDimension(size, size2);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean changed, int l, int t, int r, int b) {
        LogUtil.d(this.TAG, "");
        int paddingTop = getPaddingTop();
        for (int i = 0; i < this.childList.size(); i++) {
            paddingTop += this.lineHeights.get(i).intValue();
            List<View> list = this.childList.get(i);
            int paddingLeft = getPaddingLeft();
            int i2 = 0;
            while (i2 < list.size()) {
                View view = list.get(i2);
                MarginLayoutParams marginLayoutParams = (MarginLayoutParams) view.getLayoutParams();
                int i3 = paddingTop - marginLayoutParams.bottomMargin;
                int measuredHeight = i3 - view.getMeasuredHeight();
                int i4 = paddingLeft + marginLayoutParams.leftMargin;
                int measuredWidth = view.getMeasuredWidth() + i4;
                int i5 = marginLayoutParams.rightMargin + measuredWidth;
                view.layout(i4, measuredHeight, measuredWidth, i3);
                i2++;
                paddingLeft = i5;
            }
        }
    }
}
