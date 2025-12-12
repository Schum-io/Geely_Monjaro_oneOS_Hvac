package com.geely.lib.cloud.usercenter;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.trilateral.bean.ThirdTypeParam;
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
import com.geely.lib.cloud.usercenter.bean.ThirdTokenOpenIdParam;
import com.geely.lib.cloud.usercenter.bean.TokenParam;
import com.geely.lib.cloud.usercenter.bean.UserIdParam;
import com.geely.lib.cloud.usercenter.bean.UserLogoutParam;
import com.geely.lib.cloud.usercenter.bean.VehicleModelParam;

/* loaded from: classes.dex */
public interface IUserCenter extends IInterface {

    public static class Default implements IUserCenter {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getAgreementComparisonDetails(DocParam docParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getAgreementPrivacyRecords(RecordsParam recordsParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getAgreementResults(DocParam docParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getDownloadUrl(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getHimaUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getKugouBindAccountUpdate(ThirdTokenOpenIdParam thirdTokenOpenIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getKugouBindQrcode(ThirdTokenOpenIdParam thirdTokenOpenIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getKugouUnboundAccount(UserIdParam userIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getNeteaseBindQrcode(TokenParam tokenParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getNeteaseUnboundAccount(TokenParam tokenParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getPrivacyDetail(PrivacyDetailParam privacyDetailParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getPrivacyHistory(PrivacyHistoryParam privacyHistoryParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getPrivacyRecords(PrivacyRecordsParam privacyRecordsParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getThirdAccount(ThirdAccountParam thirdAccountParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getThirdBindAppList(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getThirdBindStatus(String thirdType, String action, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getThirdSwitchStatus(SwitchParam switchParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getTodayRadioUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserAPPOwnerQrcode(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserApplicationAdd(ApkParam apkparam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserApplicationList(VehicleModelParam vehicleModel, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserHabitVehicleDownload(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserHabitVehicleUpload(ProfileParam profileParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserInfo(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserLoginConfirm(TerminalIdParam terminalIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserLoginLogout(UserLogoutParam userLogoutParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserLoginQrcode(GetQrCodeParam getQrCodeParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserLoginQrcodeStatus(QrCodeStatusParam qrCodeStatusParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserLoginRefresh(RefreshTokenParam refreshTokenParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserLoginSync(RefreshTokenParam1 refreshToken, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserLoginUserInfo(TerminalIdParam terminalIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserMessageSend(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserMessageVerify(String verificationCode, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserPhone(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserRelationAdd(PhoneParam phone, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserRelationDelete(String userId, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserRelationList(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserScopeConfirm(ScopeConfirmParam scopeConfirmParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserScopeInfo(String scope, String brandCode, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserSettingsDownload(String model, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void getUserSettingsUpload(ProfileParam profileParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.usercenter.IUserCenter
        public void postRegisterAdd(PostDeviceAddParam postDeviceAddParam, ICloudCallback callback) throws RemoteException {
        }
    }

    void getAgreementComparisonDetails(DocParam docParam, ICloudCallback callback) throws RemoteException;

    void getAgreementPrivacyRecords(RecordsParam recordsParam, ICloudCallback callback) throws RemoteException;

    void getAgreementResults(DocParam docParam, ICloudCallback callback) throws RemoteException;

    void getDownloadUrl(ICloudCallback callback) throws RemoteException;

    void getHimaUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException;

    void getKugouBindAccountUpdate(ThirdTokenOpenIdParam thirdTokenOpenIdParam, ICloudCallback callback) throws RemoteException;

    void getKugouBindQrcode(ThirdTokenOpenIdParam thirdTokenOpenIdParam, ICloudCallback callback) throws RemoteException;

    void getKugouUnboundAccount(UserIdParam userIdParam, ICloudCallback callback) throws RemoteException;

    void getNeteaseBindQrcode(TokenParam tokenParam, ICloudCallback callback) throws RemoteException;

    void getNeteaseUnboundAccount(TokenParam tokenParam, ICloudCallback callback) throws RemoteException;

    void getPrivacyDetail(PrivacyDetailParam privacyDetailParam, ICloudCallback callback) throws RemoteException;

    void getPrivacyHistory(PrivacyHistoryParam privacyHistoryParam, ICloudCallback callback) throws RemoteException;

    void getPrivacyRecords(PrivacyRecordsParam privacyRecordsParam, ICloudCallback callback) throws RemoteException;

    void getThirdAccount(ThirdAccountParam thirdAccountParam, ICloudCallback callback) throws RemoteException;

    void getThirdBindAppList(ICloudCallback callback) throws RemoteException;

    void getThirdBindStatus(String thirdType, String action, ICloudCallback callback) throws RemoteException;

    void getThirdSwitchStatus(SwitchParam switchParam, ICloudCallback callback) throws RemoteException;

    void getTodayRadioUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException;

    void getUserAPPOwnerQrcode(ICloudCallback callback) throws RemoteException;

    void getUserApplicationAdd(ApkParam apkparam, ICloudCallback callback) throws RemoteException;

    void getUserApplicationList(VehicleModelParam vehicleModel, ICloudCallback callback) throws RemoteException;

    void getUserHabitVehicleDownload(ICloudCallback callback) throws RemoteException;

    void getUserHabitVehicleUpload(ProfileParam profileParam, ICloudCallback callback) throws RemoteException;

    void getUserInfo(ICloudCallback callback) throws RemoteException;

    void getUserLoginConfirm(TerminalIdParam terminalIdParam, ICloudCallback callback) throws RemoteException;

    void getUserLoginLogout(UserLogoutParam userLogoutParam, ICloudCallback callback) throws RemoteException;

    void getUserLoginQrcode(GetQrCodeParam getQrCodeParam, ICloudCallback callback) throws RemoteException;

    void getUserLoginQrcodeStatus(QrCodeStatusParam qrCodeStatusParam, ICloudCallback callback) throws RemoteException;

    void getUserLoginRefresh(RefreshTokenParam refreshTokenParam, ICloudCallback callback) throws RemoteException;

    void getUserLoginSync(RefreshTokenParam1 refreshToken, ICloudCallback callback) throws RemoteException;

    void getUserLoginUserInfo(TerminalIdParam terminalIdParam, ICloudCallback callback) throws RemoteException;

    void getUserMessageSend(ICloudCallback callback) throws RemoteException;

    void getUserMessageVerify(String verificationCode, ICloudCallback callback) throws RemoteException;

    void getUserPhone(ICloudCallback callback) throws RemoteException;

    void getUserRelationAdd(PhoneParam phone, ICloudCallback callback) throws RemoteException;

    void getUserRelationDelete(String userId, ICloudCallback callback) throws RemoteException;

    void getUserRelationList(ICloudCallback callback) throws RemoteException;

    void getUserScopeConfirm(ScopeConfirmParam scopeConfirmParam, ICloudCallback callback) throws RemoteException;

    void getUserScopeInfo(String scope, String brandCode, ICloudCallback callback) throws RemoteException;

    void getUserSettingsDownload(String model, ICloudCallback callback) throws RemoteException;

    void getUserSettingsUpload(ProfileParam profileParam, ICloudCallback callback) throws RemoteException;

    void postRegisterAdd(PostDeviceAddParam postDeviceAddParam, ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IUserCenter {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.usercenter.IUserCenter";
        static final int TRANSACTION_getAgreementComparisonDetails = 26;
        static final int TRANSACTION_getAgreementPrivacyRecords = 24;
        static final int TRANSACTION_getAgreementResults = 25;
        static final int TRANSACTION_getDownloadUrl = 41;
        static final int TRANSACTION_getHimaUnboundAccount = 36;
        static final int TRANSACTION_getKugouBindAccountUpdate = 35;
        static final int TRANSACTION_getKugouBindQrcode = 33;
        static final int TRANSACTION_getKugouUnboundAccount = 34;
        static final int TRANSACTION_getNeteaseBindQrcode = 31;
        static final int TRANSACTION_getNeteaseUnboundAccount = 32;
        static final int TRANSACTION_getPrivacyDetail = 40;
        static final int TRANSACTION_getPrivacyHistory = 39;
        static final int TRANSACTION_getPrivacyRecords = 38;
        static final int TRANSACTION_getThirdAccount = 27;
        static final int TRANSACTION_getThirdBindAppList = 28;
        static final int TRANSACTION_getThirdBindStatus = 29;
        static final int TRANSACTION_getThirdSwitchStatus = 37;
        static final int TRANSACTION_getTodayRadioUnboundAccount = 30;
        static final int TRANSACTION_getUserAPPOwnerQrcode = 11;
        static final int TRANSACTION_getUserApplicationAdd = 23;
        static final int TRANSACTION_getUserApplicationList = 22;
        static final int TRANSACTION_getUserHabitVehicleDownload = 13;
        static final int TRANSACTION_getUserHabitVehicleUpload = 12;
        static final int TRANSACTION_getUserInfo = 14;
        static final int TRANSACTION_getUserLoginConfirm = 3;
        static final int TRANSACTION_getUserLoginLogout = 6;
        static final int TRANSACTION_getUserLoginQrcode = 1;
        static final int TRANSACTION_getUserLoginQrcodeStatus = 2;
        static final int TRANSACTION_getUserLoginRefresh = 5;
        static final int TRANSACTION_getUserLoginSync = 10;
        static final int TRANSACTION_getUserLoginUserInfo = 4;
        static final int TRANSACTION_getUserMessageSend = 20;
        static final int TRANSACTION_getUserMessageVerify = 21;
        static final int TRANSACTION_getUserPhone = 19;
        static final int TRANSACTION_getUserRelationAdd = 8;
        static final int TRANSACTION_getUserRelationDelete = 9;
        static final int TRANSACTION_getUserRelationList = 7;
        static final int TRANSACTION_getUserScopeConfirm = 18;
        static final int TRANSACTION_getUserScopeInfo = 17;
        static final int TRANSACTION_getUserSettingsDownload = 16;
        static final int TRANSACTION_getUserSettingsUpload = 15;
        static final int TRANSACTION_postRegisterAdd = 42;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IUserCenter asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IUserCenter)) {
                return (IUserCenter) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserLoginQrcode(parcel.readInt() != 0 ? GetQrCodeParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserLoginQrcodeStatus(parcel.readInt() != 0 ? QrCodeStatusParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserLoginConfirm(parcel.readInt() != 0 ? TerminalIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserLoginUserInfo(parcel.readInt() != 0 ? TerminalIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserLoginRefresh(parcel.readInt() != 0 ? RefreshTokenParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserLoginLogout(parcel.readInt() != 0 ? UserLogoutParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserRelationList(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserRelationAdd(parcel.readInt() != 0 ? PhoneParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserRelationDelete(parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserLoginSync(parcel.readInt() != 0 ? RefreshTokenParam1.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserAPPOwnerQrcode(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserHabitVehicleUpload(parcel.readInt() != 0 ? ProfileParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserHabitVehicleDownload(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserInfo(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserSettingsUpload(parcel.readInt() != 0 ? ProfileParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserSettingsDownload(parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserScopeInfo(parcel.readString(), parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserScopeConfirm(parcel.readInt() != 0 ? ScopeConfirmParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserPhone(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserMessageSend(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserMessageVerify(parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserApplicationList(parcel.readInt() != 0 ? VehicleModelParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    getUserApplicationAdd(parcel.readInt() != 0 ? ApkParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAgreementPrivacyRecords(parcel.readInt() != 0 ? RecordsParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAgreementResults(parcel.readInt() != 0 ? DocParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    getAgreementComparisonDetails(parcel.readInt() != 0 ? DocParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    getThirdAccount(parcel.readInt() != 0 ? ThirdAccountParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    getThirdBindAppList(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    getThirdBindStatus(parcel.readString(), parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    getTodayRadioUnboundAccount(parcel.readInt() != 0 ? ThirdTypeParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    getNeteaseBindQrcode(parcel.readInt() != 0 ? TokenParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    getNeteaseUnboundAccount(parcel.readInt() != 0 ? TokenParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    getKugouBindQrcode(parcel.readInt() != 0 ? ThirdTokenOpenIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    getKugouUnboundAccount(parcel.readInt() != 0 ? UserIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    getKugouBindAccountUpdate(parcel.readInt() != 0 ? ThirdTokenOpenIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    getHimaUnboundAccount(parcel.readInt() != 0 ? ThirdTypeParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    getThirdSwitchStatus(parcel.readInt() != 0 ? SwitchParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    getPrivacyRecords(parcel.readInt() != 0 ? PrivacyRecordsParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    getPrivacyHistory(parcel.readInt() != 0 ? PrivacyHistoryParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    getPrivacyDetail(parcel.readInt() != 0 ? PrivacyDetailParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    getDownloadUrl(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    postRegisterAdd(parcel.readInt() != 0 ? PostDeviceAddParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }

        private static class Proxy implements IUserCenter {
            public static IUserCenter sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserLoginQrcode(GetQrCodeParam getQrCodeParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (getQrCodeParam != null) {
                        parcelObtain.writeInt(1);
                        getQrCodeParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserLoginQrcode(getQrCodeParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserLoginQrcodeStatus(QrCodeStatusParam qrCodeStatusParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (qrCodeStatusParam != null) {
                        parcelObtain.writeInt(1);
                        qrCodeStatusParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserLoginQrcodeStatus(qrCodeStatusParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserLoginConfirm(TerminalIdParam terminalIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (terminalIdParam != null) {
                        parcelObtain.writeInt(1);
                        terminalIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserLoginConfirm(terminalIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserLoginUserInfo(TerminalIdParam terminalIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (terminalIdParam != null) {
                        parcelObtain.writeInt(1);
                        terminalIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserLoginUserInfo(terminalIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserLoginRefresh(RefreshTokenParam refreshTokenParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (refreshTokenParam != null) {
                        parcelObtain.writeInt(1);
                        refreshTokenParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserLoginRefresh(refreshTokenParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserLoginLogout(UserLogoutParam userLogoutParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (userLogoutParam != null) {
                        parcelObtain.writeInt(1);
                        userLogoutParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserLoginLogout(userLogoutParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserRelationList(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserRelationList(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserRelationAdd(PhoneParam phone, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (phone != null) {
                        parcelObtain.writeInt(1);
                        phone.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserRelationAdd(phone, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserRelationDelete(String userId, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(userId);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserRelationDelete(userId, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserLoginSync(RefreshTokenParam1 refreshToken, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (refreshToken != null) {
                        parcelObtain.writeInt(1);
                        refreshToken.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(10, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserLoginSync(refreshToken, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserAPPOwnerQrcode(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(11, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserAPPOwnerQrcode(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserHabitVehicleUpload(ProfileParam profileParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (profileParam != null) {
                        parcelObtain.writeInt(1);
                        profileParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(12, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserHabitVehicleUpload(profileParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserHabitVehicleDownload(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(13, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserHabitVehicleDownload(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserInfo(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(14, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserInfo(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserSettingsUpload(ProfileParam profileParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (profileParam != null) {
                        parcelObtain.writeInt(1);
                        profileParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(15, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserSettingsUpload(profileParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserSettingsDownload(String model, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(model);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(16, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserSettingsDownload(model, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserScopeInfo(String scope, String brandCode, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(scope);
                    parcelObtain.writeString(brandCode);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(17, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserScopeInfo(scope, brandCode, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserScopeConfirm(ScopeConfirmParam scopeConfirmParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (scopeConfirmParam != null) {
                        parcelObtain.writeInt(1);
                        scopeConfirmParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(18, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserScopeConfirm(scopeConfirmParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserPhone(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(19, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserPhone(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserMessageSend(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(20, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserMessageSend(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserMessageVerify(String verificationCode, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(verificationCode);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(21, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserMessageVerify(verificationCode, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserApplicationList(VehicleModelParam vehicleModel, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (vehicleModel != null) {
                        parcelObtain.writeInt(1);
                        vehicleModel.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(22, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserApplicationList(vehicleModel, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getUserApplicationAdd(ApkParam apkparam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (apkparam != null) {
                        parcelObtain.writeInt(1);
                        apkparam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(23, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getUserApplicationAdd(apkparam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getAgreementPrivacyRecords(RecordsParam recordsParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (recordsParam != null) {
                        parcelObtain.writeInt(1);
                        recordsParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(24, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAgreementPrivacyRecords(recordsParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getAgreementResults(DocParam docParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (docParam != null) {
                        parcelObtain.writeInt(1);
                        docParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(25, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAgreementResults(docParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getAgreementComparisonDetails(DocParam docParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (docParam != null) {
                        parcelObtain.writeInt(1);
                        docParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(26, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAgreementComparisonDetails(docParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getThirdAccount(ThirdAccountParam thirdAccountParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (thirdAccountParam != null) {
                        parcelObtain.writeInt(1);
                        thirdAccountParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(27, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getThirdAccount(thirdAccountParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getThirdBindAppList(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(28, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getThirdBindAppList(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getThirdBindStatus(String thirdType, String action, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(thirdType);
                    parcelObtain.writeString(action);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(29, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getThirdBindStatus(thirdType, action, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getTodayRadioUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (thirdTypeParam != null) {
                        parcelObtain.writeInt(1);
                        thirdTypeParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(30, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getTodayRadioUnboundAccount(thirdTypeParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getNeteaseBindQrcode(TokenParam tokenParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (tokenParam != null) {
                        parcelObtain.writeInt(1);
                        tokenParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(31, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getNeteaseBindQrcode(tokenParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getNeteaseUnboundAccount(TokenParam tokenParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (tokenParam != null) {
                        parcelObtain.writeInt(1);
                        tokenParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(32, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getNeteaseUnboundAccount(tokenParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getKugouBindQrcode(ThirdTokenOpenIdParam thirdTokenOpenIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (thirdTokenOpenIdParam != null) {
                        parcelObtain.writeInt(1);
                        thirdTokenOpenIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(33, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getKugouBindQrcode(thirdTokenOpenIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getKugouUnboundAccount(UserIdParam userIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (userIdParam != null) {
                        parcelObtain.writeInt(1);
                        userIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(34, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getKugouUnboundAccount(userIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getKugouBindAccountUpdate(ThirdTokenOpenIdParam thirdTokenOpenIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (thirdTokenOpenIdParam != null) {
                        parcelObtain.writeInt(1);
                        thirdTokenOpenIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(35, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getKugouBindAccountUpdate(thirdTokenOpenIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getHimaUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (thirdTypeParam != null) {
                        parcelObtain.writeInt(1);
                        thirdTypeParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(36, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getHimaUnboundAccount(thirdTypeParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getThirdSwitchStatus(SwitchParam switchParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (switchParam != null) {
                        parcelObtain.writeInt(1);
                        switchParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(37, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getThirdSwitchStatus(switchParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getPrivacyRecords(PrivacyRecordsParam privacyRecordsParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (privacyRecordsParam != null) {
                        parcelObtain.writeInt(1);
                        privacyRecordsParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(38, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getPrivacyRecords(privacyRecordsParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getPrivacyHistory(PrivacyHistoryParam privacyHistoryParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (privacyHistoryParam != null) {
                        parcelObtain.writeInt(1);
                        privacyHistoryParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(39, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getPrivacyHistory(privacyHistoryParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getPrivacyDetail(PrivacyDetailParam privacyDetailParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (privacyDetailParam != null) {
                        parcelObtain.writeInt(1);
                        privacyDetailParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(40, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getPrivacyDetail(privacyDetailParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void getDownloadUrl(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(41, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDownloadUrl(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.usercenter.IUserCenter
            public void postRegisterAdd(PostDeviceAddParam postDeviceAddParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (postDeviceAddParam != null) {
                        parcelObtain.writeInt(1);
                        postDeviceAddParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(42, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().postRegisterAdd(postDeviceAddParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IUserCenter impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IUserCenter getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
