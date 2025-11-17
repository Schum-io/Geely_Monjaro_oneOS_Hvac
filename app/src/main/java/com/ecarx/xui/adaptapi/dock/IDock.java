package com.ecarx.xui.adaptapi.dock;

public interface IDock {
    boolean handOverDock(boolean isHide);
    boolean setDockCustomAppIcon(int position, byte[] image);
    boolean setDockCustomHvacIcon(int index);
}
