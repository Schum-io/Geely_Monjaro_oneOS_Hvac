package com.geely.hvac.activity;

import android.view.Window;
import androidx.appcompat.app.AppCompatActivity;
import com.geely.hvac.utils.UiUtil;
import com.geely.os.bt.GlyBtDef;

/* loaded from: classes.dex */
public class BaseActivity extends AppCompatActivity {
    protected final String TAG = getClass().getSimpleName();

    protected boolean isLight() {
        return UiUtil.isLight(this);
    }

    protected void translucentStatus() {
        Window window = getWindow();
        window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 1024);
        window.clearFlags(GlyBtDef.PBAP_PROPERTY_MASK_CLASS);
        window.clearFlags(GlyBtDef.PBAP_PROPERTY_MASK_SORT_STRING);
        window.setStatusBarColor(0);
    }

    protected void translucentNavigation() {
        getWindow().addFlags(Integer.MIN_VALUE);
        getWindow().setNavigationBarColor(0);
    }

    protected void lightStatus(boolean isLight) {
        Window window = getWindow();
        if (isLight) {
            window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() | 8192);
        } else {
            window.getDecorView().setSystemUiVisibility(window.getDecorView().getSystemUiVisibility() & (-8193));
        }
    }
}
