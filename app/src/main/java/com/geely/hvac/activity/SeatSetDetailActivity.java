package com.geely.hvac.activity;

import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.BuildConfig;
import com.geely.hvac.R;
import com.geely.hvac.classify.classifyreturn.LottieAnimationSetUtils;
import com.geely.hvac.component.ImageViewWithUpDown;
import com.geely.hvac.databinding.LayoutSeatSetDetailBinding;
import com.geely.hvac.util.AnimationUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.SeatSetDetailViewModel;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.lang.ref.WeakReference;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class SeatSetDetailActivity extends DialogActivity {
    private static WeakReference<SeatSetDetailActivity> mRef;
    private Animation mCushionDownAnim;
    private Animation mCushionUpAnim;

    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.BaseDialogActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        if (TextUtils.equals(BuildConfig.FLAVOR, BuildConfig.FLAVOR)) {
            getWindow().getDecorView().setSystemUiVisibility(4);
            mRef = new WeakReference<>(this);
        }
        getLifecycle().addObserver(getMainViewModel().getSeatSetActivityLifecycleObserver());
    }

    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        SeatSetDetailViewModel seatSetDetailViewModel = (SeatSetDetailViewModel) new ViewModelProvider(this, new ViewModelProvider.NewInstanceFactory()).get(SeatSetDetailViewModel.class);
        LayoutSeatSetDetailBinding layoutSeatSetDetailBindingInflate = LayoutSeatSetDetailBinding.inflate(getLayoutInflater());
        layoutSeatSetDetailBindingInflate.setMainModel(getMainViewModel());
        layoutSeatSetDetailBindingInflate.close.setOnClickListener(this::onCloseClicked);
        layoutSeatSetDetailBindingInflate.setModel(seatSetDetailViewModel);
        startCushionAnim(layoutSeatSetDetailBindingInflate);
        getKey(layoutSeatSetDetailBindingInflate);
        getCancel(layoutSeatSetDetailBindingInflate);
        return layoutSeatSetDetailBindingInflate.getRoot();
    }

    private void onCloseClicked(View view) {
        finish();
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }

    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.AutoHideActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        getMainViewModel().right1click = true;
        getMainViewModel().left1click = true;
    }

    public void getKey(final LayoutSeatSetDetailBinding binding) {
        getMainViewModel().liveData.observe(this, (Observer<Map>) map -> onSeatKeyChanged(binding, map));
    }

    private void onSeatKeyChanged(LayoutSeatSetDetailBinding layoutSeatSetDetailBinding, Map map) throws NumberFormatException {
        layoutSeatSetDetailBinding.lottieImgView.setVisibility(8);
        layoutSeatSetDetailBinding.lottieImgViewAssistant.setVisibility(8);
        layoutSeatSetDetailBinding.hmiImagesView.setVisibility(8);
        layoutSeatSetDetailBinding.hmiImagesViewAssistant.setVisibility(8);
        layoutSeatSetDetailBinding.hmiImagesLumbarSupport.setVisibility(8);
        layoutSeatSetDetailBinding.hmiImagesLegSupport.setVisibility(8);
        AnimationUtil.cleanTranslateAnimation();
        if (map == null) {
            LogUtil.e(this.TAG, "getKey() is null");
            return;
        }
        if (map.isEmpty()) {
            LogUtil.e(this.TAG, "getKey() map is null");
            return;
        }
        int i = Integer.parseInt(map.get("type").toString());
        String string = map.get("lottie").toString();
        LogUtil.i(this.TAG, "seatsetDetail lottie  = " + string);
        if (i == 1) {
            if (string.equals("lottie")) {
                LottieAnimationSetUtils.startLottieAnimationSet(layoutSeatSetDetailBinding.lottieImgView, map);
                return;
            } else if (string.equals("oneLottie")) {
                LogUtil.i(this.TAG, "binding.lottieImgView  oneLottie  = " + layoutSeatSetDetailBinding.lottieImgView.getId());
                LottieAnimationSetUtils.oneLottieAnimationSet(layoutSeatSetDetailBinding.lottieImgView, layoutSeatSetDetailBinding.leftSeatBg, map);
                return;
            } else {
                AnimationUtil.translationImages(layoutSeatSetDetailBinding.hmiImagesView, map, false);
                return;
            }
        }
        if (i != 4) {
            if (i == 30) {
                AnimationUtil.translationImages(layoutSeatSetDetailBinding.hmiImagesLegSupport, map, false);
                return;
            } else {
                if (i != 40) {
                    return;
                }
                AnimationUtil.translationImages(layoutSeatSetDetailBinding.hmiImagesLumbarSupport, map, false);
                return;
            }
        }
        if (string.equals("lottie")) {
            LottieAnimationSetUtils.startLottieAnimationSet(layoutSeatSetDetailBinding.lottieImgViewAssistant, map);
        } else if (string.equals("oneLottie")) {
            LogUtil.i(this.TAG, "binding.lottieImgViewAssistant  oneLottie  = " + layoutSeatSetDetailBinding.lottieImgViewAssistant.getId());
            LottieAnimationSetUtils.oneLottieAnimationSet(layoutSeatSetDetailBinding.lottieImgViewAssistant, layoutSeatSetDetailBinding.rightSeatBg, map);
        } else {
            AnimationUtil.translationImages(layoutSeatSetDetailBinding.hmiImagesViewAssistant, map, false);
        }
    }

    private void startCushionAnim(final LayoutSeatSetDetailBinding binding) {
        binding.cushionUp.setUpDownAnimListener(() -> onCushionUp(binding));
        binding.cushionDown.setUpDownAnimListener(() -> onCushionDown(binding));
    }

    private void onCushionUp(LayoutSeatSetDetailBinding layoutSeatSetDetailBinding) {
        Animation animation = this.mCushionUpAnim;
        if (animation != null) {
            animation.cancel();
        } else {
            this.mCushionUpAnim = AnimationUtils.loadAnimation(this, R.anim.cushion_up_anim);
            layoutSeatSetDetailBinding.seatCushionIndicator.setAnimation(this.mCushionUpAnim);
        }
        layoutSeatSetDetailBinding.seatCushionIndicator.startAnimation(this.mCushionUpAnim);
    }

    private void onCushionDown(LayoutSeatSetDetailBinding layoutSeatSetDetailBinding) {
        Animation animation = this.mCushionDownAnim;
        if (animation != null) {
            animation.cancel();
        } else {
            this.mCushionDownAnim = AnimationUtils.loadAnimation(this, R.anim.cushion_down_anim);
            layoutSeatSetDetailBinding.seatCushionIndicator.setAnimation(this.mCushionDownAnim);
        }
        layoutSeatSetDetailBinding.seatCushionIndicator.startAnimation(this.mCushionDownAnim);
    }

    @Override // com.geely.hvac.activity.AutoHideActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        LogUtil.d(this.TAG, "onPause");
        finish();
    }

    public void getCancel(final LayoutSeatSetDetailBinding binding) {
        getMainViewModel().liveDataCancel.observe(this, (Observer<List>) list -> onCancelChanged(binding, list));
    }

    static void onCancelChanged(LayoutSeatSetDetailBinding layoutSeatSetDetailBinding, List list) {
        LottieAnimationSetUtils.stopLottieAnimationSet(layoutSeatSetDetailBinding.lottieImgView, true);
        LottieAnimationSetUtils.stopLottieAnimationSet(layoutSeatSetDetailBinding.lottieImgViewAssistant, true);
        AnimationUtil.cancelTranslateAnimation(true);
    }

    public static void finishActivity() {
        WeakReference<SeatSetDetailActivity> weakReference;
        if (!TextUtils.equals(BuildConfig.FLAVOR, BuildConfig.FLAVOR) || (weakReference = mRef) == null || weakReference.get() == null) {
            return;
        }
        mRef.get().finish();
    }
}
