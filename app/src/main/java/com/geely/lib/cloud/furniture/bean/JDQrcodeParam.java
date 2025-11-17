package com.geely.lib.cloud.furniture.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class JDQrcodeParam implements Parcelable {
    public static final Creator<JDQrcodeParam> CREATOR = new Creator<JDQrcodeParam>() { // from class: com.geely.lib.cloud.furniture.bean.JDQrcodeParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JDQrcodeParam createFromParcel(Parcel in) {
            return new JDQrcodeParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JDQrcodeParam[] newArray(int size) {
            return new JDQrcodeParam[size];
        }
    };
    private String clientIp;
    private String terminalId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public JDQrcodeParam() {
    }

    public JDQrcodeParam(String terminalId, String clientIp) {
        this.terminalId = terminalId;
        this.clientIp = clientIp;
    }

    protected JDQrcodeParam(Parcel in) {
        this.terminalId = in.readString();
        this.clientIp = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.terminalId);
        dest.writeString(this.clientIp);
    }

    public String getTerminalId() {
        return this.terminalId;
    }

    public void setTerminalId(String terminalId) {
        this.terminalId = terminalId;
    }

    public String getClientIp() {
        return this.clientIp;
    }

    public void setClientIp(String clientIp) {
        this.clientIp = clientIp;
    }
}
