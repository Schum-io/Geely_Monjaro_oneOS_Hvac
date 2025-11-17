package com.geely.os.ota;

import android.content.Context;
import android.text.TextUtils;
import android.util.ArraySet;
import android.util.Log;
import com.ecarx.xui.adaptapi.ota.IOtaSession;
import com.ecarx.xui.adaptapi.ota.IOtaSessionCallback;
import com.ecarx.xui.adaptapi.ota.OTA;
import com.geely.os.car.GlyLog;
import com.geely.os.car.GlySupportStatus;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class GlyOTAImpl implements IGlyOTA {
    private final OTA mOta;
    private ArraySet<IGlyOtaSessionCallback> sessionCallbacks = new ArraySet<>();
    private final IOtaSessionCallback otaSessionCallback = new AnonymousClass1();

    public static IGlyOTA create(Context context) {
        if (context != null) {
            return new GlyOTAImpl(context);
        }
        return null;
    }

    private GlyOTAImpl(Context context) {
        this.mOta = OTA.create(context);
    }

    /* renamed from: com.geely.os.ota.GlyOTAImpl$1, reason: invalid class name */
    class AnonymousClass1 implements IOtaSessionCallback {
        AnonymousClass1() {
        }

        public void onShouldBeginInstall() {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onShouldBeginInstall()");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$L9a1G1O3Jy_iYUrhPh7l54Jv9ms
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onShouldBeginInstall();
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onFailed(final int i) {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onFailed(" + i + ")");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$4IFmxLqgx6wGrn0HZYZgWqTc2rA
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onFailed(i);
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onSucceeded() {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onSucceeded()");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$77eihVREIiqOHft4jWmra8fHBnc
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onSucceeded();
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onRebootingAfterOta() {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onRebootingAfterOta()");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$0_NU5znFZz5lpaFWOH45-6VcwFE
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onRebootingAfterOta();
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onSessionCanceled() {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onSessionCanceled()");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$jYEoX0Lr2PxQviLFIAItb5S2wgk
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onSessionCanceled();
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onProgressUpdate(final int i) {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onProgressUpdate(" + i + ")");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$uUmC8-1dlkLdrC-x7UNgGb487sA
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onProgressUpdate(i);
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onDownloadResponse(final int i) {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onDownloadResponse(" + i + ")");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$GADo0CIYXH3OXGgz9_SRuv61Fpg
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onDownloadResponse(i);
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void requestBSSIDDisplayedVersionInfo() {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "requestBSSIDDisplayedVersionInfo()");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$Mf2pq8X4G2oZX5aJFEnDWQVOQUc
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).requestBSSIDDisplayedVersionInfo();
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onDownloadProgressReport(final int i) {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onDownloadProgressReport(" + i + ")");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$CaURatNCc7q1gtSHVvaD8xTXn7s
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onDownloadProgressReport(i);
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onInstallationResponse(final int i) {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onInstallationResponse(" + i + ")");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$HRPGrwdoEOAz7yfgWHuV3nOuyb8
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onInstallationResponse(i);
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onInstallProgressReport(final int i, final int i1, final int i2) {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onInstallProgressReport(" + i + "," + i1 + "," + i2 + ")");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$F56liU0P2ku3gFGCHuevVW1HwB8
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onInstallProgressReport(i, i1, i2);
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onNotificationCurrentCarVersionName(final String s) {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onNotificationCurrentCarVersionName(" + s + ")");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$tKnEH7Bi44_keWWVGrqmrWjbcXY
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onNotificationCurrentCarVersionName(s);
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }

        public void onVGMStatusReport(final int i) {
            if (GlyOTAImpl.this.sessionCallbacks != null && GlyOTAImpl.this.sessionCallbacks.size() > 0) {
                Log.i("OneVehicleSDK_GlyOTAImpl", "onVGMStatusReport(" + i + ")");
                GlyOTAImpl.this.sessionCallbacks.forEach(new Consumer() { // from class: com.geely.os.ota.-$$Lambda$GlyOTAImpl$1$7AzVvVZfl3-l0ZesGvzALZS745Q
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyOtaSessionCallback) obj).onVGMStatusReport(i);
                    }
                });
            } else {
                Log.i("OneVehicleSDK_GlyOTAImpl", "sessionCallbacks.size==0");
            }
        }
    }

    @Override // com.geely.os.ota.IGlyOTA
    public int isOtaTypeSupported(int type) {
        OTA ota = this.mOta;
        if (ota != null) {
            int iOrdinal = ota.isOtaTypeSupported(type).ordinal();
            Log.i("OneVehicleSDK_GlyOTAImpl", "isOtaTypeSupported(" + type + ")  SupportStatus = " + iOrdinal);
            return iOrdinal;
        }
        return GlySupportStatus.error;
    }

    @Override // com.geely.os.ota.IGlyOTA
    public boolean supportNoRecoveryOta() {
        OTA ota = this.mOta;
        if (ota == null) {
            return false;
        }
        boolean zSupportNoRecoveryOta = ota.supportNoRecoveryOta();
        Log.i("OneVehicleSDK_GlyOTAImpl", "supportNoRecoveryOta()  result = " + zSupportNoRecoveryOta);
        return zSupportNoRecoveryOta;
    }

    private IGlyOtaSession getOtaSession(final IOtaSession session) {
        if (session != null) {
            return new IGlyOtaSession() { // from class: com.geely.os.ota.GlyOTAImpl.2
                @Override // com.geely.os.ota.IGlyOtaSession
                public String getSysBssId() {
                    return "";
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public int getOtaMode() {
                    int otaMode = session.getOtaMode();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaMode()  otaMode = " + otaMode);
                    return otaMode;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public int getOtaType() {
                    int otaType = session.getOtaType();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaMode()  otaType = " + otaType);
                    return otaType;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean isInstallationStarted() {
                    boolean zIsInstallationStarted = session.isInstallationStarted();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession isInstallationStarted()  result = " + zIsInstallationStarted);
                    return zIsInstallationStarted;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean couldBeginInstallRightNow() {
                    boolean zCouldBeginInstallRightNow = session.couldBeginInstallRightNow();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession couldBeginInstallRightNow()  result = " + zCouldBeginInstallRightNow);
                    return zCouldBeginInstallRightNow;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean isRecoveryOta() {
                    boolean zIsRecoveryOta = session.isRecoveryOta();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession isRecoveryOta()  result = " + zIsRecoveryOta);
                    return zIsRecoveryOta;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public int getOtaProgress() {
                    int otaProgress = session.getOtaProgress();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaProgress()  result = " + otaProgress);
                    return otaProgress;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public int getOtaPriority() {
                    int otaPriority = session.getOtaPriority();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaPriority()  result = " + otaPriority);
                    return otaPriority;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean ifSystemWillRebootAfterOta() {
                    boolean zIfSystemWillRebootAfterOta = session.ifSystemWillRebootAfterOta();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession ifSystemWillRebootAfterOta()  result = " + zIfSystemWillRebootAfterOta);
                    return zIfSystemWillRebootAfterOta;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean cancel() {
                    boolean zCancel = session.cancel();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession cancel()  result = " + zCancel);
                    return zCancel;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean download() {
                    boolean zDownload = session.download();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession download()  result = " + zDownload);
                    return zDownload;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean download(String uuid) {
                    boolean zDownload = session.download(uuid);
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession download(" + uuid + ")  result = " + zDownload);
                    return zDownload;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean checkUpdate() {
                    boolean zCheckUpdate = session.checkUpdate();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession checkUpdate()  result = " + zCheckUpdate);
                    return zCheckUpdate;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public int getSysVersionCode() {
                    int sysVersionCode = session.getSysVersionCode();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getSysVersionCode()  result = " + sysVersionCode);
                    return sysVersionCode;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public String getSysVersionName() {
                    String sysVersionName = session.getSysVersionName();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getSysVersionName()  result = " + sysVersionName);
                    return sysVersionName;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public int getOtaBaseSysVersionCode() {
                    int otaBaseSysVersionCode = session.getOtaBaseSysVersionCode();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaBaseSysVersionCode()  result = " + otaBaseSysVersionCode);
                    return otaBaseSysVersionCode;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public String getOtaBaseSysVersionName() {
                    String otaBaseSysVersionName = session.getOtaBaseSysVersionName();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaBaseSysVersionName()  result = " + otaBaseSysVersionName);
                    return otaBaseSysVersionName;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean setOtaUpdateTime(Calendar calendar) {
                    boolean otaUpdateTime = session.setOtaUpdateTime(calendar);
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaBaseSysVersionName(" + calendar + ")  result = " + otaUpdateTime);
                    return otaUpdateTime;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public Calendar getOtaUpdateTime() {
                    Calendar otaUpdateTime = session.getOtaUpdateTime();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaUpdateTime()  result = " + otaUpdateTime);
                    return otaUpdateTime;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public int getEstimatedInstallationTime() {
                    int estimatedInstallationTime = session.getEstimatedInstallationTime();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getEstimatedInstallationTime()  result = " + estimatedInstallationTime);
                    return estimatedInstallationTime;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean cancelOtaUpgradeTime() {
                    boolean zCancelOtaUpgradeTime = session.cancelOtaUpgradeTime();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession cancelOtaUpgradeTime()  result = " + zCancelOtaUpgradeTime);
                    return zCancelOtaUpgradeTime;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public String getUpgradeInfo() {
                    String upgradeInfo = session.getUpgradeInfo();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getUpgradeInfo()  result = " + upgradeInfo);
                    return upgradeInfo;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean setPowerState(int state) {
                    boolean powerState = session.setPowerState(state);
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession setPowerState(" + state + ")  result = " + powerState);
                    return powerState;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public int getOtaUpdateInProgressState() {
                    int otaUpdateInProgressState = session.getOtaUpdateInProgressState();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaUpdateInProgressState() result = " + otaUpdateInProgressState);
                    return otaUpdateInProgressState;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean isPopupEnable() {
                    boolean zIsPopupEnable = session.isPopupEnable();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession isPopupEnable() result = " + zIsPopupEnable);
                    return zIsPopupEnable;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void setInstallRegretState(int state) {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession setInstallRegretState(" + state + ")");
                    session.setInstallRegretState(state);
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public List<Integer> getInstallationtimes() {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getInstallationtimes() result = " + session.getInstallationtimes());
                    return session.getInstallationtimes();
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public String getUUID() {
                    String uuid = session.getUUID();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getUUID() result = " + uuid);
                    return uuid;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public List<String> getFileNames() {
                    List<String> fileNames = session.getFileNames();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getFileNames() result = " + fileNames);
                    return fileNames;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public List<String> getSoftwareSignature() {
                    List<String> softwareSignature = session.getSoftwareSignature();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getSoftwareSignature() result = " + softwareSignature);
                    return softwareSignature;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public String getSignatureCertificate() {
                    String signatureCertificate = session.getSignatureCertificate();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getSignatureCertificate() result = " + signatureCertificate);
                    return signatureCertificate;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public List<String> getDownloadUrls() {
                    List<String> downloadUrls = session.getDownloadUrls();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getDownloadUrls() result = " + downloadUrls);
                    return downloadUrls;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public int getTotalSize() {
                    int totalSize = session.getTotalSize();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getTotalSize() result = " + totalSize);
                    return totalSize;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void checkConnectivityStatus() {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession checkConnectivityStatus() ");
                    session.checkConnectivityStatus();
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void setOTADownloadStatus(int status, int reason) {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession setOTADownloadStatus(" + status + "," + reason + ")");
                    session.setOTADownloadStatus(status, reason);
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void setOTADownloadSize(int size) {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession setOTADownloadSize(" + size + ")");
                    session.setOTADownloadSize(size);
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void reportDownloadFailedName(String fileName) {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession reportDownloadFailedName(" + fileName + ")");
                    session.reportDownloadFailedName(fileName);
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean checkSceneModeAlive() {
                    boolean zCheckSceneModeAlive = session.checkSceneModeAlive();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession checkSceneModeAlive() result = " + zCheckSceneModeAlive);
                    return zCheckSceneModeAlive;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public String getCurrentCarVersionName() {
                    String currentCarVersionName = session.getCurrentCarVersionName();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getCurrentCarVersionName() result = " + currentCarVersionName);
                    return currentCarVersionName;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void requestOtaUpdateTime() {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession requestOtaUpdateTime()");
                    session.requestOtaUpdateTime();
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void setOtaUserSettings(boolean otaSetting, boolean autoSync, boolean autoDownload, boolean autoInstall) {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession setOtaUserSettings(" + otaSetting + "," + autoSync + "," + autoDownload + "," + autoInstall + ")");
                    session.setOtaUserSettings(otaSetting, autoSync, autoDownload, autoInstall);
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean getOtaSetting() {
                    boolean otaSetting = session.getOtaSetting();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaSetting() result = " + otaSetting);
                    return otaSetting;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean getOtaAutoSync() {
                    boolean otaAutoSync = session.getOtaAutoSync();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaAutoSync() result = " + otaAutoSync);
                    return otaAutoSync;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean getOtaAutoDownload() {
                    boolean otaAutoDownload = session.getOtaAutoDownload();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaAutoDownload() result = " + otaAutoDownload);
                    return otaAutoDownload;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public boolean getOtaAutoInstallation() {
                    boolean otaAutoInstallation = session.getOtaAutoInstallation();
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession getOtaAutoInstallation() result = " + otaAutoInstallation);
                    return otaAutoInstallation;
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void sendUserDownloadRequest(String msg, String key_auth, String url) {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession setOtaUserSettings(" + msg + "," + key_auth + "," + url + ")");
                    session.sendUserDownloadRequest(msg, key_auth, url);
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void sendUserDownloadCancel() {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession sendUserDownloadCancel()");
                    session.sendUserDownloadCancel();
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void sendUserDownloadSuspend() {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession sendUserDownloadSuspend()");
                    session.sendUserDownloadSuspend();
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void sendUserDownloadResume() {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession sendUserDownloadResume()");
                    session.sendUserDownloadResume();
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void sendVbfDecryptionKey(List<DecryptionKeyType> list) {
                    GlyLog.i("OneVehicleSDK_GlyOTAImpl", "sendVbfDecryptionKey = " + list.toString());
                    ArrayList arrayList = new ArrayList();
                    for (DecryptionKeyType decryptionKeyType : list) {
                        OTA.DecryptionKeyType decryptionKeyType2 = new OTA.DecryptionKeyType();
                        decryptionKeyType2.setKey(decryptionKeyType.getKey());
                        decryptionKeyType2.setHashRoot(decryptionKeyType.getHashRoot());
                        arrayList.add(decryptionKeyType2);
                    }
                    session.sendVbfDecryptionKey(arrayList);
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void sendBSSIDDisplayedVersionInfo(String bssid, String displayedVersion) {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession sendBSSIDDisplayedVersionInfo(" + bssid + "," + displayedVersion + ")");
                    session.sendBSSIDDisplayedVersionInfo(bssid, displayedVersion);
                }

                @Override // com.geely.os.ota.IGlyOtaSession
                public void changeSlot() {
                    Log.i("OneVehicleSDK_GlyOTAImpl", "IGlyOtaSession changeSlot()");
                    session.changeSlot();
                }
            };
        }
        return null;
    }

    @Override // com.geely.os.ota.IGlyOTA
    public IGlyOtaSession requestOta(boolean preferRecoveryOta, IGlyOtaSessionCallback callback) {
        if (callback != null && this.otaSessionCallback != null && this.mOta != null) {
            this.sessionCallbacks.add(callback);
            IOtaSession iOtaSessionRequestOta = this.mOta.requestOta(preferRecoveryOta, this.otaSessionCallback);
            Log.i("OneVehicleSDK_GlyOTAImpl", "session  = " + iOtaSessionRequestOta);
            if (iOtaSessionRequestOta != null) {
                IGlyOtaSession otaSession = getOtaSession(iOtaSessionRequestOta);
                Log.i("OneVehicleSDK_GlyOTAImpl", "mOta requestOta(preferRecoveryOta =" + preferRecoveryOta + ",callbacak=" + this.otaSessionCallback + ") result = " + otaSession);
                return otaSession;
            }
        }
        Log.i("OneVehicleSDK_GlyOTAImpl", "callback  = " + callback + " otaSessionCallback = " + this.otaSessionCallback + " mOta = " + this.mOta);
        return null;
    }

    @Override // com.geely.os.ota.IGlyOTA
    public IGlyOtaSession requestOta(int type, IGlyOtaSessionCallback callback) {
        if (callback != null && this.otaSessionCallback != null && this.mOta != null) {
            this.sessionCallbacks.add(callback);
            IOtaSession iOtaSessionRequestOta = this.mOta.requestOta(type, this.otaSessionCallback);
            Log.i("OneVehicleSDK_GlyOTAImpl", "session  = " + iOtaSessionRequestOta);
            if (iOtaSessionRequestOta != null) {
                IGlyOtaSession otaSession = getOtaSession(iOtaSessionRequestOta);
                Log.i("OneVehicleSDK_GlyOTAImpl", "mOta requestOta(type=" + type + ",callbacak=" + this.otaSessionCallback + ") result = " + otaSession);
                return otaSession;
            }
        }
        Log.i("OneVehicleSDK_GlyOTAImpl", "callback  = " + callback + " otaSessionCallback = " + this.otaSessionCallback + " mOta = " + this.mOta);
        return null;
    }

    @Override // com.geely.os.ota.IGlyOTA
    public IGlyOtaSession requestOta(int priority, boolean preferRecoveryOta, IGlyOtaSessionCallback callback) {
        ArraySet<IGlyOtaSessionCallback> arraySet;
        if (callback != null && (arraySet = this.sessionCallbacks) != null && this.mOta != null) {
            arraySet.add(callback);
            IOtaSession iOtaSessionRequestOta = this.mOta.requestOta(priority, preferRecoveryOta, this.otaSessionCallback);
            Log.i("OneVehicleSDK_GlyOTAImpl", "session  = " + iOtaSessionRequestOta);
            if (iOtaSessionRequestOta != null) {
                IGlyOtaSession otaSession = getOtaSession(iOtaSessionRequestOta);
                Log.i("OneVehicleSDK_GlyOTAImpl", "mOta requestOta( priority=" + priority + ",preferRecoveryOta=" + preferRecoveryOta + ",callbacak=" + this.otaSessionCallback + ") result = " + otaSession);
                return otaSession;
            }
        }
        Log.i("OneVehicleSDK_GlyOTAImpl", "callback  = " + callback + " otaSessionCallback = " + this.otaSessionCallback + " mOta = " + this.mOta);
        return null;
    }

    @Override // com.geely.os.ota.IGlyOTA
    public void releaseOtaCallback(IGlyOtaSessionCallback callback) {
        ArraySet<IGlyOtaSessionCallback> arraySet;
        if (this.mOta == null || (arraySet = this.sessionCallbacks) == null || callback == null) {
            return;
        }
        arraySet.remove(callback);
        this.mOta.releaseOtaCallback(this.otaSessionCallback);
    }

    @Override // com.geely.os.ota.IGlyOTA
    public boolean installPackage(final IGlyOtaSession otaSession, String otaPackagePath) {
        if (this.mOta == null || otaSession == null) {
            return false;
        }
        IOtaSession iOtaSession = new IOtaSession() { // from class: com.geely.os.ota.GlyOTAImpl.3
            public int getOtaMode() {
                return otaSession.getOtaMode();
            }

            public int getOtaType() {
                return otaSession.getOtaType();
            }

            public boolean isInstallationStarted() {
                return otaSession.isInstallationStarted();
            }

            public boolean couldBeginInstallRightNow() {
                return otaSession.couldBeginInstallRightNow();
            }

            public boolean isRecoveryOta() {
                return otaSession.isRecoveryOta();
            }

            public int getOtaProgress() {
                return otaSession.getOtaProgress();
            }

            public int getOtaPriority() {
                return otaSession.getOtaPriority();
            }

            public boolean ifSystemWillRebootAfterOta() {
                return otaSession.ifSystemWillRebootAfterOta();
            }

            public boolean cancel() {
                return otaSession.cancel();
            }

            public boolean download() {
                return otaSession.download();
            }

            public boolean checkUpdate() {
                return otaSession.checkUpdate();
            }

            public String getCurrentCarVersionName() {
                return otaSession.getCurrentCarVersionName();
            }

            public String getSysBssId() {
                return otaSession.getSysBssId();
            }

            public int getSysVersionCode() {
                return otaSession.getSysVersionCode();
            }

            public String getSysVersionName() {
                return !TextUtils.isEmpty(otaSession.getSysVersionName()) ? otaSession.getSysVersionName() : "";
            }

            public int getOtaBaseSysVersionCode() {
                return otaSession.getOtaBaseSysVersionCode();
            }

            public String getOtaBaseSysVersionName() {
                return !TextUtils.isEmpty(otaSession.getOtaBaseSysVersionName()) ? otaSession.getOtaBaseSysVersionName() : "";
            }

            public boolean setOtaUpdateTime(Calendar calendar) {
                return otaSession.setOtaUpdateTime(calendar);
            }

            public Calendar getOtaUpdateTime() {
                Calendar otaUpdateTime = otaSession.getOtaUpdateTime();
                Log.i("OneVehicleSDK_GlyOTAImpl", "getOtaUpdateTime() result = " + otaUpdateTime);
                return otaUpdateTime;
            }

            public void requestOtaUpdateTime() {
                otaSession.requestOtaUpdateTime();
            }

            public int getEstimatedInstallationTime() {
                return otaSession.getEstimatedInstallationTime();
            }

            public boolean cancelOtaUpgradeTime() {
                return otaSession.cancelOtaUpgradeTime();
            }

            public String getUpgradeInfo() {
                return !TextUtils.isEmpty(otaSession.getUpgradeInfo()) ? otaSession.getUpgradeInfo() : "";
            }

            public boolean setPowerState(int i) {
                return otaSession.setPowerState(i);
            }

            public int getOtaUpdateInProgressState() {
                return otaSession.getOtaUpdateInProgressState();
            }

            public boolean isPopupEnable() {
                return otaSession.isPopupEnable();
            }

            public void setInstallRegretState(int i) {
                otaSession.setInstallRegretState(i);
            }

            public List<Integer> getInstallationtimes() {
                return otaSession.getInstallationtimes();
            }

            public String getUUID() {
                return otaSession.getUUID();
            }

            public List<String> getFileNames() {
                return otaSession.getFileNames();
            }

            public List<String> getSoftwareSignature() {
                return otaSession.getSoftwareSignature();
            }

            public String getSignatureCertificate() {
                return !TextUtils.isEmpty(otaSession.getSignatureCertificate()) ? otaSession.getSignatureCertificate() : "";
            }

            public List<String> getDownloadUrls() {
                return otaSession.getDownloadUrls();
            }

            public int getTotalSize() {
                return otaSession.getTotalSize();
            }

            public void checkConnectivityStatus() {
                otaSession.checkConnectivityStatus();
            }

            public void setOTADownloadStatus(int i, int i1) {
                otaSession.setOTADownloadStatus(i, i1);
            }

            public void setOTADownloadSize(int i) {
                otaSession.setOTADownloadSize(i);
            }

            public void reportDownloadFailedName(String s) {
                otaSession.reportDownloadFailedName(s);
            }

            public boolean checkSceneModeAlive() {
                return otaSession.checkSceneModeAlive();
            }

            public void setOtaUserSettings(boolean b, boolean b1, boolean b2, boolean b3) {
                otaSession.setOtaUserSettings(b, b1, b2, b3);
            }

            public boolean getOtaSetting() {
                return otaSession.getOtaSetting();
            }

            public boolean getOtaAutoSync() {
                return otaSession.getOtaAutoSync();
            }

            public boolean getOtaAutoDownload() {
                return otaSession.getOtaAutoDownload();
            }

            public boolean getOtaAutoInstallation() {
                return otaSession.getOtaAutoInstallation();
            }

            public boolean download(String s) {
                return otaSession.download(s);
            }

            public void sendUserDownloadRequest(String s, String s1, String s2) {
                otaSession.sendUserDownloadRequest(s, s1, s2);
            }

            public void sendUserDownloadCancel() {
                otaSession.sendUserDownloadCancel();
            }

            public void sendUserDownloadSuspend() {
                otaSession.sendUserDownloadSuspend();
            }

            public void sendUserDownloadResume() {
                otaSession.sendUserDownloadResume();
            }

            public void sendVbfDecryptionKey(List<OTA.DecryptionKeyType> list) {
                ArrayList arrayList = new ArrayList();
                for (OTA.DecryptionKeyType decryptionKeyType : list) {
                    DecryptionKeyType decryptionKeyType2 = new DecryptionKeyType();
                    decryptionKeyType2.setKey(decryptionKeyType.getKey());
                    decryptionKeyType2.setHashRoot(decryptionKeyType.getHashRoot());
                    arrayList.add(decryptionKeyType2);
                }
                otaSession.sendVbfDecryptionKey(arrayList);
            }

            public void sendBSSIDDisplayedVersionInfo(String s, String s1) {
                otaSession.sendBSSIDDisplayedVersionInfo(s, s1);
            }

            public void changeSlot() {
                otaSession.changeSlot();
            }

            public void requestCurrentCarVersionName() {
                Log.i("OneVehicleSDK_GlyOTAImpl", "no requestCurrentCarVersionName()");
            }
        };
        boolean zInstallPackage = this.mOta.installPackage(iOtaSession, otaPackagePath);
        Log.i("OneVehicleSDK_GlyOTAImpl", "Ota  installPackage(session= " + iOtaSession + ",otaPackagePath=" + otaPackagePath + ") result = " + zInstallPackage);
        return zInstallPackage;
    }

    @Override // com.geely.os.ota.IGlyOTA
    public int getSysVersionCode() {
        OTA ota = this.mOta;
        if (ota != null) {
            return ota.getSysVersionCode();
        }
        return 0;
    }

    @Override // com.geely.os.ota.IGlyOTA
    public String getSysVersionName() {
        OTA ota = this.mOta;
        return ota != null ? ota.getSysVersionName() : "";
    }

    @Override // com.geely.os.ota.IGlyOTA
    public int getOtaBaseSysVersionCode() {
        OTA ota = this.mOta;
        if (ota != null) {
            return ota.getOtaBaseSysVersionCode();
        }
        return 0;
    }

    @Override // com.geely.os.ota.IGlyOTA
    public String getOtaBaseSysVersionName() {
        OTA ota = this.mOta;
        return ota != null ? ota.getOtaBaseSysVersionName() : "";
    }

    @Override // com.geely.os.ota.IGlyOTA
    public String getOtaPkgRootPath() {
        OTA ota = this.mOta;
        return ota != null ? ota.getOtaPkgRootPath() : "";
    }

    @Override // com.geely.os.ota.IGlyOTA
    public boolean setOtaUpdateTime(Calendar calendar) {
        OTA ota = this.mOta;
        if (ota != null) {
            return ota.setOtaUpdateTime(calendar);
        }
        return false;
    }
}
