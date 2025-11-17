package com.geely.lib.oneosapi.navi.model.base;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class SearchPoi extends PoiInfo {
    public static final Creator<SearchPoi> CREATOR = new Creator<SearchPoi>() { // from class: com.geely.lib.oneosapi.navi.model.base.SearchPoi.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchPoi createFromParcel(Parcel in) {
            return new SearchPoi(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SearchPoi[] newArray(int size) {
            return new SearchPoi[size];
        }
    };
    private int mSearchPoiTags;

    public SearchPoi() {
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.PoiInfo, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getSearchPoiTags() {
        return this.mSearchPoiTags;
    }

    public void setSearchPoiTags(int mSearchPoiTags) {
        this.mSearchPoiTags = mSearchPoiTags;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.PoiInfo, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeInt(this.mSearchPoiTags);
    }

    public SearchPoi(Parcel in) {
        super(in);
        this.mSearchPoiTags = in.readInt();
    }
}
