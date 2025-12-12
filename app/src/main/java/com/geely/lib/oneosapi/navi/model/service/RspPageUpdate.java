package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;

/* loaded from: classes.dex */
public class RspPageUpdate extends NaviBaseModel implements Parcelable {
    public static final Creator<RspPageUpdate> CREATOR = new Creator<RspPageUpdate>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspPageUpdate.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspPageUpdate createFromParcel(Parcel source) {
            return new RspPageUpdate(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspPageUpdate[] newArray(int size) {
            return new RspPageUpdate[size];
        }
    };
    private int pageUpdate;

    public RspPageUpdate() {
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getPageUpdate() {
        return this.pageUpdate;
    }

    public void setPageUpdate(int pageUpdate) {
        this.pageUpdate = pageUpdate;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspPageUpdate{");
        sb.append("pageUpdate=").append(this.pageUpdate);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.pageUpdate);
    }

    public RspPageUpdate(NaviBaseModel var1) {
        copyBaseInfo(var1);
    }

    public RspPageUpdate(Parcel in) {
        super(in);
        this.pageUpdate = in.readInt();
    }
}
