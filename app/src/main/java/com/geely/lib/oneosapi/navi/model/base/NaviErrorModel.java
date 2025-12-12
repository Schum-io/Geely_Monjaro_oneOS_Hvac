package com.geely.lib.oneosapi.navi.model.base;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class NaviErrorModel extends NaviBaseModel implements Parcelable {
    public static final Creator<NaviErrorModel> CREATOR = new Creator<NaviErrorModel>() { // from class: com.geely.lib.oneosapi.navi.model.base.NaviErrorModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviErrorModel createFromParcel(Parcel source) {
            return new NaviErrorModel(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviErrorModel[] newArray(int size) {
            return new NaviErrorModel[size];
        }
    };
    private int errorCode;
    private String errorString;
    private int orgErrorCode;
    private String orgErrorString;

    public NaviErrorModel(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public String getErrorString() {
        return this.errorString;
    }

    public int getOrgErrorCode() {
        return this.orgErrorCode;
    }

    public String getOrgErrorString() {
        return this.orgErrorString;
    }

    public void setErrorCode(int errorCode) {
        this.errorCode = errorCode;
        this.errorString = NaviResultCode.getErrorMsg(errorCode);
    }

    public void setErrorString(String errorString) {
        this.errorString = errorString;
    }

    public void setOrgErrorCode(int orgErrorCode) {
        this.orgErrorCode = orgErrorCode;
    }

    public void setOrgErrorString(String orgErrorString) {
        this.orgErrorString = orgErrorString;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("NaviErrorModel{");
        sb.append("errorCode=").append(this.errorCode);
        sb.append(", errorString='").append(this.errorString).append('\'');
        sb.append(", orgErrorCode=").append(this.orgErrorCode);
        sb.append(", orgErrorString='").append(this.orgErrorString).append('\'');
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.errorCode);
        dest.writeString(this.errorString);
        dest.writeInt(this.orgErrorCode);
        dest.writeString(this.orgErrorString);
    }

    public NaviErrorModel(Parcel in) {
        super(in);
        this.errorCode = in.readInt();
        this.errorString = in.readString();
        this.orgErrorCode = in.readInt();
        this.orgErrorString = in.readString();
    }
}
