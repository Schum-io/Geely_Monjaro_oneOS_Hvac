package com.geely.lib.oneosapi.navi.model.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.geely.lib.oneosapi.navi.model.base.NaviBaseModel;
import com.geely.lib.oneosapi.navi.model.base.NaviProtocolID;

/* loaded from: classes.dex */
public class SpeedLimitInfo extends NaviBaseModel implements Parcelable {
    public static final Creator<SpeedLimitInfo> CREATOR = new Creator<SpeedLimitInfo>() { // from class: com.geely.lib.oneosapi.navi.model.client.SpeedLimitInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpeedLimitInfo createFromParcel(Parcel source) {
            return new SpeedLimitInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpeedLimitInfo[] newArray(int size) {
            return new SpeedLimitInfo[size];
        }
    };
    public static final int ROAD_COUNTY = 3;
    public static final int ROAD_EXPRESS = 6;
    public static final int ROAD_HIGH_SPEED = 0;
    public static final int ROAD_NATION = 1;
    public static final int ROAD_NOMAL = 9;
    public static final int ROAD_NO_NAV = 10;
    public static final int ROAD_PRIMARY = 7;
    public static final int ROAD_PROV = 2;
    public static final int ROAD_SECONDARY = 8;
    public static final int ROAD_TOWN = 4;
    public static final int ROAD_VILLAGE = 5;
    private ElecLimitingInfo elecLimitingInfo;
    private JctWayInfo jctWayInfo;
    private RoadInfo roadInfo;

    public static class ElecLimitingInfo implements Parcelable, Cloneable {
        public static final Creator<ElecLimitingInfo> CREATOR = new Creator<ElecLimitingInfo>() { // from class: com.geely.lib.oneosapi.navi.model.client.SpeedLimitInfo.ElecLimitingInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ElecLimitingInfo createFromParcel(Parcel in) {
                return new ElecLimitingInfo(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ElecLimitingInfo[] newArray(int size) {
                return new ElecLimitingInfo[size];
            }
        };
        private int dist;
        private double latitude;
        private double longitude;
        private int speed;

        public ElecLimitingInfo(double lat, double lng, int dist, int speed) {
            this.latitude = lat;
            this.longitude = lng;
            this.dist = dist;
            this.speed = speed;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getDist() {
            return this.dist;
        }

        public double getLat() {
            return this.latitude;
        }

        public double getLong() {
            return this.longitude;
        }

        public double getLongitude() {
            return this.longitude;
        }

        public int getSpeed() {
            return this.speed;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("ElecLimitingInfo{");
            sb.append("latitude=").append(this.latitude);
            sb.append(", longitude=").append(this.longitude);
            sb.append(", speed=").append(this.speed);
            sb.append(", dist='").append(this.dist).append('\'');
            sb.append('}');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeDouble(this.latitude);
            dest.writeDouble(this.longitude);
            dest.writeInt(this.dist);
            dest.writeInt(this.speed);
        }

        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public ElecLimitingInfo m12clone() {
            try {
                return (ElecLimitingInfo) super.clone();
            } catch (CloneNotSupportedException unused) {
                return new ElecLimitingInfo(0.0d, 0.0d, 0, 0);
            }
        }

        public ElecLimitingInfo(Parcel in) {
            this.latitude = in.readDouble();
            this.longitude = in.readDouble();
            this.dist = in.readInt();
            this.speed = in.readInt();
        }
    }

    public static class JctWayInfo implements Parcelable, Cloneable {
        public static final Creator<JctWayInfo> CREATOR = new Creator<JctWayInfo>() { // from class: com.geely.lib.oneosapi.navi.model.client.SpeedLimitInfo.JctWayInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public JctWayInfo createFromParcel(Parcel in) {
                return new JctWayInfo(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public JctWayInfo[] newArray(int size) {
                return new JctWayInfo[size];
            }
        };
        private int dist;
        private double latitude;
        private double longitude;

        public JctWayInfo(double lat, double lng, int dist) {
            this.latitude = lat;
            this.longitude = lng;
            this.dist = dist;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getDist() {
            return this.dist;
        }

        public double getLat() {
            return this.latitude;
        }

        public double getLong() {
            return this.longitude;
        }

        public double getLongitude() {
            return this.longitude;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("JctWayInfo{");
            sb.append("latitude=").append(this.latitude);
            sb.append(", longitude=").append(this.longitude);
            sb.append(", dist='").append(this.dist).append('\'');
            sb.append('}');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeDouble(this.latitude);
            dest.writeDouble(this.longitude);
            dest.writeInt(this.dist);
        }

        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public JctWayInfo m13clone() {
            try {
                return (JctWayInfo) super.clone();
            } catch (CloneNotSupportedException unused) {
                return new JctWayInfo(0.0d, 0.0d, 0);
            }
        }

        public JctWayInfo(Parcel in) {
            this.latitude = in.readDouble();
            this.longitude = in.readDouble();
            this.dist = in.readInt();
        }
    }

    public static class RoadInfo implements Parcelable, Cloneable {
        public static final Creator<RoadInfo> CREATOR = new Creator<RoadInfo>() { // from class: com.geely.lib.oneosapi.navi.model.client.SpeedLimitInfo.RoadInfo.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RoadInfo createFromParcel(Parcel in) {
                return new RoadInfo(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public RoadInfo[] newArray(int size) {
                return new RoadInfo[size];
            }
        };
        private int roadType;
        private String roadname;

        public RoadInfo(String roadname, int roadType) {
            this.roadname = roadname;
            this.roadType = roadType;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int getRoadType() {
            return this.roadType;
        }

        public String getRoadname() {
            return this.roadname;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("RoadInfo{");
            sb.append("roadname=").append(this.roadname);
            sb.append(", roadType='").append(this.roadType).append('\'');
            sb.append('}');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            dest.writeString(this.roadname);
            dest.writeInt(this.roadType);
        }

        /* renamed from: clone, reason: merged with bridge method [inline-methods] */
        public RoadInfo m14clone() {
            try {
                return (RoadInfo) super.clone();
            } catch (CloneNotSupportedException unused) {
                return new RoadInfo("", 0);
            }
        }

        public RoadInfo(Parcel in) {
            this.roadname = in.readString();
            this.roadType = in.readInt();
        }
    }

    public SpeedLimitInfo() {
        setProtocolID(NaviProtocolID.SPEED_LIMIT_INFO);
    }

    public ElecLimitingInfo getElecLimitingInfo() {
        return this.elecLimitingInfo;
    }

    public JctWayInfo getJctWayInfo() {
        return this.jctWayInfo;
    }

    public RoadInfo getRoadInfo() {
        return this.roadInfo;
    }

    public void setElecLimitingInfo(ElecLimitingInfo elecLimitingInfo) {
        this.elecLimitingInfo = elecLimitingInfo;
    }

    public void setJctWayInfo(JctWayInfo jctWayInfo) {
        this.jctWayInfo = jctWayInfo;
    }

    public void setRoadInfo(RoadInfo roadInfo) {
        this.roadInfo = roadInfo;
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel
    public String toString() {
        super.toString();
        StringBuilder sb = new StringBuilder("SpeedLimitInfo{");
        StringBuilder sbAppend = sb.append("elecLimitingInfo=");
        ElecLimitingInfo elecLimitingInfo = this.elecLimitingInfo;
        sbAppend.append(elecLimitingInfo == null ? "" : elecLimitingInfo.toString());
        StringBuilder sbAppend2 = sb.append(", jctWayInfo='");
        JctWayInfo jctWayInfo = this.jctWayInfo;
        sbAppend2.append(jctWayInfo == null ? "" : jctWayInfo.toString());
        StringBuilder sbAppend3 = sb.append(", roadInfo='");
        RoadInfo roadInfo = this.roadInfo;
        sbAppend3.append(roadInfo != null ? roadInfo.toString() : "");
        sb.append('}');
        return sb.toString();
    }

    @Override // com.geely.lib.oneosapi.navi.model.base.NaviBaseModel, android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        super.writeToParcel(dest, flags);
        dest.writeParcelable(this.elecLimitingInfo, flags);
        dest.writeParcelable(this.jctWayInfo, flags);
        dest.writeParcelable(this.roadInfo, flags);
    }

    public SpeedLimitInfo(Parcel in) {
        super(in);
        this.elecLimitingInfo = (ElecLimitingInfo) in.readParcelable(ElecLimitingInfo.class.getClassLoader());
        this.jctWayInfo = (JctWayInfo) in.readParcelable(JctWayInfo.class.getClassLoader());
        this.roadInfo = (RoadInfo) in.readParcelable(RoadInfo.class.getClassLoader());
    }
}
