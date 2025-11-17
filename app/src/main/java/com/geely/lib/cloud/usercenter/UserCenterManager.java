package com.geely.lib.cloud.usercenter;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.trilateral.bean.ThirdTypeParam;
import com.geely.lib.cloud.usercenter.IUserCenter;
import com.geely.lib.cloud.usercenter.bean.ApkParam;
import com.geely.lib.cloud.usercenter.bean.DocParam;
import com.geely.lib.cloud.usercenter.bean.GetQrCodeParam;
import com.geely.lib.cloud.usercenter.bean.PhoneParam;
import com.geely.lib.cloud.usercenter.bean.PostDeviceAddParam;
import com.geely.lib.cloud.usercenter.bean.PrivacyDetailParam;
import com.geely.lib.cloud.usercenter.bean.PrivacyHistoryParam;
import com.geely.lib.cloud.usercenter.bean.PrivacyRecordsParam;
import com.geely.lib.cloud.usercenter.bean.ProfileParam;
import com.geely.lib.cloud.usercenter.bean.QrCodeStatusParam;
import com.geely.lib.cloud.usercenter.bean.RecordsParam;
import com.geely.lib.cloud.usercenter.bean.RefreshTokenParam;
import com.geely.lib.cloud.usercenter.bean.RefreshTokenParam1;
import com.geely.lib.cloud.usercenter.bean.ScopeConfirmParam;
import com.geely.lib.cloud.usercenter.bean.SwitchParam;
import com.geely.lib.cloud.usercenter.bean.TerminalIdParam;
import com.geely.lib.cloud.usercenter.bean.ThirdAccountParam;
import com.geely.lib.cloud.usercenter.bean.TokenParam;
import com.geely.lib.cloud.usercenter.bean.UserLogoutParam;
import com.geely.lib.cloud.usercenter.bean.VehicleModelParam;

/* loaded from: classes.dex */
public class UserCenterManager implements ServiceBaseManager {
    private static final String TAG = "UserCenterManager";
    private final Context mContext;
    private IUserCenter mService;

    public UserCenterManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IUserCenter.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IUserCenter.Stub.asInterface(binder);
        }
    }

    public void getUserLoginQrcode(final GetQrCodeParam getQrCodeParam, final OperationListener callback) {
        Log.d(TAG, "getUserLoginQrcode");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserLoginQrcode(getQrCodeParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.1
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserLoginQrcodeStatus(QrCodeStatusParam qrCodeStatusParam, final OperationListener callback) {
        Log.d(TAG, "getUserLoginQrcodeStatus");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserLoginQrcodeStatus(qrCodeStatusParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.2
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserLoginConfirm(TerminalIdParam terminalId, final OperationListener callback) {
        Log.d(TAG, "getUserLoginConfirm");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserLoginConfirm(terminalId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.3
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserLoginUserInfo(TerminalIdParam terminalId, final OperationListener callback) {
        Log.d(TAG, "getUserLoginUserInfo");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserLoginUserInfo(terminalId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.4
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserLoginRefresh(RefreshTokenParam refreshTokenParam, final OperationListener callback) {
        Log.d(TAG, "getUserLoginRefresh");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserLoginRefresh(refreshTokenParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.5
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserLoginLogout(final UserLogoutParam userLogoutParam, final OperationListener callback) {
        Log.d(TAG, "getUserLoginLogout");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserLoginLogout(userLogoutParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.6
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserRelationList(final OperationListener callback) {
        Log.d(TAG, "getUserRelationList");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserRelationList(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.7
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserRelationAdd(final PhoneParam phone, final OperationListener callback) {
        Log.d(TAG, "getWeatherCitys");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserRelationAdd(phone, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.8
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserRelationDelete(String userId, final OperationListener callback) {
        Log.d(TAG, "getUserRelationDelete");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserRelationDelete(userId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.9
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserLoginSync(final RefreshTokenParam1 refreshToken, final OperationListener callback) {
        Log.d(TAG, "getUserLoginSync");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserLoginSync(refreshToken, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.10
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserAPPOwnerQrcode(final OperationListener callback) {
        Log.d(TAG, "getUserAPPOwnerQrcode");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserAPPOwnerQrcode(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.11
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserHabitVehicleUpload(final ProfileParam profileParam, final OperationListener callback) {
        Log.d(TAG, "getUserHabitVehicleUpload");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserHabitVehicleUpload(profileParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.12
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserHabitVehicleDownload(final OperationListener callback) {
        Log.d(TAG, "getUserHabitVehicleDownload");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserHabitVehicleDownload(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.13
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserInfo(final OperationListener callback) {
        Log.d(TAG, "getUserInfo");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserInfo(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.14
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserSettingsUpload(final ProfileParam profileParam, final OperationListener callback) {
        Log.d(TAG, "getUserSettingsUpload");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserSettingsUpload(profileParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.15
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserSettingsDownload(String model, final OperationListener callback) {
        Log.d(TAG, "getUserSettingsDownload");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserSettingsDownload(model, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.16
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserScopeInfo(String scope, String brandCode, final OperationListener callback) {
        Log.d(TAG, "getUserScopeInfo");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserScopeInfo(scope, brandCode, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.17
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserScopeConfirm(ScopeConfirmParam scopeConfirmParam, final OperationListener callback) {
        Log.d(TAG, "getUserScopeConfirm");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserScopeConfirm(scopeConfirmParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.18
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserPhone(final OperationListener callback) {
        Log.d(TAG, "getUserPhone");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserPhone(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.19
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserMessageSend(final OperationListener callback) {
        Log.d(TAG, "getUserMessageSend");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserMessageSend(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.20
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserMessageVerify(final String verificationCode, final OperationListener callback) {
        Log.d(TAG, "getUserMessageVerify");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserMessageVerify(verificationCode, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.21
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserApplicationList(final VehicleModelParam vehicleModel, final OperationListener callback) {
        Log.d(TAG, "getUserApplicationList");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserApplicationList(vehicleModel, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.22
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getUserApplicationAdd(final ApkParam apkparam, final OperationListener callback) {
        Log.d(TAG, "getUserApplicationAdd");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getUserApplicationAdd(apkparam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.23
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getAgreementPrivacyRecords(final RecordsParam recordsParam, final OperationListener callback) {
        Log.d(TAG, "getAgreementPrivacyRecords");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getAgreementPrivacyRecords(recordsParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.24
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getAgreementResults(final DocParam docParam, final OperationListener callback) {
        Log.d(TAG, "getAgreementResults");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getAgreementResults(docParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.25
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getAgreementComparisonDetails(final DocParam docParam, final OperationListener callback) {
        Log.d(TAG, "getAgreementComparisonDetails");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getAgreementComparisonDetails(docParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.26
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getThirdAccount(final ThirdAccountParam thirdAccountParam, final OperationListener callback) {
        Log.d(TAG, "getThirdAccount");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getThirdAccount(thirdAccountParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.27
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getThirdBindAppList(final OperationListener callback) {
        Log.d(TAG, "getThirdBindAppList");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getThirdBindAppList(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.28
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getThirdBindStatus(final String thirdType, final String action, final OperationListener callback) {
        Log.d(TAG, "getThirdBindStatus");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getThirdBindStatus(thirdType, action, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.29
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getTodayRadioUnboundAccount(final ThirdTypeParam thirdTypeParam, final OperationListener callback) {
        Log.d(TAG, "getTodayRadioUnboundAccount");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getTodayRadioUnboundAccount(thirdTypeParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.30
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getNeteaseBindQrcode(final TokenParam tokenParam, final OperationListener callback) {
        Log.d(TAG, "getNeteaseBindQrcode");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getNeteaseBindQrcode(tokenParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.31
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getNeteaseUnboundAccount(final TokenParam tokenParam, final OperationListener callback) {
        Log.d(TAG, "getNeteaseUnboundAccount");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getNeteaseUnboundAccount(tokenParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.32
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getHimaUnboundAccount(final ThirdTypeParam thirdTypeParam, final OperationListener callback) {
        Log.d(TAG, "getHimaUnboundAccount");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getHimaUnboundAccount(thirdTypeParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.33
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getThirdSwitchStatus(final SwitchParam switchParam, final OperationListener callback) {
        Log.d(TAG, "getThirdSwitchStatus");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getThirdSwitchStatus(switchParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.34
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getPrivacyRecords(final PrivacyRecordsParam privacyRecordsParam, final OperationListener callback) {
        Log.d(TAG, "getPrivacyRecords");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getPrivacyRecords(privacyRecordsParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.35
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getPrivacyHistory(final PrivacyHistoryParam privacyHistoryParam, final OperationListener callback) {
        Log.d(TAG, "getPrivacyHistory");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getPrivacyHistory(privacyHistoryParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.36
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getPrivacyDetail(final PrivacyDetailParam privacyDetailParam, final OperationListener callback) {
        Log.d(TAG, "getPrivacyDetail");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getPrivacyDetail(privacyDetailParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.37
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getDownloadUrl(final OperationListener callback) {
        Log.d(TAG, "getDownloadUrl");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.getDownloadUrl(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.38
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void postRegisterAdd(PostDeviceAddParam postDeviceAddParam, final OperationListener callback) {
        Log.d(TAG, "postRegisterAdd");
        try {
            IUserCenter iUserCenter = this.mService;
            if (iUserCenter != null) {
                iUserCenter.postRegisterAdd(postDeviceAddParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.usercenter.UserCenterManager.39
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
