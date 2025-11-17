package com.ecarx.xui.adaptapi.uiinteraction;

import android.view.Display;
import com.ecarx.xui.adaptapi.FunctionStatus;

public interface IUiInteraction {
    IFreeFormWindowManager getFreeFormWindowManager();
    IMultiWindowManager getMultiWindowManager();
    ITouchManager getTouchManager();
    IWindowManager getWindowManager();
    FunctionStatus startApplicationToDisplay(String pkg, Display from, Display target);
}