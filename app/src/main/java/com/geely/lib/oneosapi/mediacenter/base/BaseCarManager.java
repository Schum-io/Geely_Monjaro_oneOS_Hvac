package com.geely.lib.oneosapi.mediacenter.base;

import android.content.Context;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.ICarSpeedManager;
import com.geely.lib.oneosapi.mediacenter.MediaCenterManager;
import com.geely.lib.oneosapi.mediacenter.listener.CarSpeedListener;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class BaseCarManager {
    public final CopyOnWriteArrayList<CarSpeedListener> mCarSpeedListenerList = new CopyOnWriteArrayList<>();
    private final Context mContext;
    public final MediaCenterManager mMediaCenterManager;
    private ICarSpeedManager mService;

    public BaseCarManager(Context context, ICarSpeedManager service, MediaCenterManager mediaCenterManager) {
        this.mContext = context;
        initService(service);
        this.mMediaCenterManager = mediaCenterManager;
    }

    private void initService(ICarSpeedManager service) {
        this.mService = service;
    }

    public void addCarSpeedChangeListener(CarSpeedListener listener) {
        this.mCarSpeedListenerList.add(listener);
    }

    public boolean isTrad() {
        ICarSpeedManager iCarSpeedManager = this.mService;
        if (iCarSpeedManager == null) {
            return false;
        }
        try {
            return iCarSpeedManager.isTrad();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void removeCarSpeedChangeListener(CarSpeedListener listener) {
        this.mCarSpeedListenerList.remove(listener);
    }

    public void setService(ICarSpeedManager service) {
        initService(service);
    }
}
