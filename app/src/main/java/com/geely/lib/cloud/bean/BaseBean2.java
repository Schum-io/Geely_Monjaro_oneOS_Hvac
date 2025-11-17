package com.geely.lib.cloud.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BaseBean2<T> implements Parcelable {
    public static final Creator<BaseBean2> CREATOR = new Creator<BaseBean2>() { // from class: com.geely.lib.cloud.bean.BaseBean2.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseBean2 createFromParcel(Parcel in) {
            return new BaseBean2(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseBean2[] newArray(int size) {
            return new BaseBean2[size];
        }
    };
    private int code;
    private T data;
    private String message;
    private boolean success;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public T getData() {
        return this.data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public BaseBean2(Parcel in) {
        this.code = in.readInt();
        this.message = in.readString();
        this.success = in.readBoolean();
    }

    public BaseBean2() {
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.code);
        dest.writeString(this.message);
        dest.writeBoolean(this.success);
    }
}
