package com.geely.hvac.utils;

import android.content.Context;
import com.geely.hvac.component.Toast;

/* loaded from: classes.dex */
public interface ToastUtilViewCreate {
    void onTimeToast(Context context, Toast toast, String msg);

    void onToast(Context context, android.widget.Toast toast, String msg);
}
