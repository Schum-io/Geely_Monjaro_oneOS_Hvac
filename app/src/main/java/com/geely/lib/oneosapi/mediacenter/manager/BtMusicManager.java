package com.geely.lib.oneosapi.mediacenter.manager;

import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.IMusicManager;
import com.geely.lib.oneosapi.mediacenter.MediaCenterManager;
import com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager;
import com.geely.lib.oneosapi.mediacenter.constant.MediaCenterConstant;
import com.geely.lib.oneosapi.mediacenter.listener.BtDeviceStateListener;

/* loaded from: classes.dex */
public class BtMusicManager extends BaseMusicManager {
    private final int mAudioSource;

    public BtMusicManager(Context context, IMusicManager service, MediaCenterManager mediaCenterManager) {
        super(context, service, mediaCenterManager);
        this.mAudioSource = MediaCenterConstant.AudioSource.AUDIO_SOURCE_BT.ordinal();
    }

    public void addBtDeviceStateListener(BtDeviceStateListener listener) {
        addDeviceStateListener(listener);
    }

    public void connectBtDevice(String address) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.connectBtDevice(getAudioSource(), address);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.geely.lib.oneosapi.mediacenter.base.BaseMusicManager
    public int getAudioSource() {
        return this.mAudioSource;
    }

    public boolean getBtState() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            return false;
        }
        try {
            return iMusicManager.getBtState(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public BluetoothDevice getConnectedDevice() {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager == null) {
            return null;
        }
        try {
            return iMusicManager.getConnectedDevice(getAudioSource());
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void requestAudioSource() {
        this.mMediaCenterManager.requestAudioSource(MediaCenterConstant.AudioSource.AUDIO_SOURCE_BT);
    }

    public void setActiveBtDevice(String address) {
        IMusicManager iMusicManager = this.mService;
        if (iMusicManager != null) {
            try {
                iMusicManager.setActiveBtDevice(getAudioSource(), address);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }
}
