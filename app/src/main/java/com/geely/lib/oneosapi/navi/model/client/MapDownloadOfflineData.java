package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;
import java.util.List;

/* loaded from: classes.dex */
public class MapDownloadOfflineData extends NaviBaseModel implements Parcelable {
    public static final Creator<MapDownloadOfflineData> CREATOR = new Creator<MapDownloadOfflineData>() { // from class: com.geely.lib.oneosapi.navi.model.client.MapDownloadOfflineData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MapDownloadOfflineData createFromParcel(Parcel source) {
            return new MapDownloadOfflineData(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public MapDownloadOfflineData[] newArray(int size) {
            return new MapDownloadOfflineData[size];
        }
    };
    private List<String> provinceList;

    public MapDownloadOfflineData(List<String> provinceList) {
        this.provinceList = provinceList;
        setProtocolID(NaviProtocolID.MAP_OP_DOWNLOAD_OFFLINE_DATA);
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public List<String> getProvinceList() {
        return this.provinceList;
    }

    public void setProvinceList(List<String> provinceList) {
        this.provinceList = provinceList;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        StringBuilder sb = new StringBuilder("MapDownloadOfflineData{");
        sb.append("provinceList=").append(this.provinceList);
        sb.append("{base=").append(super.toString()).append("}; ");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeStringList(this.provinceList);
    }

    public MapDownloadOfflineData(Parcel in) {
        super(in);
        this.provinceList = in.createStringArrayList();
    }
}
