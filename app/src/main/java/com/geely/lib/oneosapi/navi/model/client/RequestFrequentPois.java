package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class RequestFrequentPois extends NaviBaseModel implements Parcelable {
    public static final Creator<RequestFrequentPois> CREATOR = new Creator<RequestFrequentPois>() { // from class: com.geely.lib.oneosapi.navi.model.client.RequestFrequentPois.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequestFrequentPois createFromParcel(Parcel source) {
            return new RequestFrequentPois(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RequestFrequentPois[] newArray(int size) {
            return new RequestFrequentPois[size];
        }
    };
    private int maxCount;

    public RequestFrequentPois() {
        this.maxCount = 30;
        setProtocolID(NaviProtocolID.USER_FREQUENT_PLACES);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getMaxCount() {
        return this.maxCount;
    }

    public RequestFrequentPois setMaxCount(int maxCount) {
        this.maxCount = maxCount;
        return this;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RequestFrequentPois{");
        sb.append("maxCount=").append(this.maxCount);
        sb.append("; {base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.maxCount);
    }

    public RequestFrequentPois(Parcel in) {
        super(in);
        this.maxCount = 30;
        this.maxCount = in.readInt();
    }
}
