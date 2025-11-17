package com.ecarx.xui.adaptapi.policy;

import android.view.Display;

public interface IAudioAttributes {
    int getAudioAtrributesUsage(String usage);
    int getAudioAtrributesUsage(String usage, Display display);
    int getAudioAtrributesContentType(String usage);
}
