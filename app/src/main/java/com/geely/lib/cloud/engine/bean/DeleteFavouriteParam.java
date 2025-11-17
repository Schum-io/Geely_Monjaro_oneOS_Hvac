package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class DeleteFavouriteParam implements Parcelable {
    public static final Creator<DeleteFavouriteParam> CREATOR = new Creator<DeleteFavouriteParam>() { // from class: com.geely.lib.cloud.engine.bean.DeleteFavouriteParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeleteFavouriteParam createFromParcel(Parcel in) {
            return new DeleteFavouriteParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeleteFavouriteParam[] newArray(int size) {
            return new DeleteFavouriteParam[size];
        }
    };
    private List<String> code;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DeleteFavouriteParam() {
    }

    public DeleteFavouriteParam(List<String> code) {
        this.code = code;
    }

    public List<String> getCode() {
        return this.code;
    }

    public void setCode(List<String> code) {
        this.code = code;
    }

    protected DeleteFavouriteParam(Parcel in) {
        this.code = in.createStringArrayList();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeStringList(this.code);
    }
}
