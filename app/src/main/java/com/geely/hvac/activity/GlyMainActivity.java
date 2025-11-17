package com.geely.hvac.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.OvershootInterpolator;
import androidx.core.app.ActivityCompat;
import androidx.databinding.Observable;
import androidx.databinding.ObservableInt;
import androidx.lifecycle.ViewModelProvider;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.geely.hvac.GlyAcApp;
import com.geely.hvac.GlyAcManager;
import com.geely.hvac.R;
import com.geely.hvac.adapter.MainPagerAdapter;
import com.geely.hvac.data.ConstantData;
import com.geely.hvac.data.GlySensorsData;
import com.geely.hvac.databinding.LayoutMainBinding;
import com.geely.hvac.provider.AcVisibilityListener;
import com.geely.hvac.utils.CommonUtil;
import com.geely.hvac.utils.CommonUtils;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;

/* loaded from: classes.dex */
public class GlyMainActivity extends AutoHideActivity {
    private MainPagerAdapter mAdapter;
    private LayoutMainBinding mBinding;
    private int mContentStartTopMargin;
    private AppMainViewModel mMainViewModel;
    private final long mTotalAnimateTime = 350;
    private final int mHotZoneHeight = 51;
    private String mLifeEvent = "";
    private final long mBgAlphaTime = 155;
    private final long mContentAlphaTime = 155;
    private final long mContentAlphaDelayTime = 87;
    private final long mContentTranslateTime = 221;
    private final long mContentTranslateDelayTime = 175;
    private int mContentEndTopMargin = 100;
    private ValueAnimator mOpenBgAlphaAnimation = null;
    private ValueAnimator mOpenContentAlphaAnimation = null;
    private ValueAnimator mOpenTranslateAnimation = null;
    private ValueAnimator mCloseBgAlphaAnimation = null;
    private ValueAnimator mCloseContentAlphaAnimation = null;
    private ValueAnimator mCloseTranslateAnimation = null;
    private boolean mIsHide = true;
    private final AcVisibilityListener mAcVisibilityListener = new AcVisibilityListener() { // from class: com.geely.hvac.activity.GlyMainActivity.1
        @Override // com.geely.hvac.provider.AcVisibilityListener
        public void onVisible(String extra) {
            GlyMainActivity.this.resetHideRunnable();
        }

        @Override // com.geely.hvac.provider.AcVisibilityListener
        public void onInVisible(String extra) {
            GlyMainActivity.this.moveToBack();
        }
    };
    private Observable.OnPropertyChangedCallback mFragranceSupportListener = new Observable.OnPropertyChangedCallback() { // from class: com.geely.hvac.activity.GlyMainActivity.3
        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable sender, int propertyId) {
            GlyMainActivity.this.mAdapter.setItemSize(GlyMainActivity.this.mMainViewModel.isFunctionAvailable(((ObservableInt) sender).get()) ? 3 : 2);
        }
    };
    private Observable.OnPropertyChangedCallback mMainTabIndexChangeListener = new Observable.OnPropertyChangedCallback() { // from class: com.geely.hvac.activity.GlyMainActivity.4
        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void onPropertyChanged(Observable sender, int propertyId) {
            int i = ((ObservableInt) sender).get();
            if (GlyMainActivity.this.mBinding.pager.getCurrentItem() != i) {
                GlyMainActivity.this.mBinding.pager.setCurrentItem(i, true);
            }
        }
    };
    private int downY = 0;
    private int upY = 0;

    /* JADX INFO: Access modifiers changed from: private */
    public void moveToBack() {
        if (CommonUtil.isMainThread()) {
            startCloseAnimation();
        } else {
            runOnUiThread(this::startCloseAnimation);
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        LogUtil.d(this.TAG, "onNewIntent");
        setPageTab(intent, true);
        this.mLifeEvent = "onNewIntent";
        startOpenAnimate();
    }

    private void setPageTab(Intent intent, boolean isSwitchTab) {
        int intExtra = intent.getIntExtra(ConstantData.ENTER_HVAC_KEY, -1);
        LogUtil.d(this.TAG, "onNewIntent hvacPage = " + intExtra);
        if (intExtra < 0 || intExtra > 2) {
            return;
        }
        if (intExtra == 2) {
            AppMainViewModel appMainViewModel = this.mMainViewModel;
            if (!appMainViewModel.isFunctionAvailable(appMainViewModel.getFragranceSupported().get())) {
                LogUtil.d(this.TAG, "onNewIntent fragranceSupported false");
                return;
            }
        }
        if (intExtra == 1) {
            int intExtra2 = intent.getIntExtra(ConstantData.ENTER_SEAT_KEY, -1);
            if (4 == intExtra2) {
                int seatLocationTabIndex = this.mMainViewModel.getSeatLocationTabIndex();
                if (seatLocationTabIndex != -1) {
                    this.mMainViewModel.getSeatTabIndex().set(seatLocationTabIndex);
                } else {
                    LogUtil.i(this.TAG, "start from vr ,bug no seat tab showing" + intExtra + "," + intExtra2);
                }
            } else if (intExtra2 == 0) {
                int seatLocationTabIndex2 = this.mMainViewModel.getSeatLocationTabIndex();
                LogUtil.d(this.TAG, "getSeatLocationTabIndex = " + seatLocationTabIndex2);
                if (seatLocationTabIndex2 != -1) {
                    this.mMainViewModel.getSeatTabIndex().set(0);
                } else {
                    LogUtil.i(this.TAG, "start from vr ,bug no seat tab showing" + intExtra + "," + intExtra2);
                }
            }
        }
        this.mMainViewModel.getMainTabIndex().set(intExtra);
        if (isSwitchTab) {
            this.mBinding.tab.setTabIndex(intExtra);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        LogUtil.d(this.TAG, "onStart");
    }

    private void checkStoragePermission() {
        if (ActivityCompat.checkSelfPermission(this, "android.permission.WRITE_EXTERNAL_STORAGE") != 0) {
            if (ActivityCompat.shouldShowRequestPermissionRationale(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
                LogUtil.d(this.TAG, "用户彻底拒绝授予权限，一般会提示用户进入设置权限界面");
            } else {
                ActivityCompat.requestPermissions(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE"}, 1);
                LogUtil.d(this.TAG, "用户未彻底拒绝授予权限");
            }
        }
    }

//    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
//        this.mLifeEvent = "onCreate";
//        LogUtil.d(this.TAG, "onCreate");
//        translucentStatus();
//        LayoutMainBinding layoutMainBindingInflate = LayoutMainBinding.inflate(getLayoutInflater());
//        this.mBinding = layoutMainBindingInflate;
//        layoutMainBindingInflate.getRoot().post(this::startOpenAnimate);
//        this.mBinding.pager.setUserInputEnabled(false);
//        this.mContentStartTopMargin = getResources().getDimensionPixelSize(R.dimen.content_height_top);
//        this.mMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
//        getLifecycle().addObserver(this.mMainViewModel.getMainActivityLifecycleObserver());
//        setContentView(this.mBinding.getRoot());
//        setPageTab(getIntent(), false);
//        initMainBinding();
//        this.mMainViewModel.setActivity(this);
//        GlyAcManager.getInstance().getAcInterfaceManager().setAcVisibilityListener(this.mAcVisibilityListener);
//        checkStoragePermission();
//    }

    private void resetOpenAnimate() {
        ValueAnimator valueAnimator = this.mOpenBgAlphaAnimation;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mOpenBgAlphaAnimation.cancel();
        }
        ValueAnimator valueAnimator2 = this.mOpenContentAlphaAnimation;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.mOpenContentAlphaAnimation.cancel();
        }
        ValueAnimator valueAnimator3 = this.mOpenTranslateAnimation;
        if (valueAnimator3 == null || !valueAnimator3.isRunning()) {
            return;
        }
        this.mOpenTranslateAnimation.cancel();
    }

    private void resetCloseAnimate() {
        ValueAnimator valueAnimator = this.mCloseBgAlphaAnimation;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.mCloseBgAlphaAnimation.cancel();
        }
        ValueAnimator valueAnimator2 = this.mCloseContentAlphaAnimation;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.mCloseContentAlphaAnimation.cancel();
        }
        ValueAnimator valueAnimator3 = this.mCloseTranslateAnimation;
        if (valueAnimator3 == null || !valueAnimator3.isRunning()) {
            return;
        }
        this.mCloseTranslateAnimation.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startOpenAnimate() {
        LogUtil.i(this.TAG, "startOpenAnimate");
        resetCloseAnimate();
        resetOpenAnimate();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mBinding.bg.getAlpha(), 1.0f);
        this.mOpenBgAlphaAnimation = valueAnimatorOfFloat;
        valueAnimatorOfFloat.addUpdateListener(this::lambda$startOpenAnimate$0$GlyMainActivity);
        this.mOpenBgAlphaAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.geely.hvac.activity.GlyMainActivity.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                LogUtil.i(GlyMainActivity.this.TAG, "mOpenTranslateAnimation, onAnimationEnd");
                GlyMainActivity.this.mBinding.root.setBackgroundResource(R.color.status_bar_mask);
            }
        });
        this.mOpenBgAlphaAnimation.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.mBinding.contentWrap.getAlpha(), 1.0f);
        this.mOpenContentAlphaAnimation = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setStartDelay(87L);
        this.mOpenContentAlphaAnimation.setDuration(155L);
        this.mOpenContentAlphaAnimation.addUpdateListener(this::lambda$startOpenAnimate$1$GlyMainActivity);
        this.mOpenContentAlphaAnimation.start();
        if (CommonUtils.isKX11_A2()) {
            this.mContentEndTopMargin = 0;
            getWindow().setFlags(1024, 1024);
            getWindow().getDecorView().setSystemUiVisibility(4);
        } else {
            this.mContentEndTopMargin = 100;
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(((ViewGroup.MarginLayoutParams) this.mBinding.contentWrap.getLayoutParams()).topMargin, this.mContentEndTopMargin);
        this.mOpenTranslateAnimation = valueAnimatorOfInt;
        valueAnimatorOfInt.setStartDelay(175L);
        this.mOpenTranslateAnimation.setInterpolator(new OvershootInterpolator(1.0f));
        this.mOpenTranslateAnimation.setDuration(350L);
        this.mOpenTranslateAnimation.addUpdateListener(this::lambda$startOpenAnimate$2$GlyMainActivity);
        this.mOpenTranslateAnimation.start();
        LogUtil.d(this.TAG, "startOpenAnimate over");
    }

    public /* synthetic */ void lambda$startOpenAnimate$0$GlyMainActivity(ValueAnimator valueAnimator) {
        this.mBinding.bg.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public /* synthetic */ void lambda$startOpenAnimate$1$GlyMainActivity(ValueAnimator valueAnimator) {
        this.mBinding.contentWrap.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public /* synthetic */ void lambda$startOpenAnimate$2$GlyMainActivity(ValueAnimator valueAnimator) {
        int iIntValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mBinding.contentWrap.getLayoutParams();
        marginLayoutParams.topMargin = iIntValue;
        LogUtil.d(this.TAG, "value : " + iIntValue);
        this.mBinding.contentWrap.setLayoutParams(marginLayoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startCloseAnimation() {
        resetOpenAnimate();
        resetCloseAnimate();
        this.mBinding.root.setBackgroundColor(0);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(this.mBinding.bg.getAlpha(), 0.0f);
        this.mCloseBgAlphaAnimation = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(155L);
        this.mCloseBgAlphaAnimation.setStartDelay(195L);
        this.mCloseBgAlphaAnimation.addUpdateListener(this::lambda$startCloseAnimation$3$GlyMainActivity);
        this.mCloseBgAlphaAnimation.start();
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(this.mBinding.contentWrap.getAlpha(), 0.0f);
        this.mCloseContentAlphaAnimation = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setStartDelay(87L);
        this.mCloseContentAlphaAnimation.setDuration(155L);
        this.mCloseContentAlphaAnimation.addUpdateListener(this::lambda$startCloseAnimation$4$GlyMainActivity);
        this.mCloseContentAlphaAnimation.start();
        if (CommonUtils.isKX11_A2()) {
            this.mContentStartTopMargin = 0;
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(((ViewGroup.MarginLayoutParams) this.mBinding.contentWrap.getLayoutParams()).topMargin, this.mContentStartTopMargin);
        this.mCloseTranslateAnimation = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(221L);
        this.mCloseTranslateAnimation.addUpdateListener(this::lambda$startCloseAnimation$5$GlyMainActivity);
        this.mCloseTranslateAnimation.start();
        LogUtil.d(this.TAG, "startCloseAnimation over");
    }

    public /* synthetic */ void lambda$startCloseAnimation$3$GlyMainActivity(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.mBinding.bg.setAlpha(fFloatValue);
        if (fFloatValue <= 0.0f) {
            try {
                if (GlyAcManager.getInstance().isStartLauncherByDisplayId(getWindowManager().getDefaultDisplay().getDisplayId())) {
                    if (getWindowManager().getDefaultDisplay().getDisplayId() == 0) {
                        GlyAcManager.getInstance().jumpToHome();
                    } else {
                        GlyAcManager.getInstance().jumpToPSDHome();
                    }
                } else {
                    moveTaskToBack(true);
                }
            } catch (Exception e) {
                e.printStackTrace();
                moveTaskToBack(true);
            }
            overridePendingTransition(0, 0);
        }
    }

    public /* synthetic */ void lambda$startCloseAnimation$4$GlyMainActivity(ValueAnimator valueAnimator) {
        this.mBinding.contentWrap.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public /* synthetic */ void lambda$startCloseAnimation$5$GlyMainActivity(ValueAnimator valueAnimator) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mBinding.contentWrap.getLayoutParams();
        marginLayoutParams.topMargin = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.mBinding.contentWrap.setLayoutParams(marginLayoutParams);
        LogUtil.d(this.TAG, "topMargin : " + marginLayoutParams.topMargin);
    }

    @Override // com.geely.hvac.activity.AutoHideActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        LogUtil.d(this.TAG, "onResume:" + this);
        restoreAnimateState();
        this.mMainViewModel.getPanelVisible().set(true);
        if (this.mIsHide) {
            this.mMainViewModel.regetCarModeUserMode();
        }
        this.mIsHide = false;
        Executor.IO.execute(this::lambda$onResume$6$GlyMainActivity);
    }

    public /* synthetic */ void lambda$onResume$6$GlyMainActivity() {
        int displayId = getWindowManager().getDefaultDisplay().getDisplayId();
        this.mMainViewModel.isDisplayIVIClick();
        GlySensorsData.registerSuperProperties(getApplicationContext(), displayId == 3 ? 2 : 1);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        LogUtil.d(this.TAG, "onConfigurationChanged:" + this);
        this.mMainViewModel.isDisplayIVIClick();
    }

    @Override // com.geely.hvac.activity.AutoHideActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        this.mMainViewModel.getPanelVisible().set(false);
        LogUtil.d(this.TAG, "onPause:" + this);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        LogUtil.d(this.TAG, "onStop:" + this);
        this.mLifeEvent = "";
        resetAnimateState();
        this.mBinding.pull.scrollTo(0, 0);
        this.mBinding.pull.requestLayout();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LogUtil.d(this.TAG, "onDestroy: displayId: " + getWindowManager().getDefaultDisplay().getDisplayId() + ", this: " + this);
        if (!CommonUtils.isKX11_A2()) {
            GlyAcManager.getInstance().getAcInterfaceManager().setAcVisibilityListener(null);
        }
        this.mMainViewModel.getMainTabIndex().removeOnPropertyChangedCallback(this.mMainTabIndexChangeListener);
        this.mMainViewModel.getFragranceSupported().removeOnPropertyChangedCallback(this.mFragranceSupportListener);
    }

    private void resetAnimateState() {
        this.mBinding.bg.setAlpha(0.0f);
        this.mBinding.contentWrap.setAlpha(0.0f);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mBinding.contentWrap.getLayoutParams();
        marginLayoutParams.topMargin = this.mContentStartTopMargin;
        this.mBinding.contentWrap.setLayoutParams(marginLayoutParams);
    }

    private void restoreAnimateState() {
        if (!"onNewIntent".equals(this.mLifeEvent) && !"onCreate".equals(this.mLifeEvent)) {
            LogUtil.d(this.TAG, "restoreAnimateState yes");
            this.mBinding.bg.setAlpha(1.0f);
            this.mBinding.contentWrap.setAlpha(1.0f);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.mBinding.contentWrap.getLayoutParams();
            marginLayoutParams.topMargin = this.mContentEndTopMargin;
            this.mBinding.contentWrap.setLayoutParams(marginLayoutParams);
            return;
        }
        LogUtil.d(this.TAG, "restoreAnimateState no");
    }

    private void initMainBinding() {
        this.mBinding.setModel(this.mMainViewModel);
        this.mAdapter = new MainPagerAdapter(getApplicationContext(), this.mMainViewModel);
        this.mBinding.pager.setAdapter(this.mAdapter);
        this.mBinding.pager.setOffscreenPageLimit(1);
        this.mBinding.tab.setUpWithViewPager(this.mBinding.pager);
        this.mBinding.tab.setTabIndex(this.mMainViewModel.getMainTabIndex().get());
        MainPagerAdapter mainPagerAdapter = this.mAdapter;
        AppMainViewModel appMainViewModel = this.mMainViewModel;
        mainPagerAdapter.setItemSize(appMainViewModel.isFunctionAvailable(appMainViewModel.getFragranceSupported().get()) ? 3 : 2);
        this.mMainViewModel.getMainTabIndex().addOnPropertyChangedCallback(this.mMainTabIndexChangeListener);
        this.mMainViewModel.getFragranceSupported().addOnPropertyChangedCallback(this.mFragranceSupportListener);
        this.mBinding.pager.registerOnPageChangeCallback(new ViewPager2.OnPageChangeCallback() { // from class: com.geely.hvac.activity.GlyMainActivity.5
            @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
            public void onPageSelected(int position) {
                GlyMainActivity.this.mMainViewModel.getMainTabIndex().set(position);
            }
        });
        View childAt = this.mBinding.pager.getChildAt(0);
        if (childAt instanceof RecyclerView) {
            childAt.setOverScrollMode(2);
        }
    }

    @Override // android.app.Activity
    public boolean onTouchEvent(MotionEvent event) {
        int action = event.getAction();
        if (action == 0) {
            this.downY = (int) event.getY();
        } else if (action == 1) {
            int y = (int) event.getY();
            this.upY = y;
            if (isOutOfBounds(y) && isOutOfBounds(this.downY)) {
                moveToBack();
            }
            if (isHotZone(this.downY) && isInOfBounds(this.upY)) {
                moveToBack();
            }
            this.downY = 0;
            this.upY = 0;
        }
        return super.onTouchEvent(event);
    }

    private boolean isOutOfBounds(int y) {
        return y < getWindow().getDecorView().getHeight() - this.mBinding.pull.getHeight();
    }

    private boolean isInOfBounds(int y) {
        return !CommonUtils.isKX11_A2() && y >= getWindow().getDecorView().getHeight() - this.mBinding.pull.getHeight();
    }

    private boolean isHotZone(int y) {
        View decorView = getWindow().getDecorView();
        return y >= decorView.getHeight() - this.mBinding.pull.getHeight() && y < (decorView.getHeight() - this.mBinding.pull.getHeight()) + 51;
    }

    @Override // android.app.Activity
    public void finish() {
        moveToBack();
    }

    @Override // com.geely.hvac.activity.AutoHideActivity
    protected void onAutoHide() {
        startCloseAnimation();
        this.mIsHide = true;
    }
}
