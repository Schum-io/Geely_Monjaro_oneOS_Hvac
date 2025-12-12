package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ThirdAccountParam implements Parcelable {
    public static final Creator<ThirdAccountParam> CREATOR = new Creator<ThirdAccountParam>() { // from class: com.geely.lib.cloud.usercenter.bean.ThirdAccountParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ThirdAccountParam createFromParcel(Parcel in) {
            return new ThirdAccountParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ThirdAccountParam[] newArray(int size) {
            return new ThirdAccountParam[size];
        }
    };
    private String action;
    private String thirdInfo;
    private String thirdOpenId;
    private String thirdType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ThirdAccountParam() {
    }

    public ThirdAccountParam(String thirdType, String thirdOpenId, String action, String thirdInfo) {
        this.thirdType = thirdType;
        this.thirdOpenId = thirdOpenId;
        this.action = action;
        this.thirdInfo = thirdInfo;
    }

    protected ThirdAccountParam(Parcel in) {
        this.thirdType = in.readString();
        this.thirdOpenId = in.readString();
        this.action = in.readString();
        this.thirdInfo = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.thirdType);
        dest.writeString(this.thirdOpenId);
        dest.writeString(this.action);
        dest.writeString(this.thirdInfo);
    }

    public String getThirdType() {
        return this.thirdType;
    }

    public void setThirdType(String thirdType) {
        this.thirdType = thirdType;
    }

    public String getThirdOpenId() {
        return this.thirdOpenId;
    }

    public void setThirdOpenId(String thirdOpenId) {
        this.thirdOpenId = thirdOpenId;
    }

    public String getAction() {
        return this.action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getThirdInfo() {
        return this.thirdInfo;
    }

    public void setThirdInfo(String thirdInfo) {
        this.thirdInfo = thirdInfo;
    }
}
