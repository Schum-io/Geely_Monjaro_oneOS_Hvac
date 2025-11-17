package com.geely.os.uiinteraction;

import com.ecarx.xui.adaptapi.CallStatus;

/* loaded from: classes.dex */
public class GlyCallStatus {
    public static int ERROR = CallStatus.ERROR.ordinal();
    public static int FAILURE = CallStatus.FAILURE.ordinal();
    public static int NOT_IMPLEMENT = CallStatus.NOT_IMPLEMENT.ordinal();
    public static int NOT_SUPPORTED = CallStatus.NOT_SUPPORTED.ordinal();
    public static int PARAM_ERROR = CallStatus.PARAM_ERROR.ordinal();
    public static int SUCCEED = CallStatus.SUCCEED.ordinal();
    public static int TIMEOUT = CallStatus.TIMEOUT.ordinal();

    public int valueOf(String name) {
        if (CallStatus.valueOf(name) != null) {
            return CallStatus.valueOf(name).ordinal();
        }
        return ERROR;
    }

    public int[] values() {
        if (CallStatus.values() == null || CallStatus.values().length <= 0) {
            return null;
        }
        int[] iArr = new int[CallStatus.values().length];
        for (int i = 0; i < CallStatus.values().length; i++) {
            iArr[i] = CallStatus.values()[i].ordinal();
        }
        return iArr;
    }
}
