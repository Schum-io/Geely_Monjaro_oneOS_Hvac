package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class UpdateFavouriteParam implements Parcelable {
    public static final Creator<UpdateFavouriteParam> CREATOR = new Creator<UpdateFavouriteParam>() { // from class: com.geely.lib.cloud.engine.bean.UpdateFavouriteParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateFavouriteParam createFromParcel(Parcel in) {
            return new UpdateFavouriteParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public UpdateFavouriteParam[] newArray(int size) {
            return new UpdateFavouriteParam[size];
        }
    };
    private List<AutoTriggerState> autoTriggerState;
    private String code;
    private List<Commands> commands;
    private int defaultDuration;
    private String desc;
    private String icon;
    private int maxDuration;
    private int minDuration;
    private String name;
    private List<ScenRequiredState> scenRequiredState;
    private int[] seatSelect;
    private int showOnAssistScreen;
    private List<Themes> themes;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public UpdateFavouriteParam() {
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return this.code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getDesc() {
        return this.desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public int getMinDuration() {
        return this.minDuration;
    }

    public void setMinDuration(int minDuration) {
        this.minDuration = minDuration;
    }

    public int getMaxDuration() {
        return this.maxDuration;
    }

    public void setMaxDuration(int maxDuration) {
        this.maxDuration = maxDuration;
    }

    public int getDefaultDuration() {
        return this.defaultDuration;
    }

    public void setDefaultDuration(int defaultDuration) {
        this.defaultDuration = defaultDuration;
    }

    public int getShowOnAssistScreen() {
        return this.showOnAssistScreen;
    }

    public void setShowOnAssistScreen(int showOnAssistScreen) {
        this.showOnAssistScreen = showOnAssistScreen;
    }

    public int[] getSeatSelect() {
        return this.seatSelect;
    }

    public void setSeatSelect(int[] seatSelect) {
        this.seatSelect = seatSelect;
    }

    public List<ScenRequiredState> getScenRequiredState() {
        return this.scenRequiredState;
    }

    public void setScenRequiredState(List<ScenRequiredState> scenRequiredState) {
        this.scenRequiredState = scenRequiredState;
    }

    public List<AutoTriggerState> getAutoTriggerState() {
        return this.autoTriggerState;
    }

    public void setAutoTriggerState(List<AutoTriggerState> autoTriggerState) {
        this.autoTriggerState = autoTriggerState;
    }

    public List<Themes> getThemes() {
        return this.themes;
    }

    public void setThemes(List<Themes> themes) {
        this.themes = themes;
    }

    public List<Commands> getCommands() {
        return this.commands;
    }

    public void setCommands(List<Commands> commands) {
        this.commands = commands;
    }

    protected UpdateFavouriteParam(Parcel in) {
        this.name = in.readString();
        this.code = in.readString();
        this.desc = in.readString();
        this.icon = in.readString();
        this.minDuration = in.readInt();
        this.maxDuration = in.readInt();
        this.defaultDuration = in.readInt();
        this.showOnAssistScreen = in.readInt();
        this.seatSelect = in.createIntArray();
        this.scenRequiredState = in.createTypedArrayList(ScenRequiredState.CREATOR);
        this.autoTriggerState = in.createTypedArrayList(AutoTriggerState.CREATOR);
        this.themes = in.createTypedArrayList(Themes.CREATOR);
        this.commands = in.createTypedArrayList(Commands.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.name);
        dest.writeString(this.code);
        dest.writeString(this.desc);
        dest.writeString(this.icon);
        dest.writeInt(this.minDuration);
        dest.writeInt(this.maxDuration);
        dest.writeInt(this.defaultDuration);
        dest.writeInt(this.showOnAssistScreen);
        dest.writeIntArray(this.seatSelect);
        dest.writeTypedList(this.scenRequiredState);
        dest.writeTypedList(this.autoTriggerState);
        dest.writeTypedList(this.themes);
        dest.writeTypedList(this.commands);
    }
}
