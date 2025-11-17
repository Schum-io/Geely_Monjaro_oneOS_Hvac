package com.geely.lib.cloud.trilateral.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class TerminalIdParam implements Parcelable {
    public static final Creator<TerminalIdParam> CREATOR = new Creator<TerminalIdParam>() { // from class: com.geely.lib.cloud.trilateral.bean.TerminalIdParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TerminalIdParam createFromParcel(Parcel in) {
            return new TerminalIdParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public TerminalIdParam[] newArray(int size) {
            return new TerminalIdParam[size];
        }
    };
    private String model;
    private String terminalId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TerminalIdParam() {
    }

    public TerminalIdParam(String terminalId, String model) {
        this.terminalId = terminalId;
        this.model = model;
    }

    protected TerminalIdParam(Parcel in) {
        this.terminalId = in.readString();
        this.model = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.terminalId);
        dest.writeString(this.model);
    }

    public String getTerminalId() {
        return this.terminalId;
    }

    public void setTerminalId(String terminalId) {
        this.terminalId = terminalId;
    }

    public String getModel() {
        return this.model;
    }

    public void setModel(String model) {
        this.model = model;
    }
}
