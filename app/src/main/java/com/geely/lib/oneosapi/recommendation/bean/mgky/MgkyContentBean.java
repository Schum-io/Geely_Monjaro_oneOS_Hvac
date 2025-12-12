package com.geely.lib.oneosapi.recommendation.bean.mgky;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class MgkyContentBean implements Parcelable {
    public static final Creator<MgkyContentBean> CREATOR = new Creator<MgkyContentBean>() { // from class: com.geely.lib.oneosapi.recommendation.bean.mgky.MgkyContentBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MgkyContentBean createFromParcel(Parcel in) {
            return new MgkyContentBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MgkyContentBean[] newArray(int size) {
            return new MgkyContentBean[size];
        }
    };
    private List<MgkyContentDataBean> jumpActionDetailVoList;
    private String type;

    public MgkyContentBean() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<MgkyContentDataBean> getJumpActionDetailVoList() {
        return this.jumpActionDetailVoList;
    }

    public String getType() {
        return this.type;
    }

    public void setJumpActionDetailVoList(List<MgkyContentDataBean> jumpActionDetailVoList) {
        this.jumpActionDetailVoList = jumpActionDetailVoList;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String toString() {
        return "MgkyContentBean{type='" + this.type + "', jumpActionDetailVoList=" + this.jumpActionDetailVoList + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.type);
        dest.writeTypedList(this.jumpActionDetailVoList);
    }

    public MgkyContentBean(Parcel in) {
        this.type = in.readString();
        this.jumpActionDetailVoList = in.createTypedArrayList(MgkyContentDataBean.CREATOR);
    }
}
