package com.geely.lib.cloud.engine.bean;

import java.util.List;

/* loaded from: classes.dex */
public class SceneCopyParam {
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
    private List<Integer> themes;

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

    public List<Integer> getThemes() {
        return this.themes;
    }

    public void setThemes(List<Integer> themes) {
        this.themes = themes;
    }

    public List<Commands> getCommands() {
        return this.commands;
    }

    public void setCommands(List<Commands> commands) {
        this.commands = commands;
    }
}
