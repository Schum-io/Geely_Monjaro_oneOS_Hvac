package com.geely.os.system;

import android.content.Context;
import androidx.collection.ArraySet;
import com.ecarx.xui.adaptapi.device.Device;
import com.ecarx.xui.adaptapi.device.ext.ISystemMode;
import com.geely.os.car.GlyLog;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class GlySystemModeImpl implements IGlySystemMode {
    private ISystemMode systemMode;
    private ArraySet<IGlySystemModeListener> glySystemModeListeners = new ArraySet<>();
    private ArraySet<IGlyDIMAnimationStateCallback> dimAnimationStateCallbacks = new ArraySet<>();
    private ISystemMode.ISystemModeListener systemModeListener = new AnonymousClass1();
    private ISystemMode.DIMAnimationStateCallback dimAnimationStateCallback = new AnonymousClass2();

    /* renamed from: com.geely.os.system.GlySystemModeImpl$1, reason: invalid class name */
    class AnonymousClass1 implements ISystemMode.ISystemModeListener {
        AnonymousClass1() {
        }

        public void onSystemModeStateChanged(final int mode, final int state) {
            GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "onSystemModeStateChanged mode = " + mode + " state = " + state);
            GlySystemModeImpl.this.glySystemModeListeners.forEach(new Consumer() { // from class: com.geely.os.system.-$$Lambda$GlySystemModeImpl$1$fCNd2KaPOiUvFe9lVTL6UnUO7mc
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlySystemModeListener) obj).onSystemModeStateChanged(mode, state);
                }
            });
        }
    }

    /* renamed from: com.geely.os.system.GlySystemModeImpl$2, reason: invalid class name */
    class AnonymousClass2 implements ISystemMode.DIMAnimationStateCallback {
        AnonymousClass2() {
        }

        public void onDIMAnimationStateResponse(final int state) {
            GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "onDIMAnimationStateResponse state = " + state);
            GlySystemModeImpl.this.dimAnimationStateCallbacks.forEach(new Consumer() { // from class: com.geely.os.system.-$$Lambda$GlySystemModeImpl$2$rT7q663vIpHh6XDuTdhhNutSX-A
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyDIMAnimationStateCallback) obj).onDIMAnimationStateResponse(state);
                }
            });
        }
    }

    private GlySystemModeImpl(Context context) {
        Device deviceCreate = Device.create(context);
        if (deviceCreate != null) {
            this.systemMode = deviceCreate.getSystemMode();
        }
    }

    public static IGlySystemMode create(Context context) {
        if (context != null) {
            return new GlySystemModeImpl(context);
        }
        return null;
    }

    @Override // com.geely.os.system.IGlySystemMode
    public void closeBootUpAnimation() {
        if (this.systemMode != null) {
            GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "closeBootUpAnimation()");
            this.systemMode.closeBootUpAnimation();
        }
    }

    @Override // com.geely.os.system.IGlySystemMode
    public int getSystemModeState(int state) {
        ISystemMode iSystemMode = this.systemMode;
        if (iSystemMode == null) {
            return 0;
        }
        int systemModeState = iSystemMode.getSystemModeState(state);
        GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "getSystemModeState(" + state + ")  result = " + systemModeState);
        return systemModeState;
    }

    @Override // com.geely.os.system.IGlySystemMode
    public boolean registerListener(int mode, IGlySystemModeListener listener) {
        if (this.systemMode == null || listener == null) {
            return false;
        }
        this.glySystemModeListeners.add(listener);
        boolean zRegisterListener = this.systemMode.registerListener(mode, this.systemModeListener);
        GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "systemMode.registerListener(" + mode + "," + this.systemModeListener + ")  result = " + zRegisterListener);
        return zRegisterListener;
    }

    @Override // com.geely.os.system.IGlySystemMode
    public void setProvisionStatus(int currentStatus) {
        if (this.systemMode != null) {
            GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "setProvisionStatus(" + currentStatus + ") ");
            this.systemMode.setProvisionStatus(currentStatus, (ISystemMode.DIMAnimationStateCallback) null);
        }
    }

    @Override // com.geely.os.system.IGlySystemMode
    public boolean unregisterListener(IGlySystemModeListener listener) {
        if (this.systemMode == null || listener == null) {
            return false;
        }
        this.glySystemModeListeners.remove(listener);
        boolean zUnregisterListener = this.systemMode.unregisterListener(this.systemModeListener);
        GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "unregisterListener(" + listener + ") result =" + zUnregisterListener);
        return zUnregisterListener;
    }

    @Override // com.geely.os.system.IGlySystemMode
    public boolean registerDIMAnimationStateCallback(IGlyDIMAnimationStateCallback callback) {
        if (this.systemMode == null || callback == null) {
            return false;
        }
        this.dimAnimationStateCallbacks.add(callback);
        boolean zRegisterDIMAnimationStateCallback = this.systemMode.registerDIMAnimationStateCallback(this.dimAnimationStateCallback);
        GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "registerDIMAnimationStateCallback(" + callback + ") result =" + zRegisterDIMAnimationStateCallback);
        return zRegisterDIMAnimationStateCallback;
    }

    @Override // com.geely.os.system.IGlySystemMode
    public boolean unregisterDIMAnimationStateCallback(IGlyDIMAnimationStateCallback callback) {
        if (this.systemMode == null || callback == null) {
            return false;
        }
        this.dimAnimationStateCallbacks.remove(callback);
        boolean zUnregisterDIMAnimationStateCallback = this.systemMode.unregisterDIMAnimationStateCallback(this.dimAnimationStateCallback);
        GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "unregisterDIMAnimationStateCallback(" + callback + ") result =" + zUnregisterDIMAnimationStateCallback);
        return zUnregisterDIMAnimationStateCallback;
    }

    @Override // com.geely.os.system.IGlySystemMode
    public void setDisplayWakeState(int zone, boolean state) {
        if (this.systemMode != null) {
            GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "setDisplayWakeState(" + zone + "," + state + ")");
            this.systemMode.setDisplayWakeState(zone, state);
        }
    }

    @Override // com.geely.os.system.IGlySystemMode
    public void setProvisionStatus(int currentStatus, final IGlyDIMAnimationStateCallback callback) {
        if (this.systemMode != null) {
            GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "setProvisionStatus(" + currentStatus + "," + callback + ")");
            this.systemMode.setProvisionStatus(currentStatus, new ISystemMode.DIMAnimationStateCallback() { // from class: com.geely.os.system.GlySystemModeImpl.3
                public void onDIMAnimationStateResponse(int state) {
                    if (callback != null) {
                        GlyLog.i("OneVehicleSDK_GlySystemModeImpl", "setProvisionStatus onDIMAnimationStateResponse state = " + state);
                        callback.onDIMAnimationStateResponse(state);
                    }
                }
            });
        }
    }
}
