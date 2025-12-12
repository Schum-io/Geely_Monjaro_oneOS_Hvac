package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class QrCodeStatusParam implements Parcelable {
    public static final Creator<QrCodeStatusParam> CREATOR = new Creator<QrCodeStatusParam>() { // from class: com.geely.lib.cloud.usercenter.bean.QrCodeStatusParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QrCodeStatusParam createFromParcel(Parcel in) {
            return new QrCodeStatusParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public QrCodeStatusParam[] newArray(int size) {
            return new QrCodeStatusParam[size];
        }
    };
    private String qrCodeUuid;
    private String terminalId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public QrCodeStatusParam() {
    }

    public QrCodeStatusParam(String terminalId, String qrCodeUuid) {
        this.terminalId = terminalId;
        this.qrCodeUuid = qrCodeUuid;
    }

    protected QrCodeStatusParam(Parcel in) {
        this.terminalId = in.readString();
        this.qrCodeUuid = in.readString();
    }

    public String getTerminalId() {
        return this.terminalId;
    }

    public void setTerminalId(String terminalId) {
        this.terminalId = terminalId;
    }

    public String getQrCodeUuid() {
        return this.qrCodeUuid;
    }

    public void setQrCodeUuid(String qrCodeUuid) {
        this.qrCodeUuid = qrCodeUuid;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.terminalId);
        dest.writeString(this.qrCodeUuid);
    }
}
