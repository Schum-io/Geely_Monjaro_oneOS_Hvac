package com.geely.lib.oneosapi.recommendation.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class JumpActionBean implements Parcelable {
    public static final Creator<JumpActionBean> CREATOR = new Creator<JumpActionBean>() { // from class: com.geely.lib.oneosapi.recommendation.bean.JumpActionBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JumpActionBean createFromParcel(Parcel in) {
            return new JumpActionBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public JumpActionBean[] newArray(int size) {
            return new JumpActionBean[size];
        }
    };
    private List<JumpActionContentBean> jumpActionDetailVoList;
    private String type;

    public JumpActionBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<JumpActionContentBean> getJumpActionDetailVoList() {
        return this.jumpActionDetailVoList;
    }

    public String getType() {
        return this.type;
    }

    public void setJumpActionDetailVoList(List<JumpActionContentBean> jumpActionDetailVoList) {
        this.jumpActionDetailVoList = jumpActionDetailVoList;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String toString() {
        return "JumpActionBean{type='" + this.type + "', jumpActionDetailVoList=" + this.jumpActionDetailVoList + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.type);
        dest.writeTypedList(this.jumpActionDetailVoList);
    }

    public JumpActionBean(Parcel in) {
        this.type = in.readString();
        this.jumpActionDetailVoList = in.createTypedArrayList(JumpActionContentBean.CREATOR);
    }
}
