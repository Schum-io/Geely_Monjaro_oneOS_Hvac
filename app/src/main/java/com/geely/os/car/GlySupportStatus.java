package com.geely.os.car;

/* loaded from: classes.dex */
public class GlySupportStatus {
    public static int active = 0;
    public static int error = 3;
    public static int notactive = 1;
    public static int notavailable = 2;

    public static String toString(int status) {
        return status == active ? "active" : status == notactive ? "notactive" : status == notavailable ? "notavailable" : "error";
    }
}
