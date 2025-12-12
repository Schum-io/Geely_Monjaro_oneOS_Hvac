package com.geely.os.dock;

import android.content.Context;
import com.ecarx.xui.adaptapi.dock.Dock;
import com.ecarx.xui.adaptapi.dock.IDock;

/* loaded from: classes.dex */
class GlyDockImpl implements IGlyDock {
    private final IDock mDock;

    private GlyDockImpl(Context context) {
        this.mDock = Dock.create(context);
    }

    public static IGlyDock create(Context context) {
        if (context != null) {
            return new GlyDockImpl(context);
        }
        return null;
    }

    @Override // com.geely.os.dock.IGlyDock
    public boolean handOverDock(boolean isHide) {
        IDock iDock = this.mDock;
        if (iDock != null) {
            return iDock.handOverDock(isHide);
        }
        return false;
    }

    @Override // com.geely.os.dock.IGlyDock
    public boolean setDockCustomAppIcon(int position, byte[] image) {
        IDock iDock = this.mDock;
        if (iDock != null) {
            return iDock.setDockCustomAppIcon(position, image);
        }
        return false;
    }

    @Override // com.geely.os.dock.IGlyDock
    public boolean setDockCustomHvacIcon(int index) {
        IDock iDock = this.mDock;
        if (iDock != null) {
            return iDock.setDockCustomHvacIcon(index);
        }
        return false;
    }
}
