package com.geely.lib.oneosapi.smart;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.oneosapi.common.ServiceBaseManager;
import com.geely.lib.oneosapi.smart.IResultCallback;
import com.geely.lib.oneosapi.smart.ISmartApi;
import com.geely.lib.oneosapi.smart.api.scene.IGetSceneListCallBack;
import com.geely.lib.oneosapi.smart.api.scene.ISceneChangeCallBack;

/* loaded from: classes.dex */
public class SmartHomeManager implements ServiceBaseManager {
    private static final String TAG = "SmartHomeManager";
    private Context mContext;
    private ISmartApi mService;

    public static abstract class BaseSmartHomeAPICallback extends IResultCallback.Stub {
        @Override // com.geely.lib.oneosapi.smart.IResultCallback
        public void callback(int code, String message) {
            Log.d(SmartHomeManager.TAG, "BaseSmartHomeAPICallback: code=" + code + "/message=" + message);
        }
    }

    public SmartHomeManager(Context mContext, IBinder binder) {
        this.mContext = mContext;
        this.mService = ISmartApi.Stub.asInterface(binder);
    }

    private boolean isServiceAlive() {
        ISmartApi iSmartApi = this.mService;
        return iSmartApi != null && iSmartApi.asBinder().isBinderAlive();
    }

    public void controlACTemp(String location, String setType, int targetTemp, int adjustTemp, BaseSmartHomeAPICallback callback) {
        if (!isServiceAlive()) {
            Log.d(TAG, "controlACTemp: service is not alive");
            return;
        }
        try {
            this.mService.controlACTemp(location, setType, targetTemp, adjustTemp, callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void controlDeviceMode(String location, int deviceType, int mode, BaseSmartHomeAPICallback callback) {
        if (!isServiceAlive()) {
            Log.d(TAG, "controlDeviceMode: service is not alive");
            return;
        }
        try {
            this.mService.controlDeviceMode(location, deviceType, mode, callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void controlDeviceSpeed(String location, int deviceType, int speed, BaseSmartHomeAPICallback callback) {
        if (!isServiceAlive()) {
            Log.d(TAG, "controlDeviceSpeed: service is not alive");
            return;
        }
        try {
            this.mService.controlDeviceSpeed(location, deviceType, speed, callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void controlDeviceSpeedNew(String location, int deviceType, String setType, int speed, int adjustSpeed, IResultCallback callback) {
        if (!isServiceAlive()) {
            Log.d(TAG, "controlDeviceSpeedNew: service is not alive");
            return;
        }
        try {
            this.mService.controlDeviceSpeedNew(location, deviceType, setType, speed, adjustSpeed, callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void controlDeviceSwitch(String location, int deviceType, boolean isOpen, BaseSmartHomeAPICallback callback) {
        if (!isServiceAlive()) {
            Log.d(TAG, "controlDeviceSwitch: service is not alive");
            return;
        }
        try {
            this.mService.controlDeviceSwitch(location, deviceType, isOpen, callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void controlSceneMode(boolean isOpen, String sceneName, BaseSmartHomeAPICallback callback) {
        if (!isServiceAlive()) {
            Log.d(TAG, "controlSceneMode: service is not alive");
            return;
        }
        try {
            this.mService.controlSceneMode(isOpen, sceneName, callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getAllSceneList(IGetSceneListCallBack callback) {
        if (callback == null) {
            return;
        }
        if (!isServiceAlive()) {
            Log.d(TAG, "getAllSceneList: service is not alive");
            return;
        }
        try {
            this.mService.getAllSceneList(callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void registerSceneChangeListener(ISceneChangeCallBack callback) {
        if (callback == null) {
            return;
        }
        if (!isServiceAlive()) {
            Log.d(TAG, "registerSceneChangeListener: service is not alive");
            return;
        }
        try {
            this.mService.registerSceneChangeListener(callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.geely.lib.oneosapi.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = ISmartApi.Stub.asInterface(binder);
        }
    }

    public void unregisterSceneChangeListener(ISceneChangeCallBack callback) {
        if (callback == null) {
            return;
        }
        if (!isServiceAlive()) {
            Log.d(TAG, "unregisterSceneChangeListener: service is not alive");
            return;
        }
        try {
            this.mService.unregisterSceneChangeListener(callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
