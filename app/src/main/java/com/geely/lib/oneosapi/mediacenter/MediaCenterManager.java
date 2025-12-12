package com.geely.lib.oneosapi.mediacenter;

import android.content.Context;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.oneosapi.common.ServiceBaseManager;
import com.geely.lib.oneosapi.mediacenter.IHeartbeatPacket;
import com.geely.lib.oneosapi.mediacenter.IMediaCenter;
import com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager;
import com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant;
import com.geely.lib.oneosapi.mediacenter.listener.IRebootPlayChangeListener;
import com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener;
import com.geely.lib.oneosapi.mediacenter.listener.RebootPlayChangeListener;
import com.geely.lib.oneosapi.mediacenter.listener.SourceStateListener;
import com.geely.lib.oneosapi.mediacenter.manager.BtMusicManager;
import com.geely.lib.oneosapi.mediacenter.manager.CarManager;
import com.geely.lib.oneosapi.mediacenter.manager.MusicAdapterManager;
import com.geely.lib.oneosapi.mediacenter.manager.OnlineMusicManager;
import com.geely.lib.oneosapi.mediacenter.manager.RadioManager;
import com.geely.lib.oneosapi.mediacenter.manager.UsbMusicManager;
import com.geely.lib.oneosapi.mediacenter.manager.YunTingManager;
import com.geely.lib.oneosapi.mediacenter.vr.VrAdapterManager;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class MediaCenterManager implements ServiceBaseManager {
    private static final String TAG = "MediaCenterManager";
    private final BtMusicManager mBtMusicManager;
    private final CarManager mCarManager;
    private Context mContext;
    private final Handler mHandler;
    private final MusicAdapterManager mMusicAdapterManager;
    private final Map<MediaCenterConstant.AudioSource, BaseMusicManager> mMusicManagerMap;
    private final OnlineMusicManager mOnlineMusicManager;
    private MediaCenterManager mPsdMediaCenterManager;
    private boolean mPsdMode;
    private final RadioManager mRadioManager;
    private final RebootPlayChangeListenerImpl mRebootPlayChangeListenerImpl;
    private final CopyOnWriteArrayList<RebootPlayChangeListener> mRebootPlayChangeListeners;
    private IMediaCenter mService;
    private final UsbMusicManager mUsbMusicManager;
    private final VrAdapterManager mVrAdapterManager;
    private final YunTingManager mYunTingManager;
    private final CopyOnWriteArrayList<SourceStateListener> mSourceStateListeners = new CopyOnWriteArrayList<>();
    private final SourceStateListenerImpl mSourceStateListenerImpl = new SourceStateListenerImpl(this);
    private final SourceStateListenerImpl mPsdSourceStateListenerImpl = new SourceStateListenerImpl(true);

    public class RebootPlayChangeListenerImpl extends IRebootPlayChangeListener.Stub {
        public RebootPlayChangeListenerImpl() {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRebootPlayChangeListener
        public void onRebootPlayChanged(final int rebootPlayValue) throws RemoteException {
            MediaCenterManager.this.mHandler.post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.MediaCenterManager.RebootPlayChangeListenerImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = MediaCenterManager.this.mRebootPlayChangeListeners.iterator();
                    while (it.hasNext()) {
                        ((RebootPlayChangeListener) it.next()).onRebootPlayChanged(MediaCenterConstant.getRebootPlay(rebootPlayValue));
                    }
                }
            });
        }
    }

    public class SourceStateListenerImpl extends ISourceStateListener.Stub {
        private final boolean isPsdCallback;

        public SourceStateListenerImpl(final MediaCenterManager this$0) {
            this(false);
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener
        public void onPsdBtStateChanged(final boolean connected) throws RemoteException {
            if (this.isPsdCallback != MediaCenterManager.this.isPsdMode()) {
                return;
            }
            MediaCenterManager.this.mHandler.post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.MediaCenterManager.SourceStateListenerImpl.2
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = MediaCenterManager.this.mSourceStateListeners.iterator();
                    while (it.hasNext()) {
                        ((SourceStateListener) it.next()).onPsdBtStateChanged(connected);
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener
        public void onSourceChanged(final int audioSource, final int appSource) throws RemoteException {
            if (this.isPsdCallback != MediaCenterManager.this.isPsdMode()) {
                return;
            }
            MediaCenterManager.this.mHandler.post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.MediaCenterManager.SourceStateListenerImpl.1
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = MediaCenterManager.this.mSourceStateListeners.iterator();
                    while (it.hasNext()) {
                        ((SourceStateListener) it.next()).onSourceChanged(MediaCenterConstant.getAudioSourceEnum(audioSource), MediaCenterConstant.getAppSourceEnum(appSource));
                    }
                }
            });
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener.Stub, android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            try {
                return super.onTransact(code, data, reply, flags);
            } catch (RuntimeException e) {
                Log.e(MediaCenterManager.TAG, "onTransact: ", e);
                return false;
            }
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener
        public void onWeCarFlowTabChanged(final int audioSource, final int appSource) throws RemoteException {
            if (this.isPsdCallback != MediaCenterManager.this.isPsdMode()) {
                return;
            }
            MediaCenterManager.this.mHandler.post(new Runnable() { // from class: com.geely.lib.oneosapi.mediacenter.MediaCenterManager.SourceStateListenerImpl.3
                @Override // java.lang.Runnable
                public void run() {
                    Iterator it = MediaCenterManager.this.mSourceStateListeners.iterator();
                    while (it.hasNext()) {
                        ((SourceStateListener) it.next()).onWeCarFlowTabChanged(MediaCenterConstant.getAudioSourceEnum(audioSource), MediaCenterConstant.getAppSourceEnum(appSource));
                    }
                }
            });
        }

        public SourceStateListenerImpl(boolean isPsdCallback) {
            this.isPsdCallback = isPsdCallback;
        }
    }

    public MediaCenterManager(Context context, IBinder binder) {
        Map<MediaCenterConstant.AudioSource, BaseMusicManager> mapSynchronizedMap = Collections.synchronizedMap(new HashMap());
        this.mMusicManagerMap = mapSynchronizedMap;
        this.mRebootPlayChangeListeners = new CopyOnWriteArrayList<>();
        this.mRebootPlayChangeListenerImpl = new RebootPlayChangeListenerImpl();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mContext = context;
        BtMusicManager btMusicManager = new BtMusicManager(context, null, this);
        this.mBtMusicManager = btMusicManager;
        mapSynchronizedMap.put(MediaCenterConstant.AudioSource.AUDIO_SOURCE_BT, btMusicManager);
        UsbMusicManager usbMusicManager = new UsbMusicManager(this.mContext, null, this);
        this.mUsbMusicManager = usbMusicManager;
        mapSynchronizedMap.put(MediaCenterConstant.AudioSource.AUDIO_SOURCE_USB, usbMusicManager);
        OnlineMusicManager onlineMusicManager = new OnlineMusicManager(this.mContext, null, this);
        this.mOnlineMusicManager = onlineMusicManager;
        mapSynchronizedMap.put(MediaCenterConstant.AudioSource.AUDIO_SOURCE_ONLINE, onlineMusicManager);
        YunTingManager yunTingManager = new YunTingManager(this.mContext, null, this);
        this.mYunTingManager = yunTingManager;
        mapSynchronizedMap.put(MediaCenterConstant.AudioSource.AUDIO_SOURCE_YUNTING, yunTingManager);
        this.mRadioManager = new RadioManager(this.mContext, null, this);
        this.mCarManager = new CarManager(this.mContext, null, this);
        initMediaCenterManger(binder);
        this.mVrAdapterManager = new VrAdapterManager(context, this);
        this.mMusicAdapterManager = new MusicAdapterManager(context, this);
    }

    private void initCarManager() {
        IMediaCenter iMediaCenter = this.mService;
        if (iMediaCenter != null) {
            try {
                this.mCarManager.setService(iMediaCenter.getCarManager());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void initMediaCenterManger(IBinder binder) {
        if (binder == null) {
            notifyMediaCenterDied();
            return;
        }
        this.mService = IMediaCenter.Stub.asInterface(binder);
        initMusicManager();
        initRadioManager();
        initCarManager();
        try {
            this.mService.addSourceStateListener(this.mSourceStateListenerImpl);
            this.mService.addPsdSourceStateListener(this.mPsdSourceStateListenerImpl);
            this.mService.addRebootPlayChangeListener(this.mRebootPlayChangeListenerImpl);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    private void initMusicManager() {
        Log.d(TAG, "initMusicManager() called " + this.mService);
        IMediaCenter iMediaCenter = this.mService;
        if (iMediaCenter != null) {
            try {
                IMusicManager musicManager = iMediaCenter.getMusicManager();
                this.mOnlineMusicManager.setService(musicManager);
                this.mUsbMusicManager.setService(musicManager);
                this.mBtMusicManager.setService(musicManager);
                this.mYunTingManager.setService(musicManager);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void initRadioManager() {
        IMediaCenter iMediaCenter = this.mService;
        if (iMediaCenter != null) {
            try {
                this.mRadioManager.setService(iMediaCenter.getRadioManager());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    private void notifyMediaCenterDied() {
        this.mService = null;
        BtMusicManager btMusicManager = this.mBtMusicManager;
        if (btMusicManager != null) {
            btMusicManager.setService(null);
        }
        UsbMusicManager usbMusicManager = this.mUsbMusicManager;
        if (usbMusicManager != null) {
            usbMusicManager.setService(null);
        }
        OnlineMusicManager onlineMusicManager = this.mOnlineMusicManager;
        if (onlineMusicManager != null) {
            onlineMusicManager.setService(null);
        }
        RadioManager radioManager = this.mRadioManager;
        if (radioManager != null) {
            radioManager.setService(null);
        }
    }

    public void addRebootPlayChangeListener(RebootPlayChangeListener listener) {
        if (listener == null || this.mRebootPlayChangeListeners.contains(listener)) {
            return;
        }
        this.mRebootPlayChangeListeners.add(listener);
    }

    public void addSourceStateListener(SourceStateListener listener) {
        if (listener == null || this.mSourceStateListeners.contains(listener)) {
            return;
        }
        this.mSourceStateListeners.add(listener);
    }

    public String getAppPackageName(MediaCenterConstant.AudioSource audioSource, MediaCenterConstant.AppSource appSource) {
        IMediaCenter iMediaCenter = this.mService;
        if (iMediaCenter == null) {
            return null;
        }
        try {
            return iMediaCenter.getAppPackageName(audioSource.ordinal(), appSource.ordinal());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public BtMusicManager getBtMusicManager() {
        return this.mBtMusicManager;
    }

    public CarManager getCarManager() {
        return this.mCarManager;
    }

    public MediaCenterConstant.AppSource getCurrentAppSource() {
        if (this.mService != null) {
            try {
                return MediaCenterConstant.getAppSourceEnum(isPsdMode() ? this.mService.getCurrentPsdAppSource() : this.mService.getCurrentAppSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return MediaCenterConstant.AppSource.UNKNOWN;
    }

    public MediaCenterConstant.AudioSource getCurrentAudioSource() {
        if (this.mService != null) {
            try {
                return MediaCenterConstant.getAudioSourceEnum(isPsdMode() ? this.mService.getCurrentPsdAudioSource() : this.mService.getCurrentAudioSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return MediaCenterConstant.AudioSource.AUDIO_SOURCE_UNKNOWN;
    }

    public MediaCenterConstant.AppSource getFocusedAppSource() {
        if (this.mService != null) {
            try {
                return MediaCenterConstant.getAppSourceEnum(isPsdMode() ? this.mService.getPsdFocusedAppSource() : this.mService.getFocusedAppSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return MediaCenterConstant.AppSource.UNKNOWN;
    }

    public MediaCenterConstant.AudioSource getFocusedAudioSource() {
        if (this.mService != null) {
            try {
                return MediaCenterConstant.getAudioSourceEnum(isPsdMode() ? this.mService.getPsdFocusedAudioSource() : this.mService.getFocusedAudioSource());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return MediaCenterConstant.AudioSource.AUDIO_SOURCE_UNKNOWN;
    }

    public MusicAdapterManager getMusicAdapterManager() {
        return this.mMusicAdapterManager;
    }

    public Map<MediaCenterConstant.AudioSource, BaseMusicManager> getMusicManagerMap() {
        return this.mMusicManagerMap;
    }

    public OnlineMusicManager getOnlineMusicManager() {
        return this.mOnlineMusicManager;
    }

    public MediaCenterManager getPsdMediaCenter() {
        if (this.mPsdMediaCenterManager == null) {
            this.mPsdMediaCenterManager = new MediaCenterManager(this.mContext, this.mService.asBinder());
        }
        this.mPsdMediaCenterManager.setPsdMode(true);
        return this.mPsdMediaCenterManager;
    }

    public RadioManager getRadioManager() {
        return this.mRadioManager;
    }

    public MediaCenterConstant.RebootPlay getRebootPlay() {
        if (this.mService != null) {
            try {
                Log.d(TAG, "getRebootPlay() called by " + this.mContext.getPackageName());
                return MediaCenterConstant.getRebootPlay(this.mService.getRebootPlay());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        return MediaCenterConstant.RebootPlay.OFF;
    }

    public UsbMusicManager getUsbMusicManager() {
        return this.mUsbMusicManager;
    }

    public VrAdapterManager getVrAdapterManager() {
        return this.mVrAdapterManager;
    }

    public YunTingManager getYunTingManager() {
        return this.mYunTingManager;
    }

    public boolean isAlive() {
        IMediaCenter iMediaCenter = this.mService;
        return iMediaCenter != null && iMediaCenter.asBinder().isBinderAlive();
    }

    public boolean isPsdBtAudioSource(MediaCenterConstant.AudioSource audioSource, MediaCenterConstant.AppSource appSource) {
        IMediaCenter iMediaCenter = this.mService;
        if (iMediaCenter == null) {
            return false;
        }
        try {
            return iMediaCenter.isPsdBtAudioSource(audioSource.ordinal(), appSource.ordinal());
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isPsdBtDeviceConnected() {
        IMediaCenter iMediaCenter = this.mService;
        if (iMediaCenter == null) {
            return false;
        }
        try {
            return iMediaCenter.isPsdBtDeviceConnected();
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean isPsdMode() {
        return this.mPsdMode;
    }

    public void removeRebootPlayChangeListener(RebootPlayChangeListener listener) {
        if (listener != null) {
            this.mRebootPlayChangeListeners.remove(listener);
        }
    }

    public void removeSourceStateListener(SourceStateListener listener) {
        if (listener != null) {
            this.mSourceStateListeners.remove(listener);
        }
    }

    public void requestAudioSource(MediaCenterConstant.AudioSource source, MediaCenterConstant.AppSource app) {
        Log.d(TAG, "requestAudioSource() called with: source = [" + source + "], app = [" + app + "] by " + this.mContext.getPackageName());
        IMediaCenter iMediaCenter = this.mService;
        if (iMediaCenter == null) {
            Log.w(TAG, "requestMediaSource: mService is null");
            return;
        }
        try {
            iMediaCenter.requestAudioSource(source.ordinal(), app.ordinal());
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void runHeartbeatPacket() {
        IMediaCenter iMediaCenter = this.mService;
        if (iMediaCenter != null) {
            try {
                iMediaCenter.setHeartbeatPacket(new IHeartbeatPacket.Stub() { // from class: com.geely.lib.oneosapi.mediacenter.MediaCenterManager.1
                    @Override // com.geely.lib.oneosapi.mediacenter.IHeartbeatPacket
                    public String getPackageName() throws RemoteException {
                        return MediaCenterManager.this.mContext.getPackageName();
                    }
                });
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void setPsdBtAudioSource(MediaCenterConstant.AudioSource audioSource, MediaCenterConstant.AppSource appSource, boolean enable) {
        IMediaCenter iMediaCenter = this.mService;
        if (iMediaCenter != null) {
            try {
                iMediaCenter.setPsdBtAudioSource(audioSource.ordinal(), appSource.ordinal(), enable);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void setPsdBtChannel(MediaCenterConstant.AppSource app, boolean enable) {
        IMediaCenter iMediaCenter = this.mService;
        if (iMediaCenter != null) {
            try {
                iMediaCenter.setPsdBtChannel(app.ordinal(), enable);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    public void setPsdMode(boolean enable) {
        this.mPsdMode = enable;
    }

    public void setRebootPlay(MediaCenterConstant.RebootPlay rebootPlay) {
        if (this.mService != null) {
            try {
                Log.d(TAG, "setRebootPlay() called with : value = [" + rebootPlay.getValue() + "] by " + this.mContext.getPackageName());
                this.mService.setRebootPlay(rebootPlay.getValue());
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.geely.lib.oneosapi.common.ServiceBaseManager
    public void setService(IBinder binder) {
        MediaCenterManager mediaCenterManager = this.mPsdMediaCenterManager;
        if (mediaCenterManager != null) {
            mediaCenterManager.setService(binder);
        }
        initMediaCenterManger(binder);
    }

    public boolean isPsdBtAudioSource(MediaCenterConstant.AudioSource audioSource) {
        return isPsdBtAudioSource(audioSource, MediaCenterConstant.AppSource.UNKNOWN);
    }

    public void setPsdBtAudioSource(MediaCenterConstant.AudioSource audioSource, boolean enable) {
        setPsdBtAudioSource(audioSource, MediaCenterConstant.AppSource.UNKNOWN, enable);
    }

    public void requestAudioSource(MediaCenterConstant.AudioSource source) {
        requestAudioSource(source, MediaCenterConstant.AppSource.UNKNOWN);
    }
}
