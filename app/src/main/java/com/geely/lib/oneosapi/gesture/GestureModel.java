package com.geely.lib.oneosapi.gesture;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class GestureModel implements Parcelable {
    public static final Creator<GestureModel> CREATOR = new Creator<GestureModel>() { // from class: com.geely.lib.oneosapi.gesture.GestureModel.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GestureModel createFromParcel(Parcel source) {
            return new GestureModel(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public GestureModel[] newArray(int size) {
            return new GestureModel[size];
        }
    };
    private String gesture;

    public GestureModel() {
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getGesture() {
        return this.gesture;
    }

    public void readFromParcel(Parcel in) {
        this.gesture = in.readString();
    }

    public void setGesture(String gesture) {
        this.gesture = gesture;
    }

    public String toString() {
        return "GestureModel{gesture='" + this.gesture + "'}";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.gesture);
    }

    public GestureModel(String gesture) {
        this.gesture = gesture;
    }

    public GestureModel(Parcel in) {
        this.gesture = in.readString();
    }
}
