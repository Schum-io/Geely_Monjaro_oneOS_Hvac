package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class DeleteBatchCreationParam implements Parcelable {
    public static final Creator<DeleteBatchCreationParam> CREATOR = new Creator<DeleteBatchCreationParam>() { // from class: com.geely.lib.cloud.engine.bean.DeleteBatchCreationParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeleteBatchCreationParam createFromParcel(Parcel in) {
            return new DeleteBatchCreationParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeleteBatchCreationParam[] newArray(int size) {
            return new DeleteBatchCreationParam[size];
        }
    };
    private List<String> codeList;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DeleteBatchCreationParam() {
    }

    public DeleteBatchCreationParam(List<String> codeList) {
        this.codeList = codeList;
    }

    public List<String> getCode() {
        return this.codeList;
    }

    public void setCode(List<String> codeList) {
        this.codeList = codeList;
    }

    protected DeleteBatchCreationParam(Parcel in) {
        this.codeList = in.createStringArrayList();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeStringList(this.codeList);
    }
}
