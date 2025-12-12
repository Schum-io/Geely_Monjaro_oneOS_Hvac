package com.geely.os.uiinteraction;

import android.view.Display;

/* loaded from: classes.dex */
public interface IGlyUiInteraction {
    IGlyFreeFormWindow getFreeFormWindowManager();

    IGlyMultiWindow getMultiWindowManager();

    IGlyTouchManager getTouchManager();

    IGlyWindowManager getWindowManager();

    int startApplicationToDisplay(String pkg, Display from, Display target);
}
