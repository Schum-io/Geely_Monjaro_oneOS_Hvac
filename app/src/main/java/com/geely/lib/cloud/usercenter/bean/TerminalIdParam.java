package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class TerminalIdParam implements Parcelable {
    public static final Creator<TerminalIdParam> CREATOR = new Creator<TerminalIdParam>() { // from class: com.geely.lib.cloud.usercenter.bean.TerminalIdParam.1
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
    private String terminalId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public TerminalIdParam(String terminalId) {
        this.terminalId = terminalId;
    }

    public TerminalIdParam() {
    }

    protected TerminalIdParam(Parcel in) {
        this.terminalId = in.readString();
    }

    public String getTerminalId() {
        return this.terminalId;
    }

    public void setTerminalId(String terminalId) {
        this.terminalId = terminalId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.terminalId);
    }
}
