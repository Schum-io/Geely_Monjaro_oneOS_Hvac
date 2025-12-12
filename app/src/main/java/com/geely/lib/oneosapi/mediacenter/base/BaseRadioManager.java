package com.geely.lib.oneosapi.mediacenter.base;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.oneosapi.mediacenter.IRadioManager;
import com.geely.lib.oneosapi.mediacenter.MediaCenterManager;
import com.geely.lib.oneosapi.mediacenter.bean.Frequency;
import com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant;
import com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class BaseRadioManager {
    private final Context mContext;
    public final MediaCenterManager mMediaCenterManager;
    private IRadioManager mService;
    public final List<IRadioStateListener> mRadioStateListeners = new ArrayList();
    public final RadioStateListenerImpl mRadioStateListenerImpl = new RadioStateListenerImpl(this);
    public final RadioStateListenerImpl mPsdRadioStateListenerImpl = new RadioStateListenerImpl(true);
    private Handler mHandler = new Handler(Looper.getMainLooper());

    public class RadioStateListenerImpl extends IRadioStateListener.Stub {
        private final boolean isPsdCallback;

        public RadioStateListenerImpl(final BaseRadioManager this$0) {
            this(false);
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCarouselPlayStart(boolean succeeded) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onCarouselPlayStart(succeeded);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCarouserPlayStop(int frequency) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onCarouserPlayStop(frequency);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCarouserWaiting(int frequency, long leftTime) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onCarouserWaiting(frequency, leftTime);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCollectionStationListChanged(List<Frequency> frequencyList) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onCollectionStationListChanged(frequencyList);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCollectionStationListReachesMax() throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onCollectionStationListReachesMax();
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCurrentBand(int band) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onCurrentBand(band);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCurrentFrequency(int frequency) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onCurrentFrequency(frequency);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onOpenRadioResult(boolean succeeded) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onOpenRadioResult(succeeded);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onRadioClosed(boolean succeeded) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onRadioClosed(succeeded);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onRadioError(int errorCode) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onRadioError(errorCode);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onRadioMuteState(int state) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onRadioMuteState(state);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onRadioNameListChanged(List<Frequency> frequencyList) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onRadioNameListChanged(frequencyList);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onRadioStatusChanged(int status) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onRadioStatusChanged(status);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onScanStarted(int direction) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onScanStarted(direction);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onScanStationListChanged(List<Frequency> frequencyList) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onScanStationListChanged(frequencyList);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onScanStopped(boolean succeeded) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onScanStopped(succeeded);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onSeekStarted(int direction) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onSeekStarted(direction);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onSeekStopped(boolean succeeded) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onSeekStopped(succeeded);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onSignalQualityChanged(int level) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onSignalQualityChanged(level);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onStationFrequency(int frequency) throws RemoteException {
            if (this.isPsdCallback != BaseRadioManager.this.mMediaCenterManager.isPsdMode()) {
                return;
            }
            synchronized (BaseRadioManager.this.mRadioStateListeners) {
                Iterator<IRadioStateListener> it = BaseRadioManager.this.mRadioStateListeners.iterator();
                while (it.hasNext()) {
                    it.next().onStationFrequency(frequency);
                }
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener.Stub, android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            try {
                return super.onTransact(code, data, reply, flags);
            } catch (RuntimeException e) {
                Log.e("BaseRadioManager", "onTransact: ", e);
                return false;
            }
        }

        public RadioStateListenerImpl(boolean isPsdCallback) {
            this.isPsdCallback = isPsdCallback;
        }
    }

    public BaseRadioManager(Context context, IRadioManager service, MediaCenterManager mediaCenterManager) {
        this.mContext = context;
        initService(service);
        this.mMediaCenterManager = mediaCenterManager;
    }

    public boolean addCollectionStation(int frequency, boolean ifDelete) {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.addCollectionStation(frequency, ifDelete);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean closeRadio(IRadioStateListener cb) {
        return this.mRadioStateListeners.remove(cb);
    }

    public int getBand() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return 0;
        }
        try {
            return iRadioManager.getBand();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public List<Frequency> getCollectionStationsList() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return null;
        }
        try {
            return iRadioManager.getCollectionStationsList();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public MediaCenterConstant.AudioSource getCurrentAudioSource() {
        return this.mMediaCenterManager.getCurrentAudioSource();
    }

    public int getFrequency() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return 0;
        }
        try {
            return iRadioManager.getFrequency();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public List<Frequency> getRadioStationsNameList() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return null;
        }
        try {
            return iRadioManager.getRadioStationsNameList();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getRadioStatus() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return 0;
        }
        try {
            return iRadioManager.getRadioStatus();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public List<Frequency> getScanStationsList() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return null;
        }
        try {
            return iRadioManager.getScanStationsList();
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void initService(IRadioManager service) {
        this.mService = service;
        if (service != null) {
            try {
                service.openRadioAsync(this.mRadioStateListenerImpl);
                this.mService.openPsdRadioAsync(this.mPsdRadioStateListenerImpl);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public boolean isAlive() {
        return this.mService != null;
    }

    public boolean isFirstUseRadio() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.isFirstUseRadio();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean openRadioAsync(IRadioStateListener cb) {
        return this.mRadioStateListeners.add(cb);
    }

    public boolean pause() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.pause();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean play() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.play();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public int playRadioFavor() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return 0;
        }
        try {
            return iRadioManager.playRadioFavor();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public boolean scanAsync() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.scanAsync();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean seekAsync(int direction) {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.seekAsync(direction);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setBandAsync(int newBand) {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.setBandAsync(newBand);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean setFrequency(int frequency) {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.setFrequency(frequency);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void setService(IRadioManager service) {
        initService(service);
    }

    public boolean startCarouselPlay(int time) {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.startCarouselPlay(time);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean stopCarouselPlay() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.stopCarouselPlay();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean stopSeekOrScanAsync() {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.stopSeekOrScanAsync();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean toNextStation(int direction) {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.toNextStation(direction);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean tuneAsync(int direction) {
        IRadioManager iRadioManager = this.mService;
        if (iRadioManager == null) {
            return false;
        }
        try {
            return iRadioManager.tuneAsync(direction);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }
}
