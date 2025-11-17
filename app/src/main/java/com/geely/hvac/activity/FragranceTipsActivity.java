package com.geely.hvac.activity;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.viewpager.widget.ViewPager;
import com.geely.hvac.R;
import com.geely.hvac.adapter.FragranceTipsAdapter;
import com.geely.hvac.databinding.LayoutFragranceTipsBinding;
import com.geely.hvac.utils.LogUtil;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class FragranceTipsActivity extends DialogActivity {
    private static final String TAG = "FragranceTipsActivityTAG";
    private LayoutFragranceTipsBinding mBinding;

    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.BaseDialogActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws Resources.NotFoundException {
        super.onCreate(savedInstanceState);
        ViewPager viewPager = (ViewPager) findViewById(R.id.vp_fragrance_tips);
        final ImageView imageView = (ImageView) findViewById(R.id.fragment_tips_tab_0);
        final ImageView imageView2 = (ImageView) findViewById(R.id.fragment_tips_tab_1);
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(R.mipmap.fragrance_tips_pt_0));
        arrayList.add(Integer.valueOf(R.mipmap.fragrance_tips_pt_1));
        viewPager.setAdapter(new FragranceTipsAdapter(this, arrayList));
        viewPager.addOnPageChangeListener(new ViewPager.OnPageChangeListener() { // from class: com.geely.hvac.activity.FragranceTipsActivity.1
            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrolled(int position, float positionOffset, int positionOffsetPixels) {
                LogUtil.d(FragranceTipsActivity.TAG, "onPageScrolled");
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageSelected(int position) {
                LogUtil.d(FragranceTipsActivity.TAG, "onPageSelected position:" + position);
                if (position == 0) {
                    imageView.setBackground(FragranceTipsActivity.this.getDrawable(R.drawable.fragrance_tips_tab_0));
                    imageView2.setBackground(FragranceTipsActivity.this.getDrawable(R.drawable.fragrance_tips_tab_1));
                } else if (position == 1) {
                    imageView.setBackground(FragranceTipsActivity.this.getDrawable(R.drawable.fragrance_tips_tab_1));
                    imageView2.setBackground(FragranceTipsActivity.this.getDrawable(R.drawable.fragrance_tips_tab_0));
                }
            }

            @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
            public void onPageScrollStateChanged(int state) {
                LogUtil.d(FragranceTipsActivity.TAG, "onPageScrollStateChanged");
            }
        });
    }

    @Override // com.geely.hvac.activity.DialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
    }


    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutFragranceTipsBinding layoutFragranceTipsBindingInflate = LayoutFragranceTipsBinding.inflate(getLayoutInflater());
        this.mBinding = layoutFragranceTipsBindingInflate;
        layoutFragranceTipsBindingInflate.setModel(getMainViewModel());
        this.mBinding.close.setOnClickListener(this::onCloseClicked);
        return this.mBinding.getRoot();
    }

    private void onCloseClicked(View view) {
        if (getMainViewModel().getMainActivityVisible().get()) {
            LogUtil.d(TAG, "finish Activity");
            finish();
        } else {
            LogUtil.d(TAG, "moveTaskToBack Activity");
            moveTaskToBack(true);
        }
        SensorsDataAutoTrackHelper.trackViewOnClick(view);
    }
}
