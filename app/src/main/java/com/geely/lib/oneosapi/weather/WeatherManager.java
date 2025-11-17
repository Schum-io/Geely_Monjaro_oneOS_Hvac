package com.geely.lib.oneosapi.weather;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.oneosapi.common.ServiceBaseManager;
import com.geely.lib.oneosapi.weather.IWeatherAPICallback;
import com.geely.lib.oneosapi.weather.IWeatherCallback;
import com.geely.lib.oneosapi.weather.IWeatherService;
import com.geely.lib.oneosapi.weather.bean.WeatherInfo;

/* loaded from: classes.dex */
public class WeatherManager implements ServiceBaseManager {
    private static final String TAG = "WeatherManager";
    private Context mContext;
    private IWeatherService mService;

    public static abstract class BaseWeatherAPICallback extends IWeatherAPICallback.Stub {
        @Override // com.geely.lib.oneosapi.weather.IWeatherAPICallback
        public void callback(String json) {
            Log.d(WeatherManager.TAG, "BaseWeatherAPICallback: " + json);
        }
    }

    public static abstract class BaseWeatherCallback extends IWeatherCallback.Stub {
        @Override // com.geely.lib.oneosapi.weather.IWeatherCallback
        public void callback(int code, String message, WeatherInfo info) {
            Log.d(WeatherManager.TAG, "BaseWeatherCallback() called with: code = [" + code + "], message = [" + message + "], info = [" + info + "]");
        }
    }

    public WeatherManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IWeatherService.Stub.asInterface(binder);
    }

    private boolean isServiceAlive() {
        IWeatherService iWeatherService = this.mService;
        return iWeatherService != null && iWeatherService.asBinder().isBinderAlive();
    }

    public boolean getCurrentCity() {
        if (!isServiceAlive()) {
            Log.d(TAG, "getCurrentCity: service is not alive");
            return false;
        }
        try {
            return this.mService.getCurrentCity();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public String getLocationCity() {
        if (!isServiceAlive()) {
            Log.d(TAG, "getLocationCity: service is not alive");
            return null;
        }
        try {
            return this.mService.getLocationCity();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean getLocationPermission() {
        if (!isServiceAlive()) {
            Log.d(TAG, "getLocationPermission: service is not alive");
            return false;
        }
        try {
            return this.mService.getLocationPermission();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void getWeatherByCityId(String cityID, BaseWeatherAPICallback callback) {
        if (!isServiceAlive()) {
            Log.d(TAG, "getWeatherByCityId: service is not alive");
            return;
        }
        try {
            this.mService.getWeatherByCityId(cityID, callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getWeatherByLocation(double lon, double lat, BaseWeatherAPICallback callback) {
        if (!isServiceAlive()) {
            Log.d(TAG, "getWeatherByLocation: service is not alive");
            return;
        }
        try {
            this.mService.getWeatherByLocation(lon, lat, callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getWeatherInfoByCityId(String cityID, BaseWeatherCallback callback) {
        if (!isServiceAlive()) {
            Log.d(TAG, "getWeatherInfoByCityId: service is not alive");
            return;
        }
        try {
            Log.d(TAG, "getWeatherInfoByCityId: ");
            this.mService.getWeatherInfoByCityId(cityID, callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getWeatherInfoByLocation(double lon, double lat, BaseWeatherCallback callback) {
        if (!isServiceAlive()) {
            Log.d(TAG, "getWeatherInfoByLocation: service is not alive");
            return;
        }
        try {
            Log.d(TAG, "getWeatherInfoByLocation: ");
            this.mService.getWeatherInfoByLocation(lon, lat, callback);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public boolean setCurrentCity(boolean status) {
        if (!isServiceAlive()) {
            Log.d(TAG, "setCurrentCity: service is not alive");
            return false;
        }
        try {
            return this.mService.setCurrentCity(status);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setLocationPermission(boolean status) {
        if (!isServiceAlive()) {
            Log.d(TAG, "setLocationPermission: service is not alive");
            return false;
        }
        try {
            return this.mService.setLocationPermission(status);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    @Override // com.geely.lib.oneosapi.common.ServiceBaseManager
    public void setService(IBinder binder) {
        this.mService = IWeatherService.Stub.asInterface(binder);
    }
}
