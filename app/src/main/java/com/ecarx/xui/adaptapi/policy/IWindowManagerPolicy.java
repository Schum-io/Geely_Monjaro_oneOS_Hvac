package com.ecarx.xui.adaptapi.policy;

import android.view.Display;

public interface IWindowManagerPolicy {
    int getWindowTypeByCode(String windowCode);
    int getWindowTypeByCode(String windowCode, Display display);
}
