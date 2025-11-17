package com.geely.hvac.activity;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import com.geely.hvac.R;
import com.geely.hvac.databinding.LayoutBuyFragranceBinding;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.utils.QrCodeUtil;
import com.geely.hvac.utils.StackPrinter;
import com.geely.lib.cloud.CloudApiManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.listener.ServiceConnectionListener;
import com.geely.lib.oneosapi.input.KeyCode;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import org.json.JSONObject;

public class BuyFragranceActivity extends DialogActivity {
    private static final String TAG = "BuyFragranceActivityTAG";
    private LayoutBuyFragranceBinding mBinding;
    private final ServiceConnectionListener mServiceConnectionListener = this::onServiceConnectionChanged;

    private void onServiceConnectionChanged(boolean connected) {
        LogUtil.i(TAG, "ServiceConnection() called with: connectionState = [" + connected + "]");
        if (connected) {
            try {
                CloudApiManager.getInstance(this).getResourceManager().getFragranceUrl(new FragranceUrlOperationListener());
            } catch (RemoteException unused) {
                runOnUiThread(this::showErrorState);
            }
        } else {
            runOnUiThread(this::showErrorState);
        }
    }

    private class FragranceUrlOperationListener implements OperationListener {
        @Override
        public void onSuccess(String json) {
            LogUtil.i(BuyFragranceActivity.TAG, "getFragranceUrl success:" + json);
            try {
                final String url = new JSONObject(json).getString(DbParams.KEY_DATA);
                if (TextUtils.isEmpty(url)) {
                    runOnUiThread(BuyFragranceActivity.this::showErrorState);
                } else {
                    runOnUiThread(() -> BuyFragranceActivity.this.displayQrCode(url));
                }
            } catch (Exception e) {
                runOnUiThread(BuyFragranceActivity.this::showErrorState);
                LogUtil.d(BuyFragranceActivity.TAG, StackPrinter.getExceptionStack(e));
            }
        }

        @Override
        public void onFail(String json) {
            LogUtil.i(BuyFragranceActivity.TAG, "getFragranceUrl fail:" + json);
            runOnUiThread(BuyFragranceActivity.this::showErrorState);
        }
    }

    private void displayQrCode(String url) {
        mBinding.tvFragranceId.setVisibility(View.VISIBLE);
        mBinding.tvFragranceBuyWay.setVisibility(View.VISIBLE);
        mBinding.tvFragranceWait.setVisibility(View.GONE);
        mBinding.qrIcon.setImageBitmap(QrCodeUtil.createQRCodeBitmap(url, KeyCode.KEYCODE_WAKEUP, KeyCode.KEYCODE_WAKEUP));
    }

    private void showErrorState() {
        mBinding.tvFragranceId.setVisibility(View.GONE);
        mBinding.tvFragranceBuyWay.setVisibility(View.GONE);
        mBinding.tvFragranceWait.setVisibility(View.VISIBLE);
        mBinding.qrIcon.setImageResource(R.drawable.fragrance_service_expired);
    }

    @Override // com.geely.hvac.activity.DialogActivity, com.geely.hvac.activity.BaseDialogActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        String stringExtra = getIntent().getStringExtra("url");
        LogUtil.d(TAG, "onCreate url extra is " + stringExtra);
        if (!TextUtils.isEmpty(stringExtra) && !"null".equals(stringExtra)) {
            mBinding.tvFragranceId.setVisibility(View.VISIBLE);
            mBinding.tvFragranceBuyWay.setVisibility(View.VISIBLE);
            mBinding.tvFragranceWait.setVisibility(View.GONE);
            mBinding.qrIcon.setImageBitmap(QrCodeUtil.createQRCodeBitmap(stringExtra, KeyCode.KEYCODE_WAKEUP, KeyCode.KEYCODE_WAKEUP));
            return;
        }
        CloudApiManager.getInstance(this).registerServiceConnectionListener(this.mServiceConnectionListener);
        CloudApiManager.getInstance(this).init();
    }

    @Override // com.geely.hvac.activity.DialogActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        CloudApiManager.getInstance(this).unregisterServiceConnectionListener(this.mServiceConnectionListener);
    }

    @Override // com.geely.hvac.activity.BaseDialogActivity
    protected View getView() {
        LayoutBuyFragranceBinding layoutBuyFragranceBindingInflate = LayoutBuyFragranceBinding.inflate(getLayoutInflater());
        this.mBinding = layoutBuyFragranceBindingInflate;
        layoutBuyFragranceBindingInflate.setModel(getMainViewModel());
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
