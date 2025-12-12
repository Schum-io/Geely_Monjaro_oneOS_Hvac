package com.geely.lib.cloud.schedule;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class DailyParam implements Parcelable {
    public static final Creator<DailyParam> CREATOR = new Creator<DailyParam>() { // from class: com.geely.lib.cloud.schedule.DailyParam.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DailyParam createFromParcel(Parcel in) {
            return new DailyParam(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public DailyParam[] newArray(int size) {
            return new DailyParam[size];
        }
    };
    private int allDay;
    private String catagory;
    private int dailyType;
    private String description;
    private String endDateTime;
    private Long eventId;
    private List<EventReminders> eventReminders;
    private int importance;
    private String location;
    private int[] notifyTime;
    private String rule;
    private String startDateTime;
    private int status;
    private int timeMode;
    private String timeZone;
    private String title;
    private int topFlag;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DailyParam() {
    }

    public DailyParam(Long eventId, int dailyType, String title, String description, String location, int allDay, String timeZone, String startDateTime, String endDateTime, int[] notifyTime, List<EventReminders> eventReminders, String rule, String catagory, int status, int importance, int timeMode, int topFlag) {
        this.eventId = eventId;
        this.dailyType = dailyType;
        this.title = title;
        this.description = description;
        this.location = location;
        this.allDay = allDay;
        this.timeZone = timeZone;
        this.startDateTime = startDateTime;
        this.endDateTime = endDateTime;
        this.notifyTime = notifyTime;
        this.eventReminders = eventReminders;
        this.rule = rule;
        this.catagory = catagory;
        this.status = status;
        this.importance = importance;
        this.timeMode = timeMode;
        this.topFlag = topFlag;
    }

    protected DailyParam(Parcel in) {
        if (in.readByte() == 0) {
            this.eventId = null;
        } else {
            this.eventId = Long.valueOf(in.readLong());
        }
        this.dailyType = in.readInt();
        this.title = in.readString();
        this.description = in.readString();
        this.location = in.readString();
        this.allDay = in.readInt();
        this.timeZone = in.readString();
        this.startDateTime = in.readString();
        this.endDateTime = in.readString();
        this.notifyTime = in.createIntArray();
        this.eventReminders = in.createTypedArrayList(EventReminders.CREATOR);
        this.rule = in.readString();
        this.catagory = in.readString();
        this.status = in.readInt();
        this.importance = in.readInt();
        this.timeMode = in.readInt();
        this.topFlag = in.readInt();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        if (this.eventId == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeLong(this.eventId.longValue());
        }
        dest.writeInt(this.dailyType);
        dest.writeString(this.title);
        dest.writeString(this.description);
        dest.writeString(this.location);
        dest.writeInt(this.allDay);
        dest.writeString(this.timeZone);
        dest.writeString(this.startDateTime);
        dest.writeString(this.endDateTime);
        dest.writeIntArray(this.notifyTime);
        dest.writeTypedList(this.eventReminders);
        dest.writeString(this.rule);
        dest.writeString(this.catagory);
        dest.writeInt(this.status);
        dest.writeInt(this.importance);
        dest.writeInt(this.timeMode);
        dest.writeInt(this.topFlag);
    }

    public Long getEventId() {
        return this.eventId;
    }

    public void setEventId(Long eventId) {
        this.eventId = eventId;
    }

    public int getDailyType() {
        return this.dailyType;
    }

    public void setDailyType(int dailyType) {
        this.dailyType = dailyType;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLocation() {
        return this.location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getAllDay() {
        return this.allDay;
    }

    public void setAllDay(int allDay) {
        this.allDay = allDay;
    }

    public String getTimeZone() {
        return this.timeZone;
    }

    public void setTimeZone(String timeZone) {
        this.timeZone = timeZone;
    }

    public String getStartDateTime() {
        return this.startDateTime;
    }

    public void setStartDateTime(String startDateTime) {
        this.startDateTime = startDateTime;
    }

    public String getEndDateTime() {
        return this.endDateTime;
    }

    public void setEndDateTime(String endDateTime) {
        this.endDateTime = endDateTime;
    }

    public int[] getNotifyTime() {
        return this.notifyTime;
    }

    public void setNotifyTime(int[] notifyTime) {
        this.notifyTime = notifyTime;
    }

    public List<EventReminders> getEventReminders() {
        return this.eventReminders;
    }

    public void setEventReminders(List<EventReminders> eventReminders) {
        this.eventReminders = eventReminders;
    }

    public String getRule() {
        return this.rule;
    }

    public void setRule(String rule) {
        this.rule = rule;
    }

    public String getCatagory() {
        return this.catagory;
    }

    public void setCatagory(String catagory) {
        this.catagory = catagory;
    }

    public int getStatus() {
        return this.status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getImportance() {
        return this.importance;
    }

    public void setImportance(int importance) {
        this.importance = importance;
    }

    public int getTimeMode() {
        return this.timeMode;
    }

    public void setTimeMode(int timeMode) {
        this.timeMode = timeMode;
    }

    public int getTopFlag() {
        return this.topFlag;
    }

    public void setTopFlag(int topFlag) {
        this.topFlag = topFlag;
    }

    public String toString() {
        return "DailyParam{eventId=" + this.eventId + ", dailyType=" + this.dailyType + ", title='" + this.title + "', description='" + this.description + "', location='" + this.location + "', allDay=" + this.allDay + ", timeZone='" + this.timeZone + "', startDateTime='" + this.startDateTime + "', endDateTime='" + this.endDateTime + "', notifyTime=" + Arrays.toString(this.notifyTime) + ", eventReminders=" + this.eventReminders + ", rule='" + this.rule + "', catagory='" + this.catagory + "', status=" + this.status + ", importance=" + this.importance + ", timeMode=" + this.timeMode + ", topFlag=" + this.topFlag + '}';
    }
}
