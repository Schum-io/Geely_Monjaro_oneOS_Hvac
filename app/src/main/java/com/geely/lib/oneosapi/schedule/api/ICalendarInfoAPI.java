package com.geely.lib.oneosapi.schedule.api;

import com.geely.lib.oneosapi.schedule.bean.CPAddScheduleBean;
import com.geely.lib.oneosapi.schedule.bean.CPQueryScheduleBean;

/* loaded from: classes.dex */
public interface ICalendarInfoAPI {
    int getAllCalendarEvent();

    int getCalendarEventByTime(CPAddScheduleBean info);

    CPQueryScheduleBean getCalendarEventNextTime();

    CPQueryScheduleBean getCalendarEventTime(CPAddScheduleBean info);

    void getCalendarEvents(CPCallbackInterface callback);

    void getCalendarImportEvents(CPCallbackInterface callback);

    void launchAddImportSchedule();

    void launchAddImportScheduleParameter(long eventID);

    void launchAddSchedule(int flag);

    void launchAddScheduleParameter(long eventID);

    void launchScheduleHome();

    int setAddCalendarEvent(CPAddScheduleBean info);
}
