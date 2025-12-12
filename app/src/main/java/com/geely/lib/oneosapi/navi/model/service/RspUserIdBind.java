package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;

/* loaded from: classes.dex */
public class RspUserIdBind extends NaviBaseModel implements Parcelable {
    public static final Creator<RspUserIdBind> CREATOR = new Creator<RspUserIdBind>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspUserIdBind.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspUserIdBind createFromParcel(Parcel source) {
            return new RspUserIdBind(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspUserIdBind[] newArray(int size) {
            return new RspUserIdBind[size];
        }
    };
    private String autoUserAvatar;
    private String autoUserId;
    private String autoUserName;
    private int bindingSuccess;

    public RspUserIdBind() {
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getAutoUserAvatar() {
        return this.autoUserAvatar;
    }

    public String getAutoUserId() {
        return this.autoUserId;
    }

    public String getAutoUserName() {
        return this.autoUserName;
    }

    public int isBindingSuccess() {
        return this.bindingSuccess;
    }

    public void setAutoUserAvatar(String autoUserAvatar) {
        this.autoUserAvatar = autoUserAvatar;
    }

    public void setAutoUserId(String autoUserId) {
        this.autoUserId = autoUserId;
    }

    public void setAutoUserName(String autoUserName) {
        this.autoUserName = autoUserName;
    }

    public void setBindingSuccess(int bindingSuccess) {
        this.bindingSuccess = bindingSuccess;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeString(this.autoUserId);
        dest.writeString(this.autoUserAvatar);
        dest.writeString(this.autoUserName);
        dest.writeInt(this.bindingSuccess);
    }

    public RspUserIdBind(Parcel in) {
        super(in);
        this.autoUserId = in.readString();
        this.autoUserAvatar = in.readString();
        this.autoUserName = in.readString();
        this.bindingSuccess = in.readInt();
    }
}
