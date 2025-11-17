package com.geely.hvac.adapter;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.geely.hvac.component.Temperature;
import com.geely.hvac.databinding.PagerItemAirconditionBinding;
import com.geely.hvac.utils.DayNightUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.TemperRGBUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;

/* loaded from: classes.dex */
public class AirConditionViewHolder extends MainPagerViewHolder<PagerItemAirconditionBinding> {
    private final String TAG;
    private final TemperRGBUtil temperRGBUtil;

    public static AirConditionViewHolder newInstance(Context context, ViewGroup parent, AppMainViewModel viewModel) {
        PagerItemAirconditionBinding pagerItemAirconditionBindingInflate = PagerItemAirconditionBinding.inflate(LayoutInflater.from(context), parent, false);
        pagerItemAirconditionBindingInflate.setModel(viewModel);
        return new AirConditionViewHolder(pagerItemAirconditionBindingInflate, context);
    }

    public AirConditionViewHolder(PagerItemAirconditionBinding binding, Context context) {
        super(binding);
        String simpleName = AirConditionViewHolder.class.getSimpleName();
        this.TAG = simpleName;
        if (DayNightUtil.isLight()) {
            this.temperRGBUtil = new TemperRGBUtil(16749824, 445567231, 31487);
        } else {
            this.temperRGBUtil = new TemperRGBUtil(16752394, 452984831, 689407);
        }
        new DisplayMetrics();
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        LogUtil.d(simpleName, "density: " + displayMetrics.density + ", densityDPI: " + displayMetrics.densityDpi + ", screenWidth: " + displayMetrics.widthPixels + ", screenHeight: " + displayMetrics.heightPixels);
        binding.behindWindBlowFace.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        LogUtil.d(simpleName, "width: " + binding.behindWindBlowFace.getMeasuredWidth() + ", height: " + binding.behindWindBlowFace.getMeasuredHeight());
        addTemperatureChangeListener(binding);
    }

    private void addTemperatureChangeListener(final PagerItemAirconditionBinding binding) {
        final GradientDrawable gradientDrawable = new GradientDrawable();
        final GradientDrawable gradientDrawable2 = new GradientDrawable();
        binding.frontLeftTemp.setOnScrollTemperatureChangeListener((f, z) -> onLeftTempChange(binding, gradientDrawable, f, z));
        binding.frontRightTemp.setOnScrollTemperatureChangeListener((f, z) -> onRightTempChange(binding, gradientDrawable2, f, z));
    }

    public void onLeftTempChange(PagerItemAirconditionBinding pagerItemAirconditionBinding, GradientDrawable gradientDrawable, float f, boolean z) {
        if (z) {
            pagerItemAirconditionBinding.leftTempGradient.setVisibility(0);
            setBackground(gradientDrawable, pagerItemAirconditionBinding.leftTempGradient, this.temperRGBUtil.getRGB(f));
        } else {
            pagerItemAirconditionBinding.leftTempGradient.setVisibility(4);
        }
        LogUtil.d(this.TAG, "left = " + f);
    }

    public void onRightTempChange(PagerItemAirconditionBinding pagerItemAirconditionBinding, GradientDrawable gradientDrawable, float f, boolean z) {
        if (z) {
            pagerItemAirconditionBinding.rightTempGradient.setVisibility(0);
            setBackground(gradientDrawable, pagerItemAirconditionBinding.rightTempGradient, this.temperRGBUtil.getRGB(f));
        } else {
            pagerItemAirconditionBinding.rightTempGradient.setVisibility(4);
        }
        LogUtil.d(this.TAG, "right = " + f);
    }

    private void setBackground(GradientDrawable gradientDrawable, View view, int color) {
        gradientDrawable.setShape(1);
        gradientDrawable.setGradientType(1);
        gradientDrawable.setGradientRadius(400.0f);
        gradientDrawable.setUseLevel(false);
        gradientDrawable.setColors(new int[]{color, 0});
        view.setBackground(gradientDrawable);
    }
}
