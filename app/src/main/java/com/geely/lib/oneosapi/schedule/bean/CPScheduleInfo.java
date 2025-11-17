package com.geely.lib.oneosapi.schedule.bean;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class CPScheduleInfo implements Parcelable {
    public static final Creator<CPScheduleInfo> CREATOR = new Creator<CPScheduleInfo>() { // from class: com.geely.lib.oneosapi.schedule.bean.CPScheduleInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CPScheduleInfo createFromParcel(Parcel in) {
            return new CPScheduleInfo(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public CPScheduleInfo[] newArray(int size) {
            return new CPScheduleInfo[size];
        }
    };
    private String endTime;
    private long eventID;
    private String location;
    private String startTime;
    private String title;

    public static class Location implements Parcelable {
        public static final Creator<Location> CREATOR = new Creator<Location>() { // from class: com.geely.lib.oneosapi.schedule.bean.CPScheduleInfo.Location.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Location createFromParcel(Parcel in) {
                return new Location(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public Location[] newArray(int size) {
                return new Location[size];
            }
        };
        private Double b;
        private String c;
        private Double d;
        private String e;

        public Location() {
        }

        public final void a(Double var1) {
            this.b = var1;
        }

        public final void b(Double var1) {
            this.d = var1;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "{address=" + this.e + ", type=" + this.c + ", longitude='" + this.d + ", latitude=" + this.b + '}';
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            if (this.b == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeDouble(this.b.doubleValue());
            }
            parcel.writeString(this.c);
            if (this.d == null) {
                parcel.writeByte((byte) 0);
            } else {
                parcel.writeByte((byte) 1);
                parcel.writeDouble(this.d.doubleValue());
            }
            parcel.writeString(this.e);
        }

        public Location(JSONObject json) {
            this.b = Double.valueOf(json.optDouble("latitude"));
            this.c = json.optString("type");
            this.d = Double.valueOf(json.optDouble("longitude"));
            this.e = json.optString("address");
        }

        public final void a(String var1) {
            this.c = var1;
        }

        public final void b(String var1) {
            this.e = var1;
        }

        public Location(Parcel in) {
            new Creator<Location>() { // from class: com.geely.lib.oneosapi.schedule.bean.CPScheduleInfo.Location.1NamelessClass_1
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public Location createFromParcel(Parcel parcel) {
                    return null;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public Location[] newArray(int i) {
                    return new Location[0];
                }
            };
            if (in.readByte() == 0) {
                this.b = null;
            } else {
                this.b = Double.valueOf(in.readDouble());
            }
            this.c = in.readString();
            if (in.readByte() == 0) {
                this.d = null;
            } else {
                this.d = Double.valueOf(in.readDouble());
            }
            this.e = in.readString();
        }
    }

    public CPScheduleInfo(Parcel in) {
        this.location = in.readString();
        this.endTime = in.readString();
        this.title = in.readString();
        this.startTime = in.readString();
        this.eventID = in.readLong();
    }

    public static Creator<CPScheduleInfo> getCREATOR() {
        return CREATOR;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String getEndTime() {
        return this.endTime;
    }

    public long getEventID() {
        return this.eventID;
    }

    public String getLocation() {
        return this.location;
    }

    public String getStartTime() {
        return this.startTime;
    }

    public String getTitle() {
        return this.title;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public void setEventID(long eventID) {
        this.eventID = eventID;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String toString() {
        return "CPScheduleInfo{location='" + this.location + "', endTime='" + this.endTime + "', title='" + this.title + "', startTime='" + this.startTime + "', eventID=" + this.eventID + '}';
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.location);
        parcel.writeString(this.endTime);
        parcel.writeString(this.title);
        parcel.writeString(this.startTime);
        parcel.writeLong(this.eventID);
    }

    public CPScheduleInfo() {
    }

    public CPScheduleInfo(JSONObject json) {
        this.location = json.optString("location");
        this.endTime = json.optString("endTime");
        this.title = json.optString("title");
        this.startTime = json.optString("startTime");
        this.eventID = json.optLong("eventID");
    }
}
