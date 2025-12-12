package com.geely.lib.cloud.maintain;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.maintain.IMaintain;

/* loaded from: classes.dex */
public class MaintainManager implements ServiceBaseManager {
    private static final String TAG = "MaintainManager";
    private final Context mContext;
    private IMaintain mService;

    public MaintainManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IMaintain.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IMaintain.Stub.asInterface(binder);
        }
    }

    public void getMaintainLastDate(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getMaintainLastDate");
        IMaintain iMaintain = this.mService;
        if (iMaintain != null) {
            iMaintain.getMaintainLastDate(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.1
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "service is null");
        }
    }

    public void getMaintainLastMileage(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getMaintainLastMileage");
        IMaintain iMaintain = this.mService;
        if (iMaintain != null) {
            iMaintain.getMaintainLastMileage(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.2
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "service is null");
        }
    }

    public void getMaintainNextMileage(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getMaintainNextMileage");
        IMaintain iMaintain = this.mService;
        if (iMaintain != null) {
            iMaintain.getMaintainNextMileage(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.3
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "service is null");
        }
    }

    public void getDriveData(String startTime, String endTime, final OperationListener callback) {
        try {
            Log.d(TAG, "getDriveData");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getDriveData(startTime, endTime, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.4
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getDriveHistoryData(String startTime, String endTime, final OperationListener callback) {
        try {
            Log.d(TAG, "getDriveHistoryData");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getDriveHistoryData(startTime, endTime, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.5
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getDriveQueryReport(String startTime, String endTime, final OperationListener callback) {
        try {
            Log.d(TAG, "getDriveQueryReport");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getDriveQueryReport(startTime, endTime, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.6
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getDriveQueryTrack(String trackId, final OperationListener callback) {
        try {
            Log.d(TAG, "getDriveQueryTrack");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getDriveQueryTrack(trackId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.7
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getDriveSuggestion(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getDriveSuggestion");
        IMaintain iMaintain = this.mService;
        if (iMaintain != null) {
            iMaintain.getDriveSuggestion(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.8
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "service is null");
        }
    }

    public void getEnergyConsumptionHistory(String startTime, String endTime, final OperationListener callback) {
        try {
            Log.d(TAG, "getEnergyConsumptionHistory");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getEnergyConsumptionHistory(startTime, endTime, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.9
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getEnergyConsumptionToday(final OperationListener callback) {
        try {
            Log.d(TAG, "getEnergyConsumptionToday");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getEnergyConsumptionToday(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.10
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getMaintainHistory(final OperationListener callback) {
        try {
            Log.d(TAG, "getMaintainHistory");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getMaintainHistory(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.11
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getMyCarInfo(final OperationListener callback) {
        try {
            Log.d(TAG, "getMyCarInfo");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getMyCarInfo(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.12
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getDayAndMonthSum(final OperationListener callback) {
        try {
            Log.d(TAG, "getDayAndMonthSum");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getDayAndMonthSum(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.13
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getDayEnergyAvg(String localDate, final OperationListener callback) {
        try {
            Log.d(TAG, "getDayEnergyAvg");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getDayEnergyAvg(localDate, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.14
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getMonthEnergyAvg(String localDate, final OperationListener callback) {
        try {
            Log.d(TAG, "getMonthEnergyAvg");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getMonthEnergyAvg(localDate, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.15
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getCarMaintain(final OperationListener callback) {
        try {
            Log.d(TAG, "getCarMaintain");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getCarMaintain(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.16
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getCarDistributor(String longitude, String latitude, int operatorCode, final OperationListener callback) {
        try {
            Log.d(TAG, "getCarDistributor");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getCarDistributor(longitude, latitude, operatorCode, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.17
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getCarRanking(String vehicleSeries, String vehicleSeriesName, final OperationListener callback) {
        try {
            Log.d(TAG, "getCarRanking");
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getCarRanking(vehicleSeries, vehicleSeriesName, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.18
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
                Log.d(TAG, "mService is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getYearEnergyAvg(final OperationListener callback) {
        Log.d(TAG, "getYearEnergyAvg");
        try {
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getYearEnergyAvg(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.19
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
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getWeekAndMonthEnergy(final OperationListener callback) {
        Log.d(TAG, "getWeekAndMonthEnergy");
        try {
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getWeekAndMonthEnergy(onComCall(callback));
                return;
            }
            if (callback != null) {
                callback.onFail("service is null");
            }
            Log.e(TAG, "service is null");
        } catch (RemoteException e) {
            e.printStackTrace();
            if (callback != null) {
                callback.onFail(e.getMessage());
            }
        }
    }

    public void getDayEnergySum(String localDate, final OperationListener callback) {
        Log.d(TAG, "getDayEnergySum");
        try {
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getDayEnergySum(localDate, onComCall(callback));
                return;
            }
            if (callback != null) {
                callback.onFail("service is null");
            }
            Log.e(TAG, "service is null");
        } catch (RemoteException e) {
            e.printStackTrace();
            if (callback != null) {
                callback.onFail(e.getMessage());
            }
        }
    }

    public void getMonthEnergySum(String localDate, final OperationListener callback) {
        Log.d(TAG, "getMonthEnergySum");
        try {
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getMonthEnergySum(localDate, onComCall(callback));
            } else if (callback != null) {
                callback.onFail("service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
            if (callback != null) {
                callback.onFail(e.getMessage());
            }
        }
    }

    public void getYearEnergySum(final OperationListener callback) {
        Log.d(TAG, "getYearEnergySum");
        try {
            IMaintain iMaintain = this.mService;
            if (iMaintain != null) {
                iMaintain.getYearEnergySum(onComCall(callback));
            } else if (callback != null) {
                callback.onFail("service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
            if (callback != null) {
                callback.onFail(e.getMessage());
            }
        }
    }

    private ICloudCallback onComCall(final OperationListener callback) {
        return new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.maintain.MaintainManager.20
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
        };
    }
}
