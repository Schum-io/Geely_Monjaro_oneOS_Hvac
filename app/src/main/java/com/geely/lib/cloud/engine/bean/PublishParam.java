package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class PublishParam implements Parcelable {
    public static final Creator<PublishParam> CREATOR = new Creator<PublishParam>() { // from class: com.geely.lib.cloud.engine.bean.PublishParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PublishParam createFromParcel(Parcel in) {
            return new PublishParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public PublishParam[] newArray(int size) {
            return new PublishParam[size];
        }
    };
    private String code;
    private int labelId;
    private String remark;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public PublishParam() {
    }

    protected PublishParam(Parcel in) {
        this.code = in.readString();
        this.labelId = in.readInt();
        this.remark = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.code);
        dest.writeInt(this.labelId);
        dest.writeString(this.remark);
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public int getLabelId() {
        return this.labelId;
    }

    public void setLabelId(int labelId) {
        this.labelId = labelId;
    }

    public String getRemark() {
        return this.remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
