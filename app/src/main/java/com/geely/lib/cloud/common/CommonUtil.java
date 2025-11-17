package com.geely.lib.cloud.common;

import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.listener.OperationListener;

/* loaded from: classes.dex */
public class CommonUtil {
    public static ICloudCallback getDataCallBack(final OperationListener callback) throws Exception {
        return new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.common.CommonUtil.1
            @Override // com.geely.lib.cloud.ICloudCallback
            public void onSuccess(String json) {
                OperationListener operationListener = callback;
                if (operationListener != null) {
                    operationListener.onSuccess(json);
                }
            }

            @Override // com.geely.lib.cloud.ICloudCallback
            public void onFail(String json) {
                OperationListener operationListener = callback;
                if (operationListener != null) {
                    operationListener.onFail(json);
                }
            }
        };
    }
}
