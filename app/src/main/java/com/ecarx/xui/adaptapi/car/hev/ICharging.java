package com.ecarx.xui.adaptapi.car.hev;

import java.util.Calendar;

public interface ICharging {

    boolean setPreChargingTime(Calendar start, Calendar end);

    Calendar[] getPreChargingTime();

    Float[] getHistoricalDischargeCapacityValue();

    Calendar[] getHistoricalDischargeCapacityTime();

    void registerListener(IChargingListener listener);

    void unregisterListener(IChargingListener listener);

    interface IChargingListener {
        void onPreChargingTimeChanged(Calendar[] calendars);
    }
}