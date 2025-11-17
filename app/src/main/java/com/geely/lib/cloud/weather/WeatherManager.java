package com.geely.lib.cloud.weather;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.weather.IWeather;

/* loaded from: classes.dex */
public class WeatherManager implements ServiceBaseManager {
    private static final String TAG = "WeatherManager";
    private final Context mContext;
    private IWeather mService;

    public WeatherManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IWeather.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IWeather.Stub.asInterface(binder);
        }
    }

    public void getWeatherCitys(String page, final OperationListener callback) {
        Log.d(TAG, "getWeatherCitys");
        try {
            IWeather iWeather = this.mService;
            if (iWeather != null) {
                iWeather.getWeatherCitys(page, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.weather.WeatherManager.1
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.d(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void queryWeatherArea(final String location, final OperationListener callback) {
        Log.d(TAG, "queryWeatherArea location " + location);
        try {
            IWeather iWeather = this.mService;
            if (iWeather != null) {
                iWeather.queryWeatherArea(location, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.weather.WeatherManager.2
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.d(TAG, "service is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "error : " + e.getMessage());
            e.printStackTrace();
        }
    }

    public void queryWeatherManagementList(final OperationListener callback) {
        Log.d(TAG, "queryWeatherManagementList");
        try {
            IWeather iWeather = this.mService;
            if (iWeather != null) {
                iWeather.queryWeatherManagementList(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.weather.WeatherManager.3
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.d(TAG, "service is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "error : " + e.getMessage());
            e.printStackTrace();
        }
    }

    public void modifyWeatherManagementList(ModifyBindCityParam modifyBindCityParam, final OperationListener callback) {
        Log.d(TAG, "modifyWeatherManagementList");
        try {
            IWeather iWeather = this.mService;
            if (iWeather != null) {
                iWeather.modifyWeatherManagementList(modifyBindCityParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.weather.WeatherManager.4
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.d(TAG, "service is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "error : " + e.getMessage());
            e.printStackTrace();
        }
    }

    public void queryCurrentWeather(final String areaId, final OperationListener callback) {
        Log.d(TAG, "queryCurrentWeather areaId " + areaId);
        try {
            IWeather iWeather = this.mService;
            if (iWeather != null) {
                iWeather.queryCurrentWeather(areaId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.weather.WeatherManager.5
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.d(TAG, "service is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "error : " + e.getMessage());
            e.printStackTrace();
        }
    }

    public void queryMoreDaysWeather(final String areaId, final OperationListener callback) {
        Log.d(TAG, "queryMoreDaysWeather areaId " + areaId);
        try {
            IWeather iWeather = this.mService;
            if (iWeather != null) {
                iWeather.queryMoreDaysWeather(areaId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.weather.WeatherManager.6
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.d(TAG, "service is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "error : " + e.getMessage());
            e.printStackTrace();
        }
    }

    public void queryNewMoreDaysWeather(final String areaId, final OperationListener callback) {
        Log.d(TAG, "queryNewMoreDaysWeather areaId " + areaId);
        try {
            IWeather iWeather = this.mService;
            if (iWeather != null) {
                iWeather.queryNewMoreDaysWeather(areaId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.weather.WeatherManager.7
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.d(TAG, "service is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "error : " + e.getMessage());
            e.printStackTrace();
        }
    }

    public void queryHoursWeather(final String areaId, final OperationListener callback) {
        Log.d(TAG, "queryHoursWeather areaId " + areaId);
        try {
            IWeather iWeather = this.mService;
            if (iWeather != null) {
                iWeather.queryHoursWeather(areaId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.weather.WeatherManager.8
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.d(TAG, "service is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "error : " + e.getMessage());
            e.printStackTrace();
        }
    }

    public void queryAreaUpdateTime(final OperationListener callback) {
        Log.d(TAG, "queryAreaUpdateTime areaId ");
        try {
            IWeather iWeather = this.mService;
            if (iWeather != null) {
                iWeather.queryAreaUpdateTime(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.weather.WeatherManager.9
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.d(TAG, "service is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "error : " + e.getMessage());
            e.printStackTrace();
        }
    }

    public void querySunriseAndSunset(String areaId, final OperationListener callback) {
        Log.d(TAG, "querySunriseAndSunset areaId ");
        try {
            IWeather iWeather = this.mService;
            if (iWeather != null) {
                iWeather.querySunriseAndSunset(areaId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.weather.WeatherManager.10
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.d(TAG, "service is null");
            }
        } catch (RemoteException e) {
            Log.e(TAG, "error : " + e.getMessage());
            e.printStackTrace();
        }
    }
}
