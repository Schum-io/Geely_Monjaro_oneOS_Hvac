package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class UserLogoutModel extends NaviBaseModel implements Parcelable {
    public static final Creator<UserLogoutModel> CREATOR = new Creator<UserLogoutModel>() { // from class: com.geely.lib.oneosapi.navi.model.client.UserLogoutModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserLogoutModel createFromParcel(Parcel in) {
            return new UserLogoutModel(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UserLogoutModel[] newArray(int size) {
            return new UserLogoutModel[size];
        }
    };
    private String logoutUserId;
    private String logoutUserPhone;
    private String sourceApp;
    private String sourceAppName;

    public UserLogoutModel() {
        setProtocolID(NaviProtocolID.USER_LOGOUT_USER_FROM_AMAP);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getLogoutUserId() {
        return this.logoutUserId;
    }

    public String getLogoutUserPhone() {
        return this.logoutUserPhone;
    }

    public String getSourceApp() {
        return this.sourceApp;
    }

    public String getSourceAppName() {
        return this.sourceAppName;
    }

    public void setLogoutUserId(String logoutUserId) {
        this.logoutUserId = logoutUserId;
    }

    public void setLogoutUserPhone(String logoutUserPhone) {
        this.logoutUserPhone = logoutUserPhone;
    }

    public void setSourceApp(String sourceApp) {
        this.sourceApp = sourceApp;
    }

    public void setSourceAppName(String sourceAppName) {
        this.sourceAppName = sourceAppName;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.sourceApp);
        dest.writeString(this.sourceAppName);
        dest.writeString(this.logoutUserId);
        dest.writeString(this.logoutUserPhone);
    }

    public UserLogoutModel(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
        setProtocolID(NaviProtocolID.USER_LOGOUT_USER_FROM_AMAP);
    }

    public UserLogoutModel(Parcel in) {
        super(in);
        this.sourceApp = in.readString();
        this.logoutUserPhone = in.readString();
        this.logoutUserId = in.readString();
        this.logoutUserPhone = in.readString();
    }
}
