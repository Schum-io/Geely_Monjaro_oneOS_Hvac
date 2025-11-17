package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.SearchPoi;
import com.geely.lib.oneosapi.navi.model.base.SuggestionCity;
import java.util.List;

/* loaded from: classes.dex */
public class RspPoiSearchResult extends NaviBaseModel implements Parcelable {
    public static final Creator<RspPoiSearchResult> CREATOR = new Creator<RspPoiSearchResult>() { // from class: com.geely.lib.oneosapi.navi.model.service.RspPoiSearchResult.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspPoiSearchResult createFromParcel(Parcel source) {
            return new RspPoiSearchResult(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RspPoiSearchResult[] newArray(int size) {
            return new RspPoiSearchResult[size];
        }
    };
    public List<SearchPoi> mPOIList;
    public List<SuggestionCity> mSuggestCities;

    public RspPoiSearchResult(Parcel in) {
        super(in);
        this.mSuggestCities = in.createTypedArrayList(SuggestionCity.CREATOR);
        this.mPOIList = in.createTypedArrayList(SearchPoi.CREATOR);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<SearchPoi> getPOIList() {
        return this.mPOIList;
    }

    public List<SuggestionCity> getSuggestCities() {
        return this.mSuggestCities;
    }

    public void setPOIList(List<SearchPoi> mPOIList) {
        this.mPOIList = mPOIList;
    }

    public void setSuggestCities(List<SuggestionCity> mSuggestCities) {
        this.mSuggestCities = mSuggestCities;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("RspPoiSearchResult{");
        sb.append("mSuggestCities=").append(this.mSuggestCities);
        sb.append("mPOIList=").append(this.mPOIList);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeTypedList(this.mSuggestCities);
        dest.writeTypedList(this.mPOIList);
    }

    public RspPoiSearchResult(NaviBaseModel reqModel) {
        copyBaseInfo(reqModel);
    }
}
