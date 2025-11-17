package com.geely.lib.cloud.furniture.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class JDInfoParam implements Parcelable {
    public static final Creator<JDInfoParam> CREATOR = new Creator<JDInfoParam>() { // from class: com.geely.lib.cloud.furniture.bean.JDInfoParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JDInfoParam createFromParcel(Parcel in) {
            return new JDInfoParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JDInfoParam[] newArray(int size) {
            return new JDInfoParam[size];
        }
    };
    private String terminalId;
    private String userQrcode;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public JDInfoParam() {
    }

    public JDInfoParam(String terminalId, String userQrcode) {
        this.terminalId = terminalId;
        this.userQrcode = userQrcode;
    }

    protected JDInfoParam(Parcel in) {
        this.terminalId = in.readString();
        this.userQrcode = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.terminalId);
        dest.writeString(this.userQrcode);
    }

    public String getTerminalId() {
        return this.terminalId;
    }

    public void setTerminalId(String terminalId) {
        this.terminalId = terminalId;
    }

    public String getUserQrcode() {
        return this.userQrcode;
    }

    public void setUserQrcode(String userQrcode) {
        this.userQrcode = userQrcode;
    }
}
