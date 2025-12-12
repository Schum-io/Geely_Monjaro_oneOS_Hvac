package com.geely.lib.oneosapi.user;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.user.IAuthorizeCallback;
import com.geely.lib.oneosapi.user.IAutoAccountInfo;
import com.geely.lib.oneosapi.user.IFeedbackListener;
import com.geely.lib.oneosapi.user.ILaunchLoginResultCallback;
import com.geely.lib.oneosapi.user.ILoginCallback;
import com.geely.lib.oneosapi.user.IScanQRCodeListener;
import com.geely.lib.oneosapi.user.IThirdAppAuthCallback;
import com.geely.lib.oneosapi.user.bean.AccountInfo;
import com.geely.lib.oneosapi.user.bean.SourceAccountInfo;
import com.geely.lib.oneosapi.user.bean.UserInfo;
import java.util.List;

/* loaded from: classes.dex */
public interface IUserService extends IInterface {

    public static class Default implements IUserService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean deleteHistoricalAccountInfo(String userId, boolean isClearData) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean fastLogin(UserInfo userInfo) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public String getAccessToken() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public AccountInfo getAccountInfo() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public String getCommonData(int type) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public String getCurrentUserProfile() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public String getEmergencyMobile() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public List<UserInfo> getHistoricalAccountInfo() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public void getLoginQrcode(String symbol, IScanQRCodeListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public UserInfo getLoginUser() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public String getPolicyContent(String docType, String docVersion) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public SourceAccountInfo getSourceAccountInfo() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public String getToken() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean getUserAuthorizationStatus(String brandCode, IAuthorizeCallback callback) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public String getUserProfileName() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean hasLogin() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean hideBackView() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean isAutoAccountAuthorized(IAuthorizeCallback callback) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean isBackShow() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean isThirdAppAuthorized(String brandCode, IThirdAppAuthCallback callback) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean launchLogin() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean launchLoginForResult(String packageName, int requestCode, ILaunchLoginResultCallback callback) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean launchLoginWithParam(String packageName, String appName, boolean isBack) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean launchToFeedbackContent(boolean isBack) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean launchToLogin(boolean isBack) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean launchToUserFeedback(boolean isBack) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public String login(String param) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean logout() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean notifyTokenExpired() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public String refreshToken() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public UserInfo refreshUserInfo() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public void restartRecognition() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean saveUserProfile(String userProfile) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public void sendAutoAccountInfo(IAutoAccountInfo iAutoAccountInfo) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public void setCommonData(String data, int type) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean setCurrentUserProfile(String currentProfile) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public void setEmergencyMobile(String mobile) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean setLoginCallback(ILoginCallback callback) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean showBackView() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public void startRecognition() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public void submitFeedback(IFeedbackListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.user.IUserService
        public boolean unregisterLoginCallback(ILoginCallback callback) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IUserService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.user.IUserService";
        public static final int TRANSACTION_deleteHistoricalAccountInfo = 42;
        public static final int TRANSACTION_fastLogin = 19;
        public static final int TRANSACTION_getAccessToken = 2;
        public static final int TRANSACTION_getAccountInfo = 32;
        public static final int TRANSACTION_getCommonData = 39;
        public static final int TRANSACTION_getCurrentUserProfile = 28;
        public static final int TRANSACTION_getEmergencyMobile = 12;
        public static final int TRANSACTION_getHistoricalAccountInfo = 17;
        public static final int TRANSACTION_getLoginQrcode = 24;
        public static final int TRANSACTION_getLoginUser = 5;
        public static final int TRANSACTION_getPolicyContent = 23;
        public static final int TRANSACTION_getSourceAccountInfo = 22;
        public static final int TRANSACTION_getToken = 10;
        public static final int TRANSACTION_getUserAuthorizationStatus = 41;
        public static final int TRANSACTION_getUserProfileName = 29;
        public static final int TRANSACTION_hasLogin = 1;
        public static final int TRANSACTION_hideBackView = 27;
        public static final int TRANSACTION_isAutoAccountAuthorized = 21;
        public static final int TRANSACTION_isBackShow = 25;
        public static final int TRANSACTION_isThirdAppAuthorized = 33;
        public static final int TRANSACTION_launchLogin = 3;
        public static final int TRANSACTION_launchLoginForResult = 40;
        public static final int TRANSACTION_launchLoginWithParam = 4;
        public static final int TRANSACTION_launchToFeedbackContent = 34;
        public static final int TRANSACTION_launchToLogin = 14;
        public static final int TRANSACTION_launchToUserFeedback = 18;
        public static final int TRANSACTION_login = 8;
        public static final int TRANSACTION_logout = 9;
        public static final int TRANSACTION_notifyTokenExpired = 7;
        public static final int TRANSACTION_refreshToken = 11;
        public static final int TRANSACTION_refreshUserInfo = 16;
        public static final int TRANSACTION_restartRecognition = 36;
        public static final int TRANSACTION_saveUserProfile = 31;
        public static final int TRANSACTION_sendAutoAccountInfo = 20;
        public static final int TRANSACTION_setCommonData = 38;
        public static final int TRANSACTION_setCurrentUserProfile = 30;
        public static final int TRANSACTION_setEmergencyMobile = 13;
        public static final int TRANSACTION_setLoginCallback = 6;
        public static final int TRANSACTION_showBackView = 26;
        public static final int TRANSACTION_startRecognition = 35;
        public static final int TRANSACTION_submitFeedback = 37;
        public static final int TRANSACTION_unregisterLoginCallback = 15;

        public static class Proxy implements IUserService {
            public static IUserService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean deleteHistoricalAccountInfo(String str, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(42, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().deleteHistoricalAccountInfo(str, z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean fastLogin(UserInfo userInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    boolean z = true;
                    if (userInfo != null) {
                        parcelObtain.writeInt(1);
                        userInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().fastLogin(userInfo);
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() == 0) {
                        z = false;
                    }
                    if (parcelObtain2.readInt() != 0) {
                        userInfo.readFromParcel(parcelObtain2);
                    }
                    return z;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public String getAccessToken() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAccessToken();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public AccountInfo getAccountInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAccountInfo();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? AccountInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public String getCommonData(int type) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(type);
                    if (!this.mRemote.transact(39, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCommonData(type);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public String getCurrentUserProfile() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(28, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentUserProfile();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public String getEmergencyMobile() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getEmergencyMobile();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public List<UserInfo> getHistoricalAccountInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getHistoricalAccountInfo();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(UserInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public void getLoginQrcode(String symbol, IScanQRCodeListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(symbol);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getLoginQrcode(symbol, listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public UserInfo getLoginUser() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLoginUser();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? UserInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public String getPolicyContent(String docType, String docVersion) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(docType);
                    parcelObtain.writeString(docVersion);
                    if (!this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPolicyContent(docType, docVersion);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public SourceAccountInfo getSourceAccountInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSourceAccountInfo();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? SourceAccountInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public String getToken() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getToken();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean getUserAuthorizationStatus(String brandCode, IAuthorizeCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(brandCode);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(41, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUserAuthorizationStatus(brandCode, callback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public String getUserProfileName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUserProfileName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean hasLogin() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().hasLogin();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean hideBackView() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().hideBackView();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean isAutoAccountAuthorized(IAuthorizeCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isAutoAccountAuthorized(callback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean isBackShow() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isBackShow();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean isThirdAppAuthorized(String brandCode, IThirdAppAuthCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(brandCode);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(33, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isThirdAppAuthorized(brandCode, callback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean launchLogin() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().launchLogin();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean launchLoginForResult(String packageName, int requestCode, ILaunchLoginResultCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    parcelObtain.writeInt(requestCode);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(40, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().launchLoginForResult(packageName, requestCode, callback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean launchLoginWithParam(String str, String str2, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().launchLoginWithParam(str, str2, z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean launchToFeedbackContent(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(34, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().launchToFeedbackContent(z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean launchToLogin(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().launchToLogin(z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean launchToUserFeedback(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().launchToUserFeedback(z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public String login(String param) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(param);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().login(param);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean logout() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().logout();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean notifyTokenExpired() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().notifyTokenExpired();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public String refreshToken() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().refreshToken();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public UserInfo refreshUserInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().refreshUserInfo();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? UserInfo.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public void restartRecognition() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().restartRecognition();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean saveUserProfile(String userProfile) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(userProfile);
                    if (!this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().saveUserProfile(userProfile);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public void sendAutoAccountInfo(IAutoAccountInfo iAutoAccountInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iAutoAccountInfo != null ? iAutoAccountInfo.asBinder() : null);
                    if (this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().sendAutoAccountInfo(iAutoAccountInfo);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public void setCommonData(String data, int type) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(data);
                    parcelObtain.writeInt(type);
                    if (this.mRemote.transact(38, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setCommonData(data, type);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean setCurrentUserProfile(String currentProfile) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(currentProfile);
                    if (!this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setCurrentUserProfile(currentProfile);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public void setEmergencyMobile(String mobile) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(mobile);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setEmergencyMobile(mobile);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean setLoginCallback(ILoginCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setLoginCallback(callback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean showBackView() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().showBackView();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public void startRecognition() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().startRecognition();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public void submitFeedback(IFeedbackListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(37, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().submitFeedback(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserService
            public boolean unregisterLoginCallback(ILoginCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().unregisterLoginCallback(callback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IUserService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IUserService)) ? new Proxy(obj) : (IUserService) iInterfaceQueryLocalInterface;
        }

        public static IUserService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IUserService impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
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
                    boolean zHasLogin = hasLogin();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHasLogin ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String accessToken = getAccessToken();
                    parcel2.writeNoException();
                    parcel2.writeString(accessToken);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLaunchLogin = launchLogin();
                    parcel2.writeNoException();
                    parcel2.writeInt(zLaunchLogin ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLaunchLoginWithParam = launchLoginWithParam(parcel.readString(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zLaunchLoginWithParam ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    UserInfo loginUser = getLoginUser();
                    parcel2.writeNoException();
                    if (loginUser != null) {
                        parcel2.writeInt(1);
                        loginUser.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean loginCallback = setLoginCallback(ILoginCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(loginCallback ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNotifyTokenExpired = notifyTokenExpired();
                    parcel2.writeNoException();
                    parcel2.writeInt(zNotifyTokenExpired ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strLogin = login(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strLogin);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLogout = logout();
                    parcel2.writeNoException();
                    parcel2.writeInt(zLogout ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    String token = getToken();
                    parcel2.writeNoException();
                    parcel2.writeString(token);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strRefreshToken = refreshToken();
                    parcel2.writeNoException();
                    parcel2.writeString(strRefreshToken);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    String emergencyMobile = getEmergencyMobile();
                    parcel2.writeNoException();
                    parcel2.writeString(emergencyMobile);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    setEmergencyMobile(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLaunchToLogin = launchToLogin(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zLaunchToLogin ? 1 : 0);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUnregisterLoginCallback = unregisterLoginCallback(ILoginCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zUnregisterLoginCallback ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    UserInfo userInfoRefreshUserInfo = refreshUserInfo();
                    parcel2.writeNoException();
                    if (userInfoRefreshUserInfo != null) {
                        parcel2.writeInt(1);
                        userInfoRefreshUserInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<UserInfo> historicalAccountInfo = getHistoricalAccountInfo();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(historicalAccountInfo);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLaunchToUserFeedback = launchToUserFeedback(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zLaunchToUserFeedback ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    UserInfo userInfoCreateFromParcel = parcel.readInt() != 0 ? UserInfo.CREATOR.createFromParcel(parcel) : null;
                    boolean zFastLogin = fastLogin(userInfoCreateFromParcel);
                    parcel2.writeNoException();
                    parcel2.writeInt(zFastLogin ? 1 : 0);
                    if (userInfoCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        userInfoCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    sendAutoAccountInfo(IAutoAccountInfo.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsAutoAccountAuthorized = isAutoAccountAuthorized(IAuthorizeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsAutoAccountAuthorized ? 1 : 0);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    SourceAccountInfo sourceAccountInfo = getSourceAccountInfo();
                    parcel2.writeNoException();
                    if (sourceAccountInfo != null) {
                        parcel2.writeInt(1);
                        sourceAccountInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    String policyContent = getPolicyContent(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(policyContent);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    getLoginQrcode(parcel.readString(), IScanQRCodeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsBackShow = isBackShow();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsBackShow ? 1 : 0);
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zShowBackView = showBackView();
                    parcel2.writeNoException();
                    parcel2.writeInt(zShowBackView ? 1 : 0);
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zHideBackView = hideBackView();
                    parcel2.writeNoException();
                    parcel2.writeInt(zHideBackView ? 1 : 0);
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    String currentUserProfile = getCurrentUserProfile();
                    parcel2.writeNoException();
                    parcel2.writeString(currentUserProfile);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    String userProfileName = getUserProfileName();
                    parcel2.writeNoException();
                    parcel2.writeString(userProfileName);
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean currentUserProfile2 = setCurrentUserProfile(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(currentUserProfile2 ? 1 : 0);
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSaveUserProfile = saveUserProfile(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSaveUserProfile ? 1 : 0);
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    AccountInfo accountInfo = getAccountInfo();
                    parcel2.writeNoException();
                    if (accountInfo != null) {
                        parcel2.writeInt(1);
                        accountInfo.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsThirdAppAuthorized = isThirdAppAuthorized(parcel.readString(), IThirdAppAuthCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsThirdAppAuthorized ? 1 : 0);
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLaunchToFeedbackContent = launchToFeedbackContent(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zLaunchToFeedbackContent ? 1 : 0);
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    startRecognition();
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    restartRecognition();
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    submitFeedback(IFeedbackListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCommonData(parcel.readString(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    String commonData = getCommonData(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(commonData);
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zLaunchLoginForResult = launchLoginForResult(parcel.readString(), parcel.readInt(), ILaunchLoginResultCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zLaunchLoginForResult ? 1 : 0);
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean userAuthorizationStatus = getUserAuthorizationStatus(parcel.readString(), IAuthorizeCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(userAuthorizationStatus ? 1 : 0);
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zDeleteHistoricalAccountInfo = deleteHistoricalAccountInfo(parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zDeleteHistoricalAccountInfo ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean deleteHistoricalAccountInfo(String userId, boolean isClearData) throws RemoteException;

    boolean fastLogin(UserInfo userInfo) throws RemoteException;

    String getAccessToken() throws RemoteException;

    AccountInfo getAccountInfo() throws RemoteException;

    String getCommonData(int type) throws RemoteException;

    String getCurrentUserProfile() throws RemoteException;

    String getEmergencyMobile() throws RemoteException;

    List<UserInfo> getHistoricalAccountInfo() throws RemoteException;

    void getLoginQrcode(String symbol, IScanQRCodeListener listener) throws RemoteException;

    UserInfo getLoginUser() throws RemoteException;

    String getPolicyContent(String docType, String docVersion) throws RemoteException;

    SourceAccountInfo getSourceAccountInfo() throws RemoteException;

    String getToken() throws RemoteException;

    boolean getUserAuthorizationStatus(String brandCode, IAuthorizeCallback callback) throws RemoteException;

    String getUserProfileName() throws RemoteException;

    boolean hasLogin() throws RemoteException;

    boolean hideBackView() throws RemoteException;

    boolean isAutoAccountAuthorized(IAuthorizeCallback callback) throws RemoteException;

    boolean isBackShow() throws RemoteException;

    boolean isThirdAppAuthorized(String brandCode, IThirdAppAuthCallback callback) throws RemoteException;

    boolean launchLogin() throws RemoteException;

    boolean launchLoginForResult(String packageName, int requestCode, ILaunchLoginResultCallback callback) throws RemoteException;

    boolean launchLoginWithParam(String packageName, String appName, boolean isBack) throws RemoteException;

    boolean launchToFeedbackContent(boolean isBack) throws RemoteException;

    boolean launchToLogin(boolean isBack) throws RemoteException;

    boolean launchToUserFeedback(boolean isBack) throws RemoteException;

    String login(String param) throws RemoteException;

    boolean logout() throws RemoteException;

    boolean notifyTokenExpired() throws RemoteException;

    String refreshToken() throws RemoteException;

    UserInfo refreshUserInfo() throws RemoteException;

    void restartRecognition() throws RemoteException;

    boolean saveUserProfile(String userProfile) throws RemoteException;

    void sendAutoAccountInfo(IAutoAccountInfo iAutoAccountInfo) throws RemoteException;

    void setCommonData(String data, int type) throws RemoteException;

    boolean setCurrentUserProfile(String currentProfile) throws RemoteException;

    void setEmergencyMobile(String mobile) throws RemoteException;

    boolean setLoginCallback(ILoginCallback callback) throws RemoteException;

    boolean showBackView() throws RemoteException;

    void startRecognition() throws RemoteException;

    void submitFeedback(IFeedbackListener listener) throws RemoteException;

    boolean unregisterLoginCallback(ILoginCallback callback) throws RemoteException;
}
