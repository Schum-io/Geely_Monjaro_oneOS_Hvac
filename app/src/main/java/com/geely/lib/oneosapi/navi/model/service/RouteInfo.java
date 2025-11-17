package com.geely.lib.oneosapi.navi.model.service;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class RouteInfo implements Parcelable {
    public static final Creator<RouteInfo> CREATOR = new Creator<RouteInfo>() { // from class: com.geely.lib.oneosapi.navi.model.service.RouteInfo.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RouteInfo createFromParcel(Parcel source) {
            return new RouteInfo(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public RouteInfo[] newArray(int size) {
            return new RouteInfo[size];
        }
    };
    private double distance;
    private String distanceAuto;
    private String routeTag;
    private int strategy;
    private double time;
    private String timeAuto;
    private int tolls;
    private List<TrafficInfo> trafficInfos;
    private int trafficLights;

    public RouteInfo() {
        this.timeAuto = "";
        this.distanceAuto = "";
        this.trafficInfos = new ArrayList();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public double getDistance() {
        return this.distance;
    }

    public String getDistanceAuto() {
        return this.distanceAuto;
    }

    public String getRouteTag() {
        return this.routeTag;
    }

    public int getStrategy() {
        return this.strategy;
    }

    public double getTime() {
        return this.time;
    }

    public String getTimeAuto() {
        return this.timeAuto;
    }

    public int getTolls() {
        return this.tolls;
    }

    public List<TrafficInfo> getTrafficInfos() {
        return this.trafficInfos;
    }

    public int getTrafficLights() {
        return this.trafficLights;
    }

    public void setDistance(double distance) {
        this.distance = distance;
    }

    public void setDistanceAuto(String distanceAuto) {
        this.distanceAuto = distanceAuto;
    }

    public void setRouteTag(String routeTag) {
        this.routeTag = routeTag;
    }

    public void setStrategy(int strategy) {
        this.strategy = strategy;
    }

    public void setTime(double time) {
        this.time = time;
    }

    public void setTimeAuto(String timeAuto) {
        this.timeAuto = timeAuto;
    }

    public void setTolls(int tolls) {
        this.tolls = tolls;
    }

    public void setTrafficInfos(List<TrafficInfo> trafficInfos) {
        this.trafficInfos = trafficInfos;
    }

    public void setTrafficLights(int trafficLights) {
        this.trafficLights = trafficLights;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RouteInfo{");
        sb.append("routeTag='").append(this.routeTag).append('\'');
        sb.append(", strategy=").append(this.strategy);
        sb.append(", time=").append(this.time);
        sb.append(", distance=").append(this.distance);
        sb.append(", timeAuto='").append(this.timeAuto).append('\'');
        sb.append(", distanceAuto='").append(this.distanceAuto).append('\'');
        sb.append(", trafficLights=").append(this.trafficLights);
        sb.append(", tolls=").append(this.tolls);
        sb.append(", trafficInfos=").append(this.trafficInfos);
        sb.append('}');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.routeTag);
        dest.writeInt(this.strategy);
        dest.writeDouble(this.time);
        dest.writeDouble(this.distance);
        dest.writeString(this.timeAuto);
        dest.writeString(this.distanceAuto);
        dest.writeInt(this.trafficLights);
        dest.writeInt(this.tolls);
        dest.writeList(this.trafficInfos);
    }

    public RouteInfo(Parcel in) {
        this.timeAuto = "";
        this.distanceAuto = "";
        this.trafficInfos = new ArrayList();
        this.routeTag = in.readString();
        this.strategy = in.readInt();
        this.time = in.readDouble();
        this.distance = in.readDouble();
        this.timeAuto = in.readString();
        this.distanceAuto = in.readString();
        this.trafficLights = in.readInt();
        this.tolls = in.readInt();
        ArrayList arrayList = new ArrayList();
        this.trafficInfos = arrayList;
        in.readList(arrayList, TrafficInfo.class.getClassLoader());
    }
}
