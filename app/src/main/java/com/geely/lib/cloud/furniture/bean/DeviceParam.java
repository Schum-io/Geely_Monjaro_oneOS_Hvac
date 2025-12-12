package com.geely.lib.cloud.furniture.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class DeviceParam implements Parcelable {
    public static final Creator<DeviceParam> CREATOR = new Creator<DeviceParam>() { // from class: com.geely.lib.cloud.furniture.bean.DeviceParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeviceParam createFromParcel(Parcel in) {
            return new DeviceParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DeviceParam[] newArray(int size) {
            return new DeviceParam[size];
        }
    };
    private List<CommandParam> command;
    private String homeDeviceId;
    private String terminalId;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DeviceParam() {
    }

    public DeviceParam(List<CommandParam> commandList, String homeDeviceId, String terminalId) {
        this.command = commandList;
        this.homeDeviceId = homeDeviceId;
        this.terminalId = terminalId;
    }

    protected DeviceParam(Parcel in) {
        this.command = in.createTypedArrayList(CommandParam.CREATOR);
        this.homeDeviceId = in.readString();
        this.terminalId = in.readString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeTypedList(this.command);
        dest.writeString(this.homeDeviceId);
        dest.writeString(this.terminalId);
    }

    public List<CommandParam> getCommand() {
        return this.command;
    }

    public void setCommand(List<CommandParam> command) {
        this.command = command;
    }

    public String getHomeDeviceId() {
        return this.homeDeviceId;
    }

    public void setHomeDeviceId(String homeDeviceId) {
        this.homeDeviceId = homeDeviceId;
    }

    public String getTerminalId() {
        return this.terminalId;
    }

    public void setTerminalId(String terminalId) {
        this.terminalId = terminalId;
    }
}
