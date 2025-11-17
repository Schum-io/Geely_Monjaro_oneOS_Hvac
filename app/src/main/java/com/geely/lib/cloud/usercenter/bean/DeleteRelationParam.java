package com.geely.lib.cloud.usercenter.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class DeleteRelationParam implements Parcelable {
    public static final Creator<DeleteRelationParam> CREATOR = new Creator<DeleteRelationParam>() { // from class: com.geely.lib.cloud.usercenter.bean.DeleteRelationParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeleteRelationParam createFromParcel(Parcel in) {
            return new DeleteRelationParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeleteRelationParam[] newArray(int size) {
            return new DeleteRelationParam[size];
        }
    };
    private String userId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected DeleteRelationParam(Parcel in) {
        this.userId = in.readString();
    }

    public DeleteRelationParam(String userId) {
        this.userId = userId;
    }

    public String getUserId() {
        return this.userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.userId);
    }
}
