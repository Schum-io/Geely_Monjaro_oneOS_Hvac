package com.geely.os.dock;

/* loaded from: classes.dex */
public interface IGlyDock {
    boolean handOverDock(boolean isHide);

    boolean setDockCustomAppIcon(int position, byte[] image);

    boolean setDockCustomHvacIcon(int index);
}
