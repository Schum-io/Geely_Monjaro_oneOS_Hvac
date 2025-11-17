package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface VrStatus {
    public static final int VR_STATUS_DRIVER = 1;
    public static final int VR_STATUS_IDLE = 0;
    public static final int VR_STATUS_LISTENING = -1;
    public static final int VR_STATUS_PASSENGER = 2;
    public static final int VR_STATUS_PROCESSING = -2;
    public static final int VR_STATUS_PROMTING = -4;
    public static final int VR_STATUS_TTS = 3;
    public static final int VR_STATUS_WAITING = Integer.MIN_VALUE;
}
