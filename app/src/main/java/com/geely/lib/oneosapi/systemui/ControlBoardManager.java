package com.geely.lib.oneosapi.systemui;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.oneosapi.common.ServiceBaseManager;
import com.geely.lib.oneosapi.systemui.IControlBoardDialogService;

/* loaded from: classes.dex */
public class ControlBoardManager implements ServiceBaseManager {
    private static final String TAG = "ControlBoardManager";
    private IControlBoardDialogService mService;

    public ControlBoardManager(Context mContext, IBinder binder) {
        this.mService = IControlBoardDialogService.Stub.asInterface(binder);
    }

    private boolean isServiceAlive() {
        IControlBoardDialogService iControlBoardDialogService = this.mService;
        return iControlBoardDialogService != null && iControlBoardDialogService.asBinder().isBinderAlive();
    }

    @Override // com.geely.lib.oneosapi.common.ServiceBaseManager
    public void setService(IBinder binder) {
        this.mService = IControlBoardDialogService.Stub.asInterface(binder);
    }

    public void showMirrorDialog() {
        if (!isServiceAlive()) {
            Log.d(TAG, "showMirrorDialog: service is not alive");
            return;
        }
        try {
            this.mService.showMirrorDialog();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void showVolumeDialog() {
        if (!isServiceAlive()) {
            Log.d(TAG, "showVolumeDialog: service is not alive");
            return;
        }
        try {
            this.mService.showVolumeDialog();
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }
}
