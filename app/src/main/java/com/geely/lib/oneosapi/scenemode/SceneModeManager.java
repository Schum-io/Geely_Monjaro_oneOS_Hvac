package com.geely.lib.oneosapi.scenemode;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.oneosapi.common.ServiceBaseManager;
import com.geely.lib.oneosapi.scenemode.ISceneModeService;
import com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener;

/* loaded from: classes.dex */
public class SceneModeManager implements ServiceBaseManager {
    public static final int EXECUTE_CANT_OPEN = 3;
    public static final int EXECUTE_FAIL = 2;
    public static final int EXECUTE_NOT_SUPPORT = 4;
    public static final int EXECUTE_SUCCESS = 1;
    private static final String TAG = "SceneModeManager";
    private ISceneModeService mService;

    public static abstract class SceneModeServiceChangedListener extends ISceneModeServiceChangedListener.Stub {
        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener
        public void onFrontStateChanged(int state) {
            Log.d(SceneModeManager.TAG, "onFrontStateChanged = " + state);
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener
        public void onOpenStateChanged(int state) {
            Log.d(SceneModeManager.TAG, "onOpenStateChanged = " + state);
        }

        @Override // com.geely.lib.oneosapi.scenemode.ISceneModeServiceChangedListener
        public void onSceneModeNameChanged(String name) {
            Log.d(SceneModeManager.TAG, "onSceneModeNameChanged = " + name);
        }
    }

    public SceneModeManager(Context mContext, IBinder binder) {
        this.mService = ISceneModeService.Stub.asInterface(binder);
    }

    @Deprecated
    public void enterIntoModeById(String sceneId) {
        Log.d(TAG, "enterIntoModeById() called with: sceneId = [" + sceneId + "]");
        if (!isServiceAlive()) {
            Log.d(TAG, "enterIntoModeById(): service is not alive");
            return;
        }
        try {
            this.mService.enterIntoModeById(sceneId);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Deprecated
    public void executeModeById(String sceneId, boolean isOpen) {
        Log.d(TAG, "executeModeById() called with: sceneId = [" + sceneId + "], isOpen = [" + isOpen + "]");
        if (!isServiceAlive()) {
            Log.d(TAG, "executeModeById(): service is not alive");
            return;
        }
        try {
            this.mService.executeModeById(sceneId, isOpen);
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    @Deprecated
    public int executeSceneModeById(String sceneId, boolean isOpen) {
        Log.d(TAG, "executeModeById() called with: sceneId = [" + sceneId + "], isOpen = [" + isOpen + "]");
        if (!isServiceAlive()) {
            Log.d(TAG, "executeModeById(): service is not alive");
            return 2;
        }
        try {
            return this.mService.executeSceneModeById(sceneId, isOpen);
        } catch (RemoteException e) {
            e.printStackTrace();
            return 2;
        }
    }

    public int getSceneModeFrontState() {
        Log.d(TAG, "getSceneModeFrontState() called");
        if (!isServiceAlive()) {
            Log.d(TAG, "getSceneModeFrontState(): service is not alive");
            return 0;
        }
        try {
            return this.mService.getSceneModeFrontState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public String getSceneModeName() {
        Log.d(TAG, "getSceneModeName() called");
        if (!isServiceAlive()) {
            Log.d(TAG, "getSceneModeName(): service is not alive");
            return "";
        }
        try {
            return this.mService.getSceneModeName();
        } catch (RemoteException e) {
            e.printStackTrace();
            return "";
        }
    }

    public int getSceneModeOpenState() {
        Log.d(TAG, "getSceneModeOpenState() called");
        if (!isServiceAlive()) {
            Log.d(TAG, "getSceneModeOpenState(): service is not alive");
            return 0;
        }
        try {
            return this.mService.getSceneModeOpenState();
        } catch (RemoteException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public boolean isServiceAlive() {
        ISceneModeService iSceneModeService = this.mService;
        return iSceneModeService != null && iSceneModeService.asBinder().isBinderAlive();
    }

    public String openSceneMode(String param) {
        Log.d(TAG, "openSceneMode");
        if (!isServiceAlive()) {
            Log.d(TAG, "openSceneMode: service is not alive");
            return null;
        }
        try {
            return this.mService.openSceneMode(param);
        } catch (RemoteException e) {
            e.printStackTrace();
            return null;
        }
    }

    public void registerSceneModeServiceChangedListener(SceneModeServiceChangedListener listener) {
        Log.d(TAG, "registerSceneModeServiceChangedListener(" + listener + ")");
        if (isServiceAlive()) {
            try {
                this.mService.registerSceneModeServiceChangedListener(listener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        Log.d(TAG, "registerSceneModeServiceChangedListener：end");
    }

    @Override // com.geely.lib.oneosapi.common.ServiceBaseManager
    public void setService(IBinder binder) {
        this.mService = ISceneModeService.Stub.asInterface(binder);
    }

    public void unRegisterSceneModeServiceChangedListener(SceneModeServiceChangedListener listener) {
        Log.d(TAG, "unRegisterSceneModeServiceChangedListener(" + listener + ")");
        if (isServiceAlive()) {
            try {
                this.mService.registerSceneModeServiceChangedListener(listener);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
        Log.d(TAG, "unRegisterSceneModeServiceChangedListener：end");
    }
}
