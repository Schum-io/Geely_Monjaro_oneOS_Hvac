package com.geely.lib.cloud.membercenter;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.membercenter.IMemberCenter;

/* loaded from: classes.dex */
public class MemberCenterManager implements ServiceBaseManager {
    private static final String TAG = "MemberCenterManager";
    private final Context mContext;
    private IMemberCenter mService;

    public MemberCenterManager(Context context, IBinder binder) {
        Log.d(TAG, "MemberCenterManager create");
        this.mContext = context;
        this.mService = IMemberCenter.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        Log.d(TAG, "MemberCenterManager setService");
        if (binder != null) {
            this.mService = IMemberCenter.Stub.asInterface(binder);
        }
    }

    public void getLoginQrCode(final OperationListener callback) {
        try {
            Log.d(TAG, "getLoginQrCode");
            IMemberCenter iMemberCenter = this.mService;
            if (iMemberCenter != null) {
                iMemberCenter.getLoginQrCode(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.membercenter.MemberCenterManager.1
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
                });
            } else {
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getLoginQrCodeStatus(final OperationListener callback) {
        try {
            Log.d(TAG, "getLoginQrCodeStatus");
            IMemberCenter iMemberCenter = this.mService;
            if (iMemberCenter != null) {
                iMemberCenter.getLoginQrCodeStatus(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.membercenter.MemberCenterManager.2
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
                });
            } else {
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getLoginInfo(final OperationListener callback) {
        try {
            Log.d(TAG, "getLoginInfo");
            IMemberCenter iMemberCenter = this.mService;
            if (iMemberCenter != null) {
                iMemberCenter.getLoginInfo(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.membercenter.MemberCenterManager.3
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
                });
            } else {
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void refreshToken(final String accessToken, final String refreshToken, final OperationListener callback) {
        try {
            Log.d(TAG, "refreshToken");
            if (this.mService != null) {
                Log.d(TAG, "accessToken" + accessToken);
                this.mService.refreshToken(accessToken, refreshToken, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.membercenter.MemberCenterManager.4
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
                });
            } else {
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void logout(final String accessToken, final String refreshToken, final OperationListener callback) {
        try {
            Log.d(TAG, "logout");
            IMemberCenter iMemberCenter = this.mService;
            if (iMemberCenter != null) {
                iMemberCenter.logout(accessToken, refreshToken, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.membercenter.MemberCenterManager.5
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
                });
            } else {
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
