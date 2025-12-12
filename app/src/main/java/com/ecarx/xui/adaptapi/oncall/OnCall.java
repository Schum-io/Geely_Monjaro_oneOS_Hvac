package com.ecarx.xui.adaptapi.oncall;

import android.content.Context;
import com.ecarx.xui.adaptapi.FunctionStatus;

public class OnCall {
    public static OnCall create(Context context) {
        return null;
    }

    public void registerCallListener(ICallListener listener) {
    }

    public void startCall(int type) {
    }

    public FunctionStatus isOnCallSupported(int type) {
        return FunctionStatus.UNKNOWN;
    }

    public interface ICallListener {
        void onCallCreate(Call call);
        void onCallStatusChanged(int callType, int status);
    }
}