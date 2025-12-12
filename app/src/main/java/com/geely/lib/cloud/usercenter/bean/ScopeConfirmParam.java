package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ScopeConfirmParam implements Parcelable {
    public static final Creator<ScopeConfirmParam> CREATOR = new Creator<ScopeConfirmParam>() { // from class: com.geely.lib.cloud.usercenter.bean.ScopeConfirmParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScopeConfirmParam createFromParcel(Parcel in) {
            return new ScopeConfirmParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ScopeConfirmParam[] newArray(int size) {
            return new ScopeConfirmParam[size];
        }
    };
    private String appName;
    private String result;
    private String scope;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public ScopeConfirmParam() {
    }

    public ScopeConfirmParam(String scope, String appName, String result) {
        this.scope = scope;
        this.appName = appName;
        this.result = result;
    }

    protected ScopeConfirmParam(Parcel in) {
        this.scope = in.readString();
        this.appName = in.readString();
        this.result = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.scope);
        dest.writeString(this.appName);
        dest.writeString(this.result);
    }

    public String getScope() {
        return this.scope;
    }

    public void setScope(String scope) {
        this.scope = scope;
    }

    public String getAppName() {
        return this.appName;
    }

    public void setAppName(String appName) {
        this.appName = appName;
    }

    public String getResult() {
        return this.result;
    }

    public void setResult(String result) {
        this.result = result;
    }
}
