package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PrivacyHistoryParam implements Parcelable {
    public static final Creator<PrivacyHistoryParam> CREATOR = new Creator<PrivacyHistoryParam>() { // from class: com.geely.lib.cloud.usercenter.bean.PrivacyHistoryParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivacyHistoryParam createFromParcel(Parcel in) {
            return new PrivacyHistoryParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PrivacyHistoryParam[] newArray(int size) {
            return new PrivacyHistoryParam[size];
        }
    };
    private String docType;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PrivacyHistoryParam() {
    }

    public PrivacyHistoryParam(String docType) {
        this.docType = docType;
    }

    public String getDocType() {
        return this.docType;
    }

    public void setDocType(String docType) {
        this.docType = docType;
    }

    protected PrivacyHistoryParam(Parcel in) {
        this.docType = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.docType);
    }
}
