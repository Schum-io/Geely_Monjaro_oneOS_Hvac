package com.geely.os.lighting;

import android.content.Context;
import android.util.ArraySet;
import com.ecarx.xui.adaptapi.FunctionStatus;
import com.ecarx.xui.adaptapi.lighting.ILightingShow;
import com.ecarx.xui.adaptapi.lighting.LightingShow;
import com.geely.os.car.GlySupportStatus;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class GlyLightingShowImpl implements IGlyLightingShow {
    private ILightingShow iLightingShow;
    private final ArraySet<IGlyLightingShowWatcher> lightingShowWatchers = new ArraySet<>();
    private ILightingShow.ILightingShowWatcher iLightingShowWatcher = new AnonymousClass1();

    /* renamed from: com.geely.os.lighting.GlyLightingShowImpl$1, reason: invalid class name */
    class AnonymousClass1 implements ILightingShow.ILightingShowWatcher {
        AnonymousClass1() {
        }

        public void onLightingShowEnableChanged(final FunctionStatus functionStatus) {
            GlyLightingShowImpl.this.lightingShowWatchers.forEach(new Consumer() { // from class: com.geely.os.lighting.-$$Lambda$GlyLightingShowImpl$1$46a5A9B7nFlTFETBgiNkDgCqo5c
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyLightingShowWatcher) obj).onLightingShowEnableChanged(functionStatus.ordinal());
                }
            });
        }

        public void onLightingShowStateChanged(final int i) {
            GlyLightingShowImpl.this.lightingShowWatchers.forEach(new Consumer() { // from class: com.geely.os.lighting.-$$Lambda$GlyLightingShowImpl$1$y4BHqiG2Z2euoo1dbD0QOD1OJ8I
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyLightingShowWatcher) obj).onLightingShowStateChanged(i);
                }
            });
        }

        public void onLightingShowError(final int[] ints) {
            GlyLightingShowImpl.this.lightingShowWatchers.forEach(new Consumer() { // from class: com.geely.os.lighting.-$$Lambda$GlyLightingShowImpl$1$IStUrC0cVaLk4dv5lidbalHNeYA
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyLightingShowWatcher) obj).onLightingShowError(ints);
                }
            });
        }

        public void onLightingShowFileDownloadState(final int i) {
            GlyLightingShowImpl.this.lightingShowWatchers.forEach(new Consumer() { // from class: com.geely.os.lighting.-$$Lambda$GlyLightingShowImpl$1$uxHmSeopcQaWsyw4qiNV-J86wnk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyLightingShowWatcher) obj).onLightingShowFileDownloadState(i);
                }
            });
        }

        public void onLightingShowFileDownloadFunctionStatus(final FunctionStatus functionStatus) {
            GlyLightingShowImpl.this.lightingShowWatchers.forEach(new Consumer() { // from class: com.geely.os.lighting.-$$Lambda$GlyLightingShowImpl$1$Sj4G5-vV5gVdl5VhtacZlUkqxK0
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyLightingShowWatcher) obj).onLightingShowFileDownloadFunctionStatus(functionStatus.ordinal());
                }
            });
        }

        public void onWelcomeLightFileDownloadFunctionStatus(final FunctionStatus functionStatus) {
            GlyLightingShowImpl.this.lightingShowWatchers.forEach(new Consumer() { // from class: com.geely.os.lighting.-$$Lambda$GlyLightingShowImpl$1$O1hE4ktGJj3I5pyjqpAH-9DUEsQ
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyLightingShowWatcher) obj).onWelcomeLightFileDownloadFunctionStatus(functionStatus.ordinal());
                }
            });
        }
    }

    private GlyLightingShowImpl(Context context) {
        this.iLightingShow = LightingShow.create(context);
    }

    public static IGlyLightingShow create(Context context) {
        if (context != null) {
            return new GlyLightingShowImpl(context);
        }
        return null;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int isLightingShowEnabled() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.isLightingShowEnabled().ordinal();
        }
        return GlySupportStatus.error;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int getLightingShowState() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.getLightingShowState();
        }
        return 0;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int[] getLightingShowError() {
        ILightingShow iLightingShow = this.iLightingShow;
        return iLightingShow != null ? iLightingShow.getLightingShowError() : new int[0];
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public boolean setLightingShowType(int type) {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.setLightingShowType(type);
        }
        return false;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int getLightingShowType() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.getLightingShowType();
        }
        return 1;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public boolean setLightingShowMode(int mode) {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.setLightingShowMode(mode);
        }
        return false;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int getLightingShowMode() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.getLightingShowMode();
        }
        return 1;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public IGlyLightingShowInfo[] getLightingShowInfo(int type) {
        ILightingShow.ILightingShowInfo[] lightingShowInfo;
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow == null || (lightingShowInfo = iLightingShow.getLightingShowInfo(type)) == null || lightingShowInfo.length <= 0) {
            return null;
        }
        IGlyLightingShowInfo[] iGlyLightingShowInfoArr = new IGlyLightingShowInfo[lightingShowInfo.length];
        for (int i = 0; i < lightingShowInfo.length; i++) {
            final ILightingShow.ILightingShowInfo iLightingShowInfo = lightingShowInfo[i];
            if (iLightingShowInfo != null) {
                iGlyLightingShowInfoArr[i] = new IGlyLightingShowInfo() { // from class: com.geely.os.lighting.GlyLightingShowImpl.2
                    @Override // com.geely.os.lighting.IGlyLightingShowInfo
                    public String getUUID() {
                        return iLightingShowInfo.getUUID();
                    }

                    @Override // com.geely.os.lighting.IGlyLightingShowInfo
                    public int getShowType() {
                        return iLightingShowInfo.getShowType();
                    }

                    @Override // com.geely.os.lighting.IGlyLightingShowInfo
                    public int getShowMode() {
                        return iLightingShowInfo.getShowMode();
                    }

                    @Override // com.geely.os.lighting.IGlyLightingShowInfo
                    public int getPayType() {
                        return iLightingShowInfo.getPayType();
                    }

                    @Override // com.geely.os.lighting.IGlyLightingShowInfo
                    public String getName() {
                        return iLightingShowInfo.getName();
                    }

                    @Override // com.geely.os.lighting.IGlyLightingShowInfo
                    public String getPath() {
                        return iLightingShowInfo.getPath();
                    }

                    @Override // com.geely.os.lighting.IGlyLightingShowInfo
                    public String getDescription() {
                        return iLightingShowInfo.getDescription();
                    }
                };
            }
        }
        return iGlyLightingShowInfoArr;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int[] getVehicleIpTable(int vehicleIpType) {
        ILightingShow iLightingShow = this.iLightingShow;
        return iLightingShow != null ? iLightingShow.getVehicleIpTable(vehicleIpType) : new int[0];
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public boolean sendIpMessage(int ip, String cmdMsg) {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.sendIpMessage(ip, cmdMsg);
        }
        return false;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public boolean sendLightingShowSourceStart() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.sendLightingShowSourceStart();
        }
        return false;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public boolean sendLightingShowSourceEnd() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.sendLightingShowSourceEnd();
        }
        return false;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public boolean sendLightingShowSource(byte[] source) {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.sendLightingShowSource(source);
        }
        return false;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public void startLightingShow() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            iLightingShow.startLightingShow();
        }
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public void stopLightingShow() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            iLightingShow.stopLightingShow();
        }
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public void registerLightingShowWatcher(IGlyLightingShowWatcher watcher) {
        if (this.iLightingShow == null || watcher == null) {
            return;
        }
        this.lightingShowWatchers.add(watcher);
        this.iLightingShow.registerLightingShowWatcher(this.iLightingShowWatcher);
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public void unregisterLightingShowWatcher(IGlyLightingShowWatcher watcher) {
        if (this.iLightingShow == null || watcher == null) {
            return;
        }
        this.lightingShowWatchers.remove(watcher);
        this.iLightingShow.unregisterLightingShowWatcher(this.iLightingShowWatcher);
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int getLightShowFileDownloadReq() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.getLightShowFileDownloadReq();
        }
        return 0;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int setLightShowFileRequestResult(int state) {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.setLightShowFileRequestResult(state);
        }
        return 0;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int setLightShowFileDownloadResult(int result) {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.setLightShowFileDownloadResult(result);
        }
        return 0;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int isLightingShowFileDownload() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.isLightingShowFileDownload().ordinal();
        }
        return GlySupportStatus.error;
    }

    @Override // com.geely.os.lighting.IGlyLightingShow
    public int isWelcomeLightFileDownload() {
        ILightingShow iLightingShow = this.iLightingShow;
        if (iLightingShow != null) {
            return iLightingShow.isWelcomeLightFileDownload().ordinal();
        }
        return GlySupportStatus.error;
    }
}
