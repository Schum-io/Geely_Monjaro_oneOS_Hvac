package com.ecarx.xui.adaptapi.policy;

import android.content.Context;

public class Policy {
    public static Policy create(Context context) {
        return new Policy();
    }

    public IWindowManagerPolicy getWindowManagerPolicy() {
        return null;
    }

    public IAudioAttributes getAudioAttributes() {
        return null;
    }
}
