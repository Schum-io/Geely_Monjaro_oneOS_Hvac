package com.geely.lib.cloud.device;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.device.IDevice;
import com.geely.lib.cloud.device.data.DeviceInfo;

/* loaded from: classes.dex */
public class DeviceManager implements ServiceBaseManager {
    private static final String TAG = "DeviceManager";
    private final Context mContext;
    private IDevice mService;

    public DeviceManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IDevice.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IDevice.Stub.asInterface(binder);
        }
    }

    public void setDeviceInfo(DeviceInfo deviceInfo) {
        try {
            IDevice iDevice = this.mService;
            if (iDevice != null) {
                iDevice.setDeviceInfo(deviceInfo);
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
