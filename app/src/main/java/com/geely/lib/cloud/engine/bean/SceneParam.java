package com.geely.lib.cloud.engine.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class SceneParam implements Parcelable {
    public static final Creator<SceneParam> CREATOR = new Creator<SceneParam>() { // from class: com.geely.lib.cloud.engine.bean.SceneParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneParam createFromParcel(Parcel in) {
            return new SceneParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneParam[] newArray(int size) {
            return new SceneParam[size];
        }
    };
    private String author;
    private List<AutoTriggerState> autoTriggerState;
    private String background;
    private String code;
    private List<Commands> commands;
    private int defaultDuration;
    private String desc;
    private String detailBackground;
    private String endTime;
    private String groundIcon;
    private String icon;
    private String labelCode;
    private String labelName;
    private int maxDuration;
    private int minDuration;
    private String name;
    private List<ScenRequiredState> scenRequiredState;
    private int[] seatSelect;
    private int showOnAssistScreen;
    private String startTime;
    private List<String> themes;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    protected SceneParam(Parcel in) {
        this.name = in.readString();
        this.code = in.readString();
        this.desc = in.readString();
        this.startTime = in.readString();
        this.endTime = in.readString();
        this.labelCode = in.readString();
        this.labelName = in.readString();
        this.author = in.readString();
        this.icon = in.readString();
        this.groundIcon = in.readString();
        this.background = in.readString();
        this.detailBackground = in.readString();
        this.minDuration = in.readInt();
        this.maxDuration = in.readInt();
        this.defaultDuration = in.readInt();
        this.showOnAssistScreen = in.readInt();
        this.seatSelect = in.createIntArray();
        this.scenRequiredState = in.createTypedArrayList(ScenRequiredState.CREATOR);
        this.autoTriggerState = in.createTypedArrayList(AutoTriggerState.CREATOR);
        this.themes = in.createStringArrayList();
        this.commands = in.createTypedArrayList(Commands.CREATOR);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.name);
        dest.writeString(this.code);
        dest.writeString(this.desc);
        dest.writeString(this.startTime);
        dest.writeString(this.endTime);
        dest.writeString(this.labelCode);
        dest.writeString(this.labelName);
        dest.writeString(this.author);
        dest.writeString(this.icon);
        dest.writeString(this.groundIcon);
        dest.writeString(this.background);
        dest.writeString(this.detailBackground);
        dest.writeInt(this.minDuration);
        dest.writeInt(this.maxDuration);
        dest.writeInt(this.defaultDuration);
        dest.writeInt(this.showOnAssistScreen);
        dest.writeIntArray(this.seatSelect);
        dest.writeTypedList(this.scenRequiredState);
        dest.writeTypedList(this.autoTriggerState);
        dest.writeStringList(this.themes);
        dest.writeTypedList(this.commands);
    }

    public List<String> getThemes() {
        return this.themes;
    }

    public void setThemes(List<String> themes) {
        this.themes = themes;
    }

    public SceneParam() {
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

    public String getStartTime() {
        return this.startTime;
    }

    public void setStartTime(String startTime) {
        this.startTime = startTime;
    }

    public String getEndTime() {
        return this.endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getLabelCode() {
        return this.labelCode;
    }

    public void setLabelCode(String labelCode) {
        this.labelCode = labelCode;
    }

    public String getLabelName() {
        return this.labelName;
    }

    public void setLabelName(String labelName) {
        this.labelName = labelName;
    }

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIcon() {
        return this.icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    public String getGroundIcon() {
        return this.groundIcon;
    }

    public void setGroundIcon(String groundIcon) {
        this.groundIcon = groundIcon;
    }

    public String getBackground() {
        return this.background;
    }

    public void setBackground(String background) {
        this.background = background;
    }

    public String getDetailBackground() {
        return this.detailBackground;
    }

    public void setDetailBackground(String detailBackground) {
        this.detailBackground = detailBackground;
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

    public List<Commands> getCommands() {
        return this.commands;
    }

    public void setCommands(List<Commands> commands) {
        this.commands = commands;
    }
}
