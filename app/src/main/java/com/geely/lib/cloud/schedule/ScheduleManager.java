package com.geely.lib.cloud.schedule;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.schedule.ISchedule;

/* loaded from: classes.dex */
public class ScheduleManager implements ServiceBaseManager {
    private static final String TAG = "ScheduleManager";
    private final Context mContext;
    private ISchedule mService;

    public ScheduleManager(Context context, IBinder binder) {
        Log.d(TAG, "ScheduleManager create");
        this.mContext = context;
        this.mService = ISchedule.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        Log.d(TAG, "ScheduleManager setService");
        if (binder != null) {
            this.mService = ISchedule.Stub.asInterface(binder);
        }
    }

    public void getScheduleSwitchStatus(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getScheduleSwitchStatus");
        ISchedule iSchedule = this.mService;
        if (iSchedule != null) {
            iSchedule.getScheduleSwitchStatus(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.schedule.ScheduleManager.1
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
            Log.d(TAG, "mService is null");
        }
    }

    public void getScheduleReportSwitchStatus(final DailyFlagParam dailyFlag, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getScheduleReportSwitchStatus");
        ISchedule iSchedule = this.mService;
        if (iSchedule != null) {
            iSchedule.getScheduleReportSwitchStatus(dailyFlag, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.schedule.ScheduleManager.2
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
            Log.d(TAG, "mService is null");
        }
    }

    public void getReportSchedule(final DailyListParam dailyList, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getReportSchedule");
        ISchedule iSchedule = this.mService;
        if (iSchedule != null) {
            iSchedule.getReportSchedule(dailyList, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.schedule.ScheduleManager.3
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
            Log.d(TAG, "mService is null");
        }
    }

    public void getMachineAskSchedule(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getMachineAskSchedule");
        ISchedule iSchedule = this.mService;
        if (iSchedule != null) {
            iSchedule.getMachineAskSchedule(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.schedule.ScheduleManager.4
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
            Log.d(TAG, "mService is null");
        }
    }

    public void getMachineReportSchedule(final DailyListParam dailyList, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getMachineReportSchedule");
        ISchedule iSchedule = this.mService;
        if (iSchedule != null) {
            iSchedule.getMachineReportSchedule(dailyList, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.schedule.ScheduleManager.5
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
            Log.d(TAG, "mService is null");
        }
    }
}
