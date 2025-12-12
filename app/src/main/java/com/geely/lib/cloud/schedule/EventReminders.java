package com.geely.lib.cloud.schedule;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class EventReminders implements Parcelable {
    public static final Creator<EventReminders> CREATOR = new Creator<EventReminders>() { // from class: com.geely.lib.cloud.schedule.EventReminders.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EventReminders createFromParcel(Parcel in) {
            return new EventReminders(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public EventReminders[] newArray(int size) {
            return new EventReminders[size];
        }
    };
    private Long reminderEventID;
    private Long reminderId;
    private Long reminderMethod;
    private int reminderMinute;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public EventReminders() {
    }

    public EventReminders(Long reminderId, Long reminderEventID, int reminderMinute, Long reminderMethod) {
        this.reminderId = reminderId;
        this.reminderEventID = reminderEventID;
        this.reminderMinute = reminderMinute;
        this.reminderMethod = reminderMethod;
    }

    protected EventReminders(Parcel in) {
        if (in.readByte() == 0) {
            this.reminderId = null;
        } else {
            this.reminderId = Long.valueOf(in.readLong());
        }
        if (in.readByte() == 0) {
            this.reminderEventID = null;
        } else {
            this.reminderEventID = Long.valueOf(in.readLong());
        }
        this.reminderMinute = in.readInt();
        if (in.readByte() == 0) {
            this.reminderMethod = null;
        } else {
            this.reminderMethod = Long.valueOf(in.readLong());
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        if (this.reminderId == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeLong(this.reminderId.longValue());
        }
        if (this.reminderEventID == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeLong(this.reminderEventID.longValue());
        }
        dest.writeInt(this.reminderMinute);
        if (this.reminderMethod == null) {
            dest.writeByte((byte) 0);
        } else {
            dest.writeByte((byte) 1);
            dest.writeLong(this.reminderMethod.longValue());
        }
    }

    public Long getReminderId() {
        return this.reminderId;
    }

    public void setReminderId(Long reminderId) {
        this.reminderId = reminderId;
    }

    public Long getReminderEventID() {
        return this.reminderEventID;
    }

    public void setReminderEventID(Long reminderEventID) {
        this.reminderEventID = reminderEventID;
    }

    public int getReminderMinute() {
        return this.reminderMinute;
    }

    public void setReminderMinute(int reminderMinute) {
        this.reminderMinute = reminderMinute;
    }

    public Long getReminderMethod() {
        return this.reminderMethod;
    }

    public void setReminderMethod(Long reminderMethod) {
        this.reminderMethod = reminderMethod;
    }
}
