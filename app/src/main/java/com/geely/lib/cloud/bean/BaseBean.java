package com.geely.lib.cloud.bean;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class BaseBean<T> implements Parcelable {
    public static final Creator<BaseBean> CREATOR = new Creator<BaseBean>() { // from class: com.geely.lib.cloud.bean.BaseBean.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseBean createFromParcel(Parcel in) {
            return new BaseBean(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public BaseBean[] newArray(int size) {
            return new BaseBean[size];
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

    protected BaseBean(Parcel in) {
        this.code = in.readInt();
        this.message = in.readString();
        this.success = in.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.code);
        parcel.writeString(this.message);
        parcel.writeByte(this.success ? (byte) 1 : (byte) 0);
    }

    public boolean isSuccess() {
        return this.success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public String getMessage() {
        return this.message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public int getCode() {
        return this.code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public T getData() {
        return this.data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public BaseBean() {
    }
}
