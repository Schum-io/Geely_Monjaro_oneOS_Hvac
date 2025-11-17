package com.geely.os.car;

import java.util.Calendar;

/* loaded from: classes.dex */
public interface IGlySuperHybridListener {
    void onBookChargingChanged(Calendar startTime, Calendar stopTime, int switchStatus, int startPriority, int stopPriority);

    void onBookChargingChangedError();

    void onSetBookChargingResult(int result);

    void onSetBookChargingResultError();
}
