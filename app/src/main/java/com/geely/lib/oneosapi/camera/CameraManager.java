package com.geely.lib.oneosapi.camera;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.oneosapi.camera.ICameraInterface;
import com.geely.lib.oneosapi.common.ServiceBaseManager;

/* loaded from: classes.dex */
public class CameraManager implements ServiceBaseManager {
    private static final String TAG = "CameraManager";
    private ICameraInterface mService;

    public CameraManager(IBinder binder) {
        initVrManger(binder);
    }

    private void initVrManger(IBinder binder) {
        if (binder != null) {
            this.mService = ICameraInterface.Stub.asInterface(binder);
        }
    }

    private void serviceIsNull() {
        Log.d(TAG, "VrServiceIsNull");
    }

    public void closeCamera() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.closeCamera();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public int getCameraState() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return -100;
        }
        try {
            return iCameraInterface.getCameraState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return -100;
        }
    }

    public boolean isFunctionSupported(int function, int zone) {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return false;
        }
        try {
            return iCameraInterface.isFunctionSupported(function, zone);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public boolean onSetVideoMute(int mute) {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return false;
        }
        try {
            return iCameraInterface.onSetVideoVolume(mute);
        } catch (RemoteException e) {
            e.printStackTrace();
            return false;
        }
    }

    public void onStopVideoRecord() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onStopVideoRecord();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onTakeInnerPhoto() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onTakeInnerPhoto();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onTakeInnerVideo() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onTakeInnerVideo();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onTakeOuterPhoto() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onTakeOuterPhoto();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onTakeOuterVideo() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onTakeOuterVideo();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onTakePhoto() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onTakePhoto();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onTakePhotoAgain() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onTakePhotoAgain();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onTakeStart() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onTakeStart();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onTakeTimeLapseRecording() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onTakeTimeLapseRecording();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onTakeTimeTakenPhoto() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onTakeTimeTakenPhoto();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onTakeVideo() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onTakeVideo();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onVideoMute() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onVideoMute();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void onVideoUnMute() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.onVideoUnMute();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void openCamera() {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface == null) {
            serviceIsNull();
            return;
        }
        try {
            iCameraInterface.openCamera();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Override // com.geely.lib.oneosapi.common.ServiceBaseManager
    public void setService(IBinder binder) {
        initVrManger(binder);
    }

    public boolean onTakePhoto(int zone, int delayTime) {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface != null) {
            try {
                return iCameraInterface.onTakePhotoWithParams(zone, delayTime);
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }
        serviceIsNull();
        return false;
    }

    public boolean onTakeVideo(int open, int zone, int delayTime) {
        ICameraInterface iCameraInterface = this.mService;
        if (iCameraInterface != null) {
            try {
                return iCameraInterface.onTakeVideoToggle(open, zone, delayTime);
            } catch (RemoteException e) {
                e.printStackTrace();
                return false;
            }
        }
        serviceIsNull();
        return false;
    }
}
