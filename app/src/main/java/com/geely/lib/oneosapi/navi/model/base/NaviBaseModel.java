package com.geely.lib.oneosapi.navi.model.base;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import java.util.Random;

/* loaded from: classes.dex */
public class NaviBaseModel implements Parcelable, Cloneable {
    public static final Creator<NaviBaseModel> CREATOR = new Creator<NaviBaseModel>() { // from class: com.geely.lib.oneosapi.navi.model.base.NaviBaseModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviBaseModel createFromParcel(Parcel source) {
            return new NaviBaseModel(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public NaviBaseModel[] newArray(int size) {
            return new NaviBaseModel[size];
        }
    };
    private int callbackId;
    private Bundle extraData;
    private int mapVendor;
    private String packageName;
    private int protocolID;
    private int protocolVersion;

    public NaviBaseModel() {
        this.protocolID = 0;
        this.callbackId = 0;
        this.protocolVersion = 1;
        this.mapVendor = -1;
        this.packageName = "";
        this.extraData = new Bundle();
    }

    public void copyBaseInfo(NaviBaseModel otherModel) {
        if (otherModel != null) {
            setPackageName(otherModel.getPackageName());
            setProtocolID(otherModel.getProtocolID());
            setCallbackId(otherModel.getCallbackId());
            setMapVendor(otherModel.getMapVendor());
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int genRandomId() {
        int i = this.protocolID * 31;
        String str = this.packageName;
        return ((i + (str != null ? str.hashCode() : 0)) * 31) + new Random(SystemClock.elapsedRealtimeNanos()).nextInt();
    }

    public int getCallbackId() {
        return this.callbackId;
    }

    public Bundle getExtraData() {
        return this.extraData;
    }

    public int getMapVendor() {
        return this.mapVendor;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public int getProtocolID() {
        return this.protocolID;
    }

    public int getProtocolVersion() {
        return this.protocolVersion;
    }

    public void readFromParcel(Parcel in) {
        this.protocolID = in.readInt();
        this.callbackId = in.readInt();
        this.protocolVersion = in.readInt();
        this.packageName = in.readString();
        this.extraData = in.readBundle();
        this.mapVendor = in.readInt();
    }

    public void setCallbackId(int id) {
        this.callbackId = id;
    }

    public void setExtraData(Bundle extraData) {
        this.extraData = extraData;
    }

    public void setMapVendor(int mapVendor) {
        this.mapVendor = mapVendor;
    }

    public void setPackageName(String pkg) {
        this.packageName = pkg;
    }

    public void setProtocolID(int protocolID) {
        this.protocolID = protocolID;
    }

    public void setProtocolVersion(int version) {
        this.protocolVersion = version;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("NaviBaseModel{");
        sb.append("protocolID=").append(this.protocolID);
        sb.append(", callbackId=").append(this.callbackId);
        sb.append(", protocolVersion='").append(this.protocolVersion).append('\'');
        sb.append(", packageName='").append(this.packageName).append('\'');
        sb.append(", mapVendor='").append(this.mapVendor).append('\'');
        sb.append(", extraData=").append(this.extraData);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.protocolID);
        dest.writeInt(this.callbackId);
        dest.writeInt(this.protocolVersion);
        dest.writeString(this.packageName);
        dest.writeBundle(this.extraData);
        dest.writeInt(this.mapVendor);
    }

    @Override
    public NaviBaseModel clone() {
        try {
            NaviBaseModel naviBaseModel = (NaviBaseModel) super.clone();
            Bundle bundle = this.extraData;
            if (bundle == null) {
                return naviBaseModel;
            }
            naviBaseModel.extraData = (Bundle) bundle.clone();
            return naviBaseModel;
        } catch (CloneNotSupportedException unused) {
            return new NaviBaseModel();
        }
    }

    public NaviBaseModel(Parcel in) {
        this.protocolID = 0;
        this.callbackId = 0;
        this.protocolVersion = 1;
        this.mapVendor = -1;
        this.packageName = "";
        this.extraData = new Bundle();
        this.protocolID = in.readInt();
        this.callbackId = in.readInt();
        this.protocolVersion = in.readInt();
        this.packageName = in.readString();
        this.extraData = in.readBundle();
        this.mapVendor = in.readInt();
    }
}
