package com.geely.lib.cloud.filmhall;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.filmhall.IFilmHall;
import com.geely.lib.cloud.listener.OperationListener;

/* loaded from: classes.dex */
public class FilmHallManager implements ServiceBaseManager {
    private static final String TAG = "FilmHallManager";
    private final Context mContext;
    private IFilmHall mService;

    public FilmHallManager(Context context, IBinder binder) {
        this.mContext = context;
        this.mService = IFilmHall.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IFilmHall.Stub.asInterface(binder);
        }
    }

    public void getDailyRecommend(final String vipType, final String passportId, final String channelList, final String currentPage, final OperationListener callback) {
        Log.d(TAG, "getDailyRecommend");
        try {
            IFilmHall iFilmHall = this.mService;
            if (iFilmHall != null) {
                iFilmHall.getDailyRecommend(vipType, passportId, channelList, currentPage, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.filmhall.FilmHallManager.1
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

    public void getRankCharts(final OperationListener callback) {
        Log.d(TAG, "getRankCharts");
        try {
            IFilmHall iFilmHall = this.mService;
            if (iFilmHall != null) {
                iFilmHall.getRankCharts(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.filmhall.FilmHallManager.2
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
}
