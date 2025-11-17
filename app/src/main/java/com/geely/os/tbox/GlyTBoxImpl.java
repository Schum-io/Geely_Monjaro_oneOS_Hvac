package com.geely.os.tbox;

import android.content.Context;
import android.telephony.CellInfo;
import android.telephony.SignalStrength;
import android.util.ArraySet;
import com.ecarx.xui.adaptapi.tbox.ITBoxSettings;
import com.ecarx.xui.adaptapi.tbox.TBox;
import com.ecarx.xui.adaptapi.tbox.tboxmessager.ITBoxMessager;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class GlyTBoxImpl implements IGlyTBox {
    private ITBoxSettings itBoxSettings;
    private TBox tBox;
    private final ArraySet<IGlyCarLocatorCallback> carLocatorCallbacks = new ArraySet<>();
    private final ArraySet<IGlyKeyLockCallback> keyLockCallbacks = new ArraySet<>();
    private final ArraySet<GlyTBoxMessageCallback> tBoxMessageCallbacks = new ArraySet<>();
    private final ITBoxSettings.ICarLocatorCallback carLocatorCallback = new AnonymousClass1();
    private final ITBoxSettings.IKeylockCallback keylockCallback = new AnonymousClass2();
    private final ITBoxMessager.TBoxMessageCallback messageCallback = new AnonymousClass3();

    @Override // com.geely.os.tbox.IGlyTBox
    public boolean setGIDProfIDLnk(String gidInfo, int profId) {
        return false;
    }

    /* renamed from: com.geely.os.tbox.GlyTBoxImpl$1, reason: invalid class name */
    class AnonymousClass1 implements ITBoxSettings.ICarLocatorCallback {
        AnonymousClass1() {
        }

        public void onCarLocatorEnabled(final boolean b) {
            GlyTBoxImpl.this.carLocatorCallbacks.forEach(new Consumer() { // from class: com.geely.os.tbox.-$$Lambda$GlyTBoxImpl$1$lO37IrDPhmDT3OGVU4FVF8PNqgA
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyCarLocatorCallback) obj).onCarLocatorEnabled(b);
                }
            });
        }
    }

    /* renamed from: com.geely.os.tbox.GlyTBoxImpl$2, reason: invalid class name */
    class AnonymousClass2 implements ITBoxSettings.IKeylockCallback {
        AnonymousClass2() {
        }

        public void onKeylockEnabled(final boolean b) {
            GlyTBoxImpl.this.keyLockCallbacks.forEach(new Consumer() { // from class: com.geely.os.tbox.-$$Lambda$GlyTBoxImpl$2$YTxrJms--IvYG84-hbQUIcdsMXM
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyKeyLockCallback) obj).onKeylockEnabled(b);
                }
            });
        }
    }

    /* renamed from: com.geely.os.tbox.GlyTBoxImpl$3, reason: invalid class name */
    class AnonymousClass3 implements ITBoxMessager.TBoxMessageCallback {
        AnonymousClass3() {
        }

        public void onTBoxMessageGet(final Object o, final int i) {
            GlyTBoxImpl.this.tBoxMessageCallbacks.forEach(new Consumer() { // from class: com.geely.os.tbox.-$$Lambda$GlyTBoxImpl$3$Rrm2g8EjO0gC1pzzUbEFhvivm0k
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((GlyTBoxMessageCallback) obj).onTBoxMessageGet(o, i);
                }
            });
        }
    }

    public static IGlyTBox create(Context context) {
        if (context != null) {
            return new GlyTBoxImpl(context);
        }
        return null;
    }

    private GlyTBoxImpl(Context context) {
        TBox tBoxCreate = TBox.create(context);
        this.tBox = tBoxCreate;
        if (tBoxCreate != null) {
            this.itBoxSettings = tBoxCreate.getTBoxSettings();
        }
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public CellInfo getCellInfo() {
        TBox tBox = this.tBox;
        if (tBox != null) {
            return tBox.getCellInfo();
        }
        return null;
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getHardwareVersion() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getHardwareVersion() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public IGlyTBoxSettings getTBoxSettings() {
        if (this.itBoxSettings != null) {
            return new IGlyTBoxSettings() { // from class: com.geely.os.tbox.GlyTBoxImpl.4
                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public boolean isRVDCEnabled() {
                    return false;
                }

                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public void setRVDCStatus(boolean enable) {
                }

                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public boolean isCarLocatorEnabled() {
                    return GlyTBoxImpl.this.itBoxSettings.isCarLocatorEnabled();
                }

                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public int isCarLocatorSupported() {
                    return GlyTBoxImpl.this.itBoxSettings.isCarLocatorSupported().ordinal();
                }

                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public boolean isKeylockEnabled() {
                    return GlyTBoxImpl.this.itBoxSettings.isKeylockEnabled();
                }

                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public int isKeylockSupported() {
                    return GlyTBoxImpl.this.itBoxSettings.isKeylockSupported().ordinal();
                }

                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public void setCarLocatorCallback(IGlyCarLocatorCallback callback) {
                    GlyTBoxImpl.this.carLocatorCallbacks.add(callback);
                    GlyTBoxImpl.this.itBoxSettings.setCarLocatorCallback(GlyTBoxImpl.this.carLocatorCallback);
                }

                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public void unsetCarLocatorCallback(IGlyCarLocatorCallback callback) {
                    GlyTBoxImpl.this.itBoxSettings.unsetCarLocatorCallback(GlyTBoxImpl.this.carLocatorCallback);
                    GlyTBoxImpl.this.carLocatorCallbacks.remove(callback);
                }

                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public void setCarLocatorEnable(boolean enable) {
                    GlyTBoxImpl.this.itBoxSettings.setCarLocatorEnable(enable);
                }

                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public void setKeylockCallback(IGlyKeyLockCallback callback) {
                    GlyTBoxImpl.this.keyLockCallbacks.add(callback);
                    GlyTBoxImpl.this.itBoxSettings.setKeylockCallback(GlyTBoxImpl.this.keylockCallback);
                }

                @Override // com.geely.os.tbox.IGlyTBoxSettings
                public void unsetKeylockCallback(IGlyKeyLockCallback callback) {
                    GlyTBoxImpl.this.itBoxSettings.unsetKeylockCallback(GlyTBoxImpl.this.keylockCallback);
                    GlyTBoxImpl.this.keyLockCallbacks.remove(callback);
                }
            };
        }
        return null;
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getICCID() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getICCID() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getIMEI() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getIMEI() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getIMSI() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getIMSI() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getLineNumber() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getLineNumber() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getMSISDN() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getMSISDN() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getNetworkOperator() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getNetworkOperator() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getNetworkOperatorName() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getNetworkOperatorName() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getNetworkType() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getNetworkType() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public SignalStrength getSignalStrength() {
        TBox tBox = this.tBox;
        if (tBox != null) {
            return tBox.getSignalStrength();
        }
        return null;
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getSoftwareVersion() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getSoftwareVersion() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public int getSoftwareVersionCode() {
        TBox tBox = this.tBox;
        if (tBox != null) {
            return tBox.getSoftwareVersionCode();
        }
        return 0;
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getTBoxID() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getTBoxID() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public IGlyBoxMessage getTBoxMessage() {
        if (this.tBox.getTBoxMessager() != null) {
            return new IGlyBoxMessage() { // from class: com.geely.os.tbox.GlyTBoxImpl.5
                @Override // com.geely.os.tbox.IGlyBoxMessage
                public int getTBoxMsgType() {
                    return GlyTBoxImpl.this.tBox.getTBoxMessager().getTBoxMsgType();
                }

                @Override // com.geely.os.tbox.IGlyBoxMessage
                public IGlyNaviInfoFromTBox getNaviInfo() {
                    if (GlyTBoxImpl.this.tBox.getTBoxMessager().getNaviInfo() != null) {
                        return new IGlyNaviInfoFromTBox() { // from class: com.geely.os.tbox.GlyTBoxImpl.5.1
                            @Override // com.geely.os.tbox.IGlyNaviInfoFromTBox
                            public String getMessageTitle() {
                                return GlyTBoxImpl.this.tBox.getTBoxMessager().getNaviInfo().getMessageTitle();
                            }

                            @Override // com.geely.os.tbox.IGlyNaviInfoFromTBox
                            public String getMessageId() {
                                return GlyTBoxImpl.this.tBox.getTBoxMessager().getNaviInfo().getMessageId();
                            }

                            @Override // com.geely.os.tbox.IGlyNaviInfoFromTBox
                            public String getSender() {
                                return GlyTBoxImpl.this.tBox.getTBoxMessager().getNaviInfo().getSender();
                            }

                            @Override // com.geely.os.tbox.IGlyNaviInfoFromTBox
                            public String getLat() {
                                return GlyTBoxImpl.this.tBox.getTBoxMessager().getNaviInfo().getLat();
                            }

                            @Override // com.geely.os.tbox.IGlyNaviInfoFromTBox
                            public String getLon() {
                                return GlyTBoxImpl.this.tBox.getTBoxMessager().getNaviInfo().getLon();
                            }
                        };
                    }
                    return null;
                }

                @Override // com.geely.os.tbox.IGlyBoxMessage
                public void setTBoxMessageCallback(GlyTBoxMessageCallback tBoxMessageCallback, int messageType) {
                    GlyTBoxImpl.this.tBoxMessageCallbacks.add(tBoxMessageCallback);
                    GlyTBoxImpl.this.tBox.getTBoxMessager().setTBoxMessageCallback(GlyTBoxImpl.this.messageCallback, messageType);
                }

                @Override // com.geely.os.tbox.IGlyBoxMessage
                public void unsetTBoxMessageCallback(GlyTBoxMessageCallback tBoxMessageCallback) {
                    GlyTBoxImpl.this.tBoxMessageCallbacks.remove(tBoxMessageCallback);
                    GlyTBoxImpl.this.tBox.getTBoxMessager().unsetTBoxMessageCallback(GlyTBoxImpl.this.messageCallback);
                }
            };
        }
        return null;
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public String getTBoxSupplierCode() {
        TBox tBox = this.tBox;
        return tBox != null ? tBox.getTBoxSupplierCode() : "";
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public boolean isSubscribed() {
        TBox tBox = this.tBox;
        if (tBox != null) {
            return tBox.isSubscribed();
        }
        return false;
    }

    @Override // com.geely.os.tbox.IGlyTBox
    public boolean setTBoxReset() {
        TBox tBox = this.tBox;
        if (tBox != null) {
            return tBox.setTBoxReset();
        }
        return false;
    }
}
