package com.geely.os.audio;

import android.car.Car;
import android.car.CarNotConnectedException;
import android.car.media.CarAudioManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.media.AudioManager;
import android.os.IBinder;
import android.util.ArraySet;
import android.view.Display;
import com.ecarx.xui.adaptapi.FunctionStatus;
import com.ecarx.xui.adaptapi.audio.audiofx.Audio;
import com.ecarx.xui.adaptapi.audio.audiofx.ExternalSpeakers;
import com.ecarx.xui.adaptapi.audio.audiofx.IAudioState;
import com.ecarx.xui.adaptapi.audio.audiofx.ICompensation;
import com.ecarx.xui.adaptapi.audio.audiofx.IEqualizer;
import com.ecarx.xui.adaptapi.audio.audiofx.IExternalSpeakers;
import com.ecarx.xui.adaptapi.audio.audiofx.IFaderBalance;
import com.ecarx.xui.adaptapi.audio.audiofx.IHarmanEqualizer;
import com.ecarx.xui.adaptapi.policy.IAudioAttributes;
import com.ecarx.xui.adaptapi.policy.Policy;
import com.geely.os.car.GlyLog;
import com.geely.os.car.GlySupportStatus;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Consumer;

/* loaded from: classes.dex */
class GlyAudioImpl implements IGlyAudio {
    private final Audio mAudio;
    private final IAudioAttributes mAudioAttributes;
    private AudioManager mAudioManager;
    private final Car mCar;
    private CarAudioManager mCarAudioManager;
    private ICompensation mCompensation;
    private IEqualizer mEqualizer;
    private IExternalSpeakers mExternalSpeakers;
    private IFaderBalance mFaderBalance;
    private IHarmanEqualizer mHarmanEqualizer;
    private final Map<String, Integer> mUsageMap;
    private final ArraySet<IGlyAudioCallback> mAudioChangeCallbackSet = new ArraySet<>();
    private final ArraySet<IGlyCompensationSettingListener> mCompensationSettingListeners = new ArraySet<>();
    private final ArraySet<IGlyFaderBalanceStateListener> mFaderBalanceStateListeners = new ArraySet<>();
    private final ArraySet<IGlyHarmanSettingListener> mHarmanSettingListeners = new ArraySet<>();
    private final ArraySet<IGlyEqualizerStateListener> mEqualizerStateListeners = new ArraySet<>();
    private final ArraySet<IGlyExternalSpeakersVolumeListener> mExternalSpeakersVolumeListeners = new ArraySet<>();
    private final ArraySet<IGlyExternalSpeakersListener> mExternalSpeakersListeners = new ArraySet<>();
    private IEqualizer.IEqualizerStateListener mEqualizerStateListener = new AnonymousClass1();
    private ICompensation.ICompensationSettingListener compensationSettingListener = new AnonymousClass2();
    CarAudioManager.CarVolumeCallback carVolumeCallback = new AnonymousClass3();
    private IFaderBalance.IFaderBalanceStateListener mFaderBalanceStateListener = new AnonymousClass4();
    private IHarmanEqualizer.IHarmanSettingListener mHarmanSettingListener = new AnonymousClass5();
    private Audio.IAudioSettingListener mAudioSettingCallback = new AnonymousClass6();
    private IExternalSpeakers.IExternalSpeakersVolumeListener iExternalSpeakersVolumeListener = new AnonymousClass7();
    private IExternalSpeakers.IExternalSpeakersListener externalSpeakersListener = new AnonymousClass8();

    /* renamed from: com.geely.os.audio.GlyAudioImpl$1, reason: invalid class name */
    class AnonymousClass1 implements IEqualizer.IEqualizerStateListener {
        AnonymousClass1() {
        }

        public void onEqualizerStateChanged(final FunctionStatus functionStatus) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onEqualizerStateChanged  functionStatus =" + functionStatus.ordinal());
            GlyAudioImpl.this.mEqualizerStateListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$1$trNQAhtwVqgoa52o355HptlwbRw
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyEqualizerStateListener) obj).onEqualizerStateChanged(functionStatus.ordinal());
                }
            });
        }

        public void onEqualizerModeChanged(final int mode) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onEqualizerModeChanged mode =" + mode);
            GlyAudioImpl.this.mEqualizerStateListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$1$3zqEJl_FdTh0HzZBW4slZMq7iXo
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyEqualizerStateListener) obj).onEqualizerModeChanged(mode);
                }
            });
        }
    }

    /* renamed from: com.geely.os.audio.GlyAudioImpl$2, reason: invalid class name */
    class AnonymousClass2 implements ICompensation.ICompensationSettingListener {
        AnonymousClass2() {
        }

        public void onCompensationSettingStateChanged(final int i) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onCompensationSettingStateChanged : " + i);
            GlyAudioImpl.this.mCompensationSettingListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$2$z3FKD8JkK6MVELs2gv5jHa1Nljk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyCompensationSettingListener) obj).onCompensationSettingStateChanged(i);
                }
            });
        }

        public void onEffectEnhanceModeChanged(final int i) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onEffectEnhanceModeChanged : " + i);
            GlyAudioImpl.this.mCompensationSettingListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$2$UyxrukcLrdYm1fXfbwswNbXRkMs
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyCompensationSettingListener) obj).onEffectEnhanceModeChanged(i);
                }
            });
        }

        public void onLevelOfSpeedVolumeChanged(final int i) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onLevelOfSpeedVolumeChanged : " + i);
            GlyAudioImpl.this.mCompensationSettingListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$2$10HH3CSDa0pE9pvrSPDM69Iq7ds
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyCompensationSettingListener) obj).onLevelOfSpeedVolumeChanged(i);
                }
            });
        }
    }

    /* renamed from: com.geely.os.audio.GlyAudioImpl$3, reason: invalid class name */
    class AnonymousClass3 extends CarAudioManager.CarVolumeCallback {
        AnonymousClass3() {
        }

        @Override // android.car.media.CarAudioManager.CarVolumeCallback
        public void onGroupVolumeChanged(int zoneId, int groupId, int flags) {
            GlyLog.d("OneVehicleSDK_GlyAudioImpl", "onGroupVolumeChanged groupId = " + groupId + ", flags = " + flags);
            final String[] usageByGroupId = GlyAudioImpl.this.getUsageByGroupId(groupId);
            GlyLog.d("OneVehicleSDK_GlyAudioImpl", "onGroupVolumeChanged getUsageByGroupId = " + Arrays.toString(usageByGroupId));
            if (usageByGroupId.length > 0) {
                GlyAudioImpl.this.mAudioChangeCallbackSet.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$3$bQIAbr-NhJPQkqVf9wbYIvNOvkY
                    @Override // java.util.function.Consumer
                    public final void accept(Object obj) {
                        ((IGlyAudioCallback) obj).onGroupVolumeChanged(usageByGroupId);
                    }
                });
            }
        }

        @Override // android.car.media.CarAudioManager.CarVolumeCallback
        public void onMasterMuteChanged(int zoneId, int flags) {
            super.onMasterMuteChanged(zoneId, flags);
        }
    }

    /* renamed from: com.geely.os.audio.GlyAudioImpl$4, reason: invalid class name */
    class AnonymousClass4 implements IFaderBalance.IFaderBalanceStateListener {
        AnonymousClass4() {
        }

        public void onFaderBalanceStateChanger(final FunctionStatus functionStatus) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onFaderBalanceStateChanger : " + functionStatus.ordinal());
            GlyAudioImpl.this.mFaderBalanceStateListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$4$ot0yP0fhZIGN1dSkpSSitcGJ0Gk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyFaderBalanceStateListener) obj).onFaderBalanceStateChanger(functionStatus.ordinal());
                }
            });
        }

        public void onFaderChanged(final int i) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onFaderChanged : " + i);
            GlyAudioImpl.this.mFaderBalanceStateListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$4$XFkTUCCgaPm0z6lDFzNRXIzV7A8
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyFaderBalanceStateListener) obj).onFaderChanged(i);
                }
            });
        }

        public void onBalanceChanged(final int i) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onBalanceChanged : " + i);
            GlyAudioImpl.this.mFaderBalanceStateListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$4$SWjln9oXx4sNK9_NPCrvwCFXWyk
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyFaderBalanceStateListener) obj).onBalanceChanged(i);
                }
            });
        }
    }

    /* renamed from: com.geely.os.audio.GlyAudioImpl$5, reason: invalid class name */
    class AnonymousClass5 implements IHarmanEqualizer.IHarmanSettingListener {
        AnonymousClass5() {
        }

        public void onHarmanSettingStateChanged(final int i) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onHarmanSettingStateChanged : " + i);
            GlyAudioImpl.this.mHarmanSettingListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$5$6wqPi0x54VoY_1FsabuBFoXi9rE
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyHarmanSettingListener) obj).onHarmanSettingStateChanged(i);
                }
            });
        }

        public void onBandChanged(final int band, final int level) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onBandChanged band=" + band + " level=" + level);
            GlyAudioImpl.this.mHarmanSettingListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$5$G9c-RaOivdtaruunO5X839aj_qI
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyHarmanSettingListener) obj).onBandChanged(band, level);
                }
            });
        }
    }

    /* renamed from: com.geely.os.audio.GlyAudioImpl$6, reason: invalid class name */
    class AnonymousClass6 implements Audio.IAudioSettingListener {
        AnonymousClass6() {
        }

        public void onAudioSettingStateChanged(final int audioSetting) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onAudioSettingStateChanged audioSetting=" + audioSetting);
            GlyAudioImpl.this.mAudioChangeCallbackSet.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$6$nm9AfQIBCD7E9QSf8GkkxjjJ6aI
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyAudioCallback) obj).onAudioSettingStateChanged(audioSetting);
                }
            });
        }

        public void onNaviMixModeChanged(final int i) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onNaviMixModeChanged i=" + i);
            GlyAudioImpl.this.mAudioChangeCallbackSet.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$6$Ntpf9r1dSUKOOwob7oEfKjzttKI
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyAudioCallback) obj).onNaviMixModeChanged(i);
                }
            });
        }

        public void onSurroundSoundOnOffChanged(final boolean b) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onSurroundSoundOnOffChanged b=" + b);
            GlyAudioImpl.this.mAudioChangeCallbackSet.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$6$wsONiO4-IT3xvHa86IOEB1-EEzw
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyAudioCallback) obj).onSurroundSoundOnOffChanged(b);
                }
            });
        }
    }

    /* renamed from: com.geely.os.audio.GlyAudioImpl$7, reason: invalid class name */
    class AnonymousClass7 implements IExternalSpeakers.IExternalSpeakersVolumeListener {
        AnonymousClass7() {
        }

        public void onSpeakersVolumeChange(final int volume) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onSpeakersVolumeChange : " + volume);
            GlyAudioImpl.this.mExternalSpeakersVolumeListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$7$e8HCFEfHoSD5qpcASvlS4v4uL4U
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyExternalSpeakersVolumeListener) obj).onSpeakersVolumeChange(volume);
                }
            });
        }
    }

    /* renamed from: com.geely.os.audio.GlyAudioImpl$8, reason: invalid class name */
    class AnonymousClass8 implements IExternalSpeakers.IExternalSpeakersListener {
        AnonymousClass8() {
        }

        public void onMicVolumeChange(final int volume) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "onMicVolumeChange : " + volume);
            GlyAudioImpl.this.mExternalSpeakersListeners.forEach(new Consumer() { // from class: com.geely.os.audio.-$$Lambda$GlyAudioImpl$8$tjGYOAdYjKz88p4MvV9XDYXqq-Q
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyExternalSpeakersListener) obj).onMicVolumeChange(volume);
                }
            });
        }
    }

    private GlyAudioImpl(Context context) throws IllegalStateException {
        Audio audioCreate = Audio.create(context);
        this.mAudio = audioCreate;
        this.mAudioManager = (AudioManager) context.getSystemService("audio");
        if (audioCreate != null) {
            this.mCompensation = audioCreate.getCompensation();
            this.mFaderBalance = audioCreate.getFaderBalance();
            this.mHarmanEqualizer = audioCreate.getHarmanEqualizer();
            this.mEqualizer = audioCreate.getEqualizer();
            this.mExternalSpeakers = ExternalSpeakers.create(context);
        }
        Policy policyCreate = Policy.create(context);
        if (policyCreate == null) {
            this.mAudioAttributes = null;
        } else {
            this.mAudioAttributes = policyCreate.getAudioAttributes();
        }
        Car carCreateCar = Car.createCar(context, new ServiceConnection() { // from class: com.geely.os.audio.GlyAudioImpl.9
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName name, IBinder service) {
                try {
                    GlyAudioImpl glyAudioImpl = GlyAudioImpl.this;
                    glyAudioImpl.mCarAudioManager = (CarAudioManager) glyAudioImpl.mCar.getCarManager("audio");
                    GlyAudioImpl.this.mCarAudioManager.registerCarVolumeCallback(GlyAudioImpl.this.carVolumeCallback);
                } catch (Throwable th) {
                    GlyLog.e("OneVehicleSDK_GlyAudioImpl", "car service is connected : " + th.getMessage());
                    GlyAudioImpl.this.mCarAudioManager = null;
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName name) {
                try {
                    if (GlyAudioImpl.this.mCarAudioManager != null) {
                        GlyAudioImpl.this.mCarAudioManager.unregisterCarVolumeCallback(GlyAudioImpl.this.carVolumeCallback);
                    }
                } catch (CarNotConnectedException e) {
                    GlyLog.e("OneVehicleSDK_GlyAudioImpl", "car service is disconnected : " + e.getMessage());
                }
                GlyAudioImpl.this.mCarAudioManager = null;
            }
        });
        this.mCar = carCreateCar;
        if (carCreateCar != null) {
            carCreateCar.connect();
        }
        this.mUsageMap = new HashMap(6);
    }

    public static IGlyAudio create(Context context) {
        if (context != null) {
            return new GlyAudioImpl(context);
        }
        return null;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void release() {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "release");
        this.mFaderBalance = null;
        this.mEqualizer = null;
        this.mHarmanEqualizer = null;
        this.mCompensation = null;
        Car car = this.mCar;
        if (car != null) {
            car.disconnect();
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getVolumeByUsage(String usage) {
        int groupVolume = 0;
        if (this.mCarAudioManager != null) {
            try {
                Method method = CarAudioManager.class.getMethod("getGroupVolume", int.class);
                groupVolume = (int) method.invoke(this.mCarAudioManager, getGroupIdByUsage(usage));
            } catch (Exception e) {
                GlyLog.e("OneVehicleSDK_GlyAudioImpl", "getVolumeByUsage error : " + e.getMessage());
                e.printStackTrace();
            }
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getVolumeByUsage : " + usage + ", ret = " + groupVolume);
        return groupVolume;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getMinVolumeByUsage(String usage) {
        int groupMinVolume = 0;
        if (this.mCarAudioManager != null) {
            try {
                Method method = CarAudioManager.class.getMethod("getGroupMinVolume", int.class);
                groupMinVolume = (int) method.invoke(this.mCarAudioManager, getGroupIdByUsage(usage));
            } catch (Exception e) {
                GlyLog.e("OneVehicleSDK_GlyAudioImpl", "getMinVolumeByUsage error : " + e.getMessage());
                e.printStackTrace();
            }
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getMinVolumeByUsage : " + usage + ", ret = " + groupMinVolume);
        return groupMinVolume;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getMaxVolumeByUsage(String usage) {
        int groupMaxVolume = 0;
        if (this.mCarAudioManager != null) {
            try {
                Method method = CarAudioManager.class.getMethod("getGroupMaxVolume", int.class);
                groupMaxVolume = (int) method.invoke(this.mCarAudioManager, getGroupIdByUsage(usage));
            } catch (Exception e) {
                GlyLog.e("OneVehicleSDK_GlyAudioImpl", "getMaxVolumeByUsage error : " + e.getMessage());
                e.printStackTrace();
            }
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getMaxVolumeByUsage : " + usage + ", ret = " + groupMaxVolume);
        return groupMaxVolume;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setVolumeByUsage(String usage, int volume) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setVolumeByUsage : usage = " + usage + ", volume = " + volume);
        if (this.mCarAudioManager != null) {
            try {
                Method method = CarAudioManager.class.getMethod("setGroupVolume", int.class, int.class, int.class);
                method.invoke(this.mCarAudioManager, getGroupIdByUsage(usage), volume, 4);
            } catch (Exception e) {
                GlyLog.e("OneVehicleSDK_GlyAudioImpl", "getVolumeByUsage error : " + e.getMessage());
                e.printStackTrace();
            }
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setVolumeByUsage(String usage, int volume, int flags) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setVolumeByUsage : usage = " + usage + ", volume = " + volume + ", flags = " + flags);
        if (this.mCarAudioManager != null) {
            try {
                Method method = CarAudioManager.class.getMethod("setGroupVolume", int.class, int.class, int.class);
                method.invoke(this.mCarAudioManager, getGroupIdByUsage(usage), volume, flags);
            } catch (Exception e) {
                GlyLog.e("OneVehicleSDK_GlyAudioImpl", "getVolumeByUsage error : " + e.getMessage());
                e.printStackTrace();
            }
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void adjustStreamVolume(int streamType, int direction, int flags) {
        if (this.mAudioManager != null) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "adjustStreamVolume(" + streamType + "," + direction + "," + flags + ")");
            this.mAudioManager.adjustStreamVolume(streamType, direction, flags);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getStreamVolume(int streamType) {
        AudioManager audioManager = this.mAudioManager;
        if (audioManager == null) {
            return 0;
        }
        int streamVolume = audioManager.getStreamVolume(streamType);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getStreamVolume(" + streamType + ") = " + streamVolume);
        return streamVolume;
    }

    private int getGroupIdByUsage(String usage) {
        Integer numValueOf = this.mUsageMap.get(usage);
        if (numValueOf == null || numValueOf.intValue() < 0) {
            IAudioAttributes iAudioAttributes = this.mAudioAttributes;
            if (iAudioAttributes != null) {
                int audioAtrributesUsage = iAudioAttributes.getAudioAtrributesUsage(usage);
                CarAudioManager carAudioManager = this.mCarAudioManager;
                if (carAudioManager != null) {
                    try {
                        Method method = CarAudioManager.class.getMethod("getVolumeGroupIdForUsage", int.class);
                        numValueOf = (Integer) method.invoke(carAudioManager, audioAtrributesUsage);
                        this.mUsageMap.put(usage, numValueOf);
                    } catch (Exception e) {
                        GlyLog.e("OneVehicleSDK_GlyAudioImpl", "getVolumeGroupIdForUsage error : " + e.getMessage());
                        e.printStackTrace();
                        numValueOf = -1;
                    }
                }
            }
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getGroupIdByUsage: usage = " + usage + ", groupId = " + numValueOf);
        }
        if (numValueOf == null) {
            return -1;
        }
        return numValueOf.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String[] getUsageByGroupId(int groupId) {
        ArraySet arraySet = new ArraySet();
        for (Map.Entry<String, Integer> entry : this.mUsageMap.entrySet()) {
            if (entry.getValue().intValue() == groupId) {
                arraySet.add(entry.getKey());
            }
        }
        return (String[]) arraySet.toArray(new String[arraySet.size()]);
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short[] getFaderLevelRange() {
        short[] faderLevelRange = {-10, 10};
        IFaderBalance iFaderBalance = this.mFaderBalance;
        if (iFaderBalance != null) {
            faderLevelRange = iFaderBalance.getFaderLevelRange();
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getFaderLevelRange: " + Arrays.toString(faderLevelRange));
        return faderLevelRange;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setFaderLevel(short level) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setFaderLevel = " + ((int) level));
        IFaderBalance iFaderBalance = this.mFaderBalance;
        if (iFaderBalance != null) {
            iFaderBalance.setFaderLevel(level);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short[] getBalanceLevelRange() {
        short[] balanceLevelRange = {-10, 10};
        IFaderBalance iFaderBalance = this.mFaderBalance;
        if (iFaderBalance != null) {
            balanceLevelRange = iFaderBalance.getBalanceLevelRange();
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getBalanceLevelRange: " + Arrays.toString(balanceLevelRange));
        return balanceLevelRange;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short getBalanceLevel() {
        IFaderBalance iFaderBalance = this.mFaderBalance;
        short balanceLevel = iFaderBalance != null ? iFaderBalance.getBalanceLevel() : (short) 0;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getBalanceLevel: " + ((int) balanceLevel));
        return balanceLevel;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short getFaderLevel() {
        IFaderBalance iFaderBalance = this.mFaderBalance;
        short faderLevel = iFaderBalance != null ? iFaderBalance.getFaderLevel() : (short) 0;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getFaderLevel: " + ((int) faderLevel));
        return faderLevel;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setBalanceLevel(short level) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setBalanceLevel: " + ((int) level));
        IFaderBalance iFaderBalance = this.mFaderBalance;
        if (iFaderBalance != null) {
            iFaderBalance.setBalanceLevel(level);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int isFaderSupported() {
        int iOrdinal = GlySupportStatus.error;
        IFaderBalance iFaderBalance = this.mFaderBalance;
        if (iFaderBalance != null) {
            iOrdinal = iFaderBalance.isFaderSupported().ordinal();
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isFaderSupported: " + iOrdinal);
        return iOrdinal;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int isBalanceSupported() {
        int iOrdinal = GlySupportStatus.error;
        IFaderBalance iFaderBalance = this.mFaderBalance;
        if (iFaderBalance != null) {
            iOrdinal = iFaderBalance.isBalanceSupported().ordinal();
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isBalanceSupported: " + iOrdinal);
        return iOrdinal;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short getNumberOfBands() {
        IEqualizer iEqualizer = this.mEqualizer;
        short numberOfBands = iEqualizer != null ? iEqualizer.getNumberOfBands() : (short) 0;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getNumberOfBands: " + ((int) numberOfBands));
        return numberOfBands;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short[] getBandLevelRange() {
        short[] bandLevelRange = {-10, 10};
        IEqualizer iEqualizer = this.mEqualizer;
        if (iEqualizer != null) {
            bandLevelRange = iEqualizer.getBandLevelRange();
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getBandLevelRange: " + Arrays.toString(bandLevelRange));
        return bandLevelRange;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setBandLevel(short band, short level) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setBandLevel : band = " + ((int) band) + ", level = " + ((int) level));
        IEqualizer iEqualizer = this.mEqualizer;
        if (iEqualizer != null) {
            iEqualizer.setBandLevel(band, level);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short getBandLevel(short band) {
        IEqualizer iEqualizer = this.mEqualizer;
        short bandLevel = iEqualizer != null ? iEqualizer.getBandLevel(band) : (short) 0;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getBandLevel : band = " + ((int) band) + ", ret = " + ((int) bandLevel));
        return bandLevel;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short getCurrentPreset() {
        IEqualizer iEqualizer = this.mEqualizer;
        short currentPreset = iEqualizer != null ? iEqualizer.getCurrentPreset() : (short) 0;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getCurrentPreset: " + ((int) currentPreset));
        return currentPreset;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void usePreset(short preset) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "usePreset : preset = " + ((int) preset));
        IEqualizer iEqualizer = this.mEqualizer;
        if (iEqualizer != null) {
            iEqualizer.usePreset(preset);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short getNumberOfPresets() {
        IEqualizer iEqualizer = this.mEqualizer;
        short numberOfPresets = iEqualizer != null ? iEqualizer.getNumberOfPresets() : (short) 0;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getNumberOfPresets: " + ((int) numberOfPresets));
        return numberOfPresets;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public String getPresetName(short preset) {
        IEqualizer iEqualizer = this.mEqualizer;
        String presetName = iEqualizer != null ? iEqualizer.getPresetName(preset) : "";
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getPresetName : preset = " + ((int) preset) + ", ret = " + presetName);
        return presetName;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int isEqualizerSupported() {
        int iOrdinal = GlySupportStatus.error;
        IEqualizer iEqualizer = this.mEqualizer;
        if (iEqualizer != null) {
            iOrdinal = iEqualizer.isEqualizerSupported().ordinal();
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isEqualizerSupported: " + iOrdinal);
        return iOrdinal;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean isHarmanClariFiOnOff() {
        IHarmanEqualizer iHarmanEqualizer = this.mHarmanEqualizer;
        boolean zIsHarmanClariFiOnOff = iHarmanEqualizer != null ? iHarmanEqualizer.isHarmanClariFiOnOff() : false;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isHarmanClariFiOnOff: " + zIsHarmanClariFiOnOff);
        return zIsHarmanClariFiOnOff;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean isSurroundSoundOnOff() {
        Audio audio = this.mAudio;
        boolean zIsSurroundSoundOn = audio != null ? audio.isSurroundSoundOn() : false;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isSurroundSoundOnOff: " + zIsSurroundSoundOn);
        return zIsSurroundSoundOn;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean setHarmanClariFiOnOff(boolean onOff) {
        IHarmanEqualizer iHarmanEqualizer = this.mHarmanEqualizer;
        boolean harmanClariFiOnOff = iHarmanEqualizer != null ? iHarmanEqualizer.setHarmanClariFiOnOff(onOff) : false;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setHarmanClariFiOnOff: onOff = " + onOff + ", ret = " + harmanClariFiOnOff);
        return harmanClariFiOnOff;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean setHarmanSurroundSoundOnOff(boolean onOff) {
        IHarmanEqualizer iHarmanEqualizer = this.mHarmanEqualizer;
        boolean surroundSoundOnOff = iHarmanEqualizer != null ? iHarmanEqualizer.setSurroundSoundOnOff(onOff) : false;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setHarmanSurroundSoundOnOff: onOff = " + onOff + ", ret = " + surroundSoundOnOff);
        return surroundSoundOnOff;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean isHarmanSurroundSoundOnOff() {
        IHarmanEqualizer iHarmanEqualizer = this.mHarmanEqualizer;
        boolean zIsSurroundSoundOnOff = iHarmanEqualizer != null ? iHarmanEqualizer.isSurroundSoundOnOff() : false;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isHarmanSurroundSoundOnOff: " + zIsSurroundSoundOnOff);
        return zIsSurroundSoundOnOff;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean setSurroundSoundOnOff(boolean onOff) {
        boolean z;
        Audio audio = this.mAudio;
        if (audio != null) {
            audio.setSurroundSoundOnOff(onOff);
            z = true;
        } else {
            z = false;
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setSurroundSoundOnOff: onOff = " + onOff + ", ret = " + z);
        return z;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int isHarmanSettingSupported(int harmanSetting) {
        int iOrdinal = GlySupportStatus.error;
        IHarmanEqualizer iHarmanEqualizer = this.mHarmanEqualizer;
        if (iHarmanEqualizer != null) {
            iOrdinal = iHarmanEqualizer.isHarmanSettingSupported(harmanSetting).ordinal();
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isHarmanSettingSupported: harmanSetting = " + harmanSetting + ", ret = " + iOrdinal);
        return iOrdinal;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short[] getLMHBandLevelRange() {
        short[] sArr = {0, 0};
        IHarmanEqualizer iHarmanEqualizer = this.mHarmanEqualizer;
        if (iHarmanEqualizer != null) {
            return iHarmanEqualizer.getBandLevelRange();
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getLMHBandLevelRange: " + Arrays.toString(sArr));
        return sArr;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setLMHBandLevel(int band, short level) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setLMHBandLevel : band = " + band + ", level = " + ((int) level));
        IHarmanEqualizer iHarmanEqualizer = this.mHarmanEqualizer;
        if (iHarmanEqualizer != null) {
            iHarmanEqualizer.setBandLevel(band, level);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setLMHBandLevel(short band, short level) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setLMHBandLevel : band = " + ((int) band) + ", level = " + ((int) level));
    }

    @Override // com.geely.os.audio.IGlyAudio
    public short getLMHBandLevel(int band) {
        IHarmanEqualizer iHarmanEqualizer = this.mHarmanEqualizer;
        short bandLevel = iHarmanEqualizer != null ? iHarmanEqualizer.getBandLevel(band) : (short) 0;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getLMHBandLevel : band = " + band + ", ret = " + ((int) bandLevel));
        return bandLevel;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean isLoudnessEnabled() {
        ICompensation iCompensation = this.mCompensation;
        boolean zIsLoudnessEnabled = iCompensation != null ? iCompensation.isLoudnessEnabled() : false;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isLoudnessEnabled: " + zIsLoudnessEnabled);
        return zIsLoudnessEnabled;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setLoudnessEnable(boolean enable) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setLoudnessEnable : " + enable);
        ICompensation iCompensation = this.mCompensation;
        if (iCompensation != null) {
            iCompensation.setLoudnessEnable(enable);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean isSpeedCompensatedVolumeEnabled() {
        ICompensation iCompensation = this.mCompensation;
        boolean z = iCompensation != null && iCompensation.isSpeedCompensatedVolumeEnabled();
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isSpeedCompensatedVolumeEnabled: " + z);
        return z;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setSpeedCompensatedVolumeEnable(boolean enable) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setSpeedCompensatedVolumeEnable : " + enable);
        ICompensation iCompensation = this.mCompensation;
        if (iCompensation != null) {
            iCompensation.setSpeedCompensatedVolumeEnable(enable);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getCompensationLevelOfSpeedCompensatedVolume() {
        ICompensation iCompensation = this.mCompensation;
        int compensationLevelOfSpeedCompensatedVolume = iCompensation != null ? iCompensation.getCompensationLevelOfSpeedCompensatedVolume() : 0;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getCompensationLevelOfSpeedCompensatedVolume : " + compensationLevelOfSpeedCompensatedVolume);
        return compensationLevelOfSpeedCompensatedVolume;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setCompensationLevelOfSpeedCompensatedVolume(int level) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setCompensationLevelOfSpeedCompensatedVolume: level = " + level);
        ICompensation iCompensation = this.mCompensation;
        if (iCompensation != null) {
            iCompensation.setCompensationLevelOfSpeedCompensatedVolume(level);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int[] getSupportedEffectEnhanceMode() {
        int[] supportedEffectEnhanceMode = {0};
        ICompensation iCompensation = this.mCompensation;
        if (iCompensation != null) {
            supportedEffectEnhanceMode = iCompensation.getSupportedEffectEnhanceMode();
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getSupportEffectEnhanceMode : " + Arrays.toString(supportedEffectEnhanceMode));
        return supportedEffectEnhanceMode;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getEffectEnhanceMode() {
        ICompensation iCompensation = this.mCompensation;
        int effectEnhanceMode = iCompensation != null ? iCompensation.getEffectEnhanceMode() : 0;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getEffectEnhanceMode: " + effectEnhanceMode);
        return effectEnhanceMode;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean setEffectEnhanceMode(int effectMode) {
        ICompensation iCompensation = this.mCompensation;
        boolean effectEnhanceMode = iCompensation != null ? iCompensation.setEffectEnhanceMode(effectMode) : false;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setEffectEnhanceMode: effectMode = " + effectMode + ", ret = " + effectEnhanceMode);
        return effectEnhanceMode;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int isCompensationSettingSupported(int compensationSetting) {
        int iOrdinal = GlySupportStatus.error;
        ICompensation iCompensation = this.mCompensation;
        if (iCompensation != null) {
            iOrdinal = iCompensation.isCompensationSettingSupported(compensationSetting).ordinal();
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isCompensationSettingSupported: " + compensationSetting + ", ret = " + iOrdinal);
        return iOrdinal;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setNaviVoiceMixMode(int mode) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setNaviVoiceMixMode: mode = " + mode);
        Audio audio = this.mAudio;
        if (audio != null) {
            audio.setNaviVoiceMixMode(mode);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getNaviVoiceMixMode() {
        IAudioState audioState;
        Audio audio = this.mAudio;
        int naviVoiceMixMode = (audio == null || (audioState = audio.getAudioState()) == null) ? 1 : audioState.getNaviVoiceMixMode();
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getNaviVoiceMixMode: " + naviVoiceMixMode);
        return naviVoiceMixMode;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean isAudioSettingSupported(int audioSetting) {
        Audio audio = this.mAudio;
        boolean z = false;
        if (audio != null && audio.isAudioSettingSupported(audioSetting) == FunctionStatus.active) {
            z = true;
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isAudioSettingSupported: audioSetting = " + audioSetting + ", ret = " + z);
        return z;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void registerAudioSettingChangedCallback(IGlyAudioCallback callback) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "registerAudioSettingChangedCallback callback=" + callback);
        if (callback != null) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "AudioChangeCallbacks.size() = " + this.mAudioChangeCallbackSet.size());
            if (this.mAudio != null && this.mAudioChangeCallbackSet.size() == 0) {
                this.mAudio.registerAudioSettingListener(this.mAudioSettingCallback);
            }
            this.mAudioChangeCallbackSet.add(callback);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void unregisterAudioSettingChangedCallback(IGlyAudioCallback callback) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "unregisterAudioSettingChangedCallback callback=" + callback);
        this.mAudioChangeCallbackSet.remove(callback);
        if (this.mAudio == null || this.mAudioChangeCallbackSet.size() != 0) {
            return;
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "AudioChangeCallbacks  clear");
        this.mAudio.unregisterAudioSettingListener(this.mAudioSettingCallback);
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getAudioAtrributesUsage(String usage) {
        IAudioAttributes iAudioAttributes = this.mAudioAttributes;
        if (iAudioAttributes == null) {
            return 0;
        }
        int audioAtrributesUsage = iAudioAttributes.getAudioAtrributesUsage(usage);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getAudioAtrributesUsage( " + usage + ") =" + audioAtrributesUsage);
        return audioAtrributesUsage;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getAudioAtrributesUsage(String usage, Display display) {
        IAudioAttributes iAudioAttributes = this.mAudioAttributes;
        if (iAudioAttributes == null) {
            return 0;
        }
        int audioAtrributesUsage = iAudioAttributes.getAudioAtrributesUsage(usage, display);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getAudioAtrributesUsage( " + usage + "," + display + ") =" + audioAtrributesUsage);
        return audioAtrributesUsage;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getAudioAtrributesContentType(String usage) {
        IAudioAttributes iAudioAttributes = this.mAudioAttributes;
        if (iAudioAttributes == null) {
            return 0;
        }
        int audioAtrributesContentType = iAudioAttributes.getAudioAtrributesContentType(usage);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getAudioAtrributesContentType( " + usage + ") =" + audioAtrributesContentType);
        return audioAtrributesContentType;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean registerCompensationSettingListener(IGlyCompensationSettingListener listener) {
        if (listener == null) {
            return false;
        }
        boolean zRegisterCompensationSettingListener = true;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "CompensationSettingListeners.size() =" + this.mCompensationSettingListeners.size());
        if (this.mCompensation != null && this.mCompensationSettingListeners.size() == 0) {
            zRegisterCompensationSettingListener = this.mCompensation.registerCompensationSettingListener(this.compensationSettingListener);
        }
        this.mCompensationSettingListeners.add(listener);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "registerCompensationSettingListener isRegister=" + zRegisterCompensationSettingListener);
        return zRegisterCompensationSettingListener;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean unregisterCompensationSettingListener(IGlyCompensationSettingListener listener) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "unregisterCompensationSettingListener listener=" + listener);
        if (listener == null) {
            return false;
        }
        this.mCompensationSettingListeners.remove(listener);
        if (this.mCompensation == null || this.mCompensationSettingListeners.size() != 0) {
            return true;
        }
        boolean zUnregisterCompensationSettingListener = this.mCompensation.unregisterCompensationSettingListener(this.compensationSettingListener);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "CompensationSettingListeners clear isUnRegister=" + zUnregisterCompensationSettingListener);
        return zUnregisterCompensationSettingListener;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean registerFaderBalanceStateListener(IGlyFaderBalanceStateListener listener) {
        if (listener == null) {
            return false;
        }
        boolean zRegisterFaderBalanceStateListener = true;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "FaderBalanceStateListeners.size() = " + this.mFaderBalanceStateListeners.size());
        if (this.mFaderBalance != null && this.mFaderBalanceStateListeners.size() == 0) {
            zRegisterFaderBalanceStateListener = this.mFaderBalance.registerFaderBalanceStateListener(this.mFaderBalanceStateListener);
        }
        this.mFaderBalanceStateListeners.add(listener);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "registerFaderBalanceStateListener isRegister=" + zRegisterFaderBalanceStateListener);
        return zRegisterFaderBalanceStateListener;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean unregisterFaderBalanceStateListener(IGlyFaderBalanceStateListener listener) {
        if (listener == null) {
            return false;
        }
        this.mFaderBalanceStateListeners.remove(listener);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "unregisterFaderBalanceStateListener listener=" + listener);
        if (this.mFaderBalance == null || this.mFaderBalanceStateListeners.size() != 0) {
            return true;
        }
        boolean zUnregisterFaderBalanceStateListener = this.mFaderBalance.unregisterFaderBalanceStateListener(this.mFaderBalanceStateListener);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "FaderBalanceStateListeners clear isUnRegister=" + zUnregisterFaderBalanceStateListener);
        return zUnregisterFaderBalanceStateListener;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean registerHarmanSettingListener(IGlyHarmanSettingListener listener) {
        if (listener == null) {
            return false;
        }
        boolean zRegisterHarmanSettingListener = true;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "HarmanSettingListeners.size() = " + this.mHarmanSettingListeners.size());
        if (this.mHarmanEqualizer != null && this.mHarmanSettingListeners.size() == 0) {
            zRegisterHarmanSettingListener = this.mHarmanEqualizer.registerHarmanSettingListener(this.mHarmanSettingListener);
        }
        this.mHarmanSettingListeners.add(listener);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "registerHarmanSettingListener isRegister=" + zRegisterHarmanSettingListener);
        return zRegisterHarmanSettingListener;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean unregisterHarmanSettingListener(IGlyHarmanSettingListener listener) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "unregisterHarmanSettingListener listener=" + listener);
        if (listener == null) {
            return false;
        }
        this.mHarmanSettingListeners.remove(listener);
        if (this.mHarmanEqualizer == null || this.mHarmanSettingListeners.size() != 0) {
            return true;
        }
        boolean zUnregisterHarmanSettingListener = this.mHarmanEqualizer.unregisterHarmanSettingListener(this.mHarmanSettingListener);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "mHarmanSettingListeners clear isUnRegister=" + zUnregisterHarmanSettingListener);
        return zUnregisterHarmanSettingListener;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean registerEqualizerStateListener(IGlyEqualizerStateListener listener) {
        if (listener == null) {
            return false;
        }
        boolean zRegisterEqualizerStateListener = true;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "EqualizerStateListeners.size() =" + this.mEqualizerStateListeners.size());
        if (this.mEqualizer != null && this.mEqualizerStateListeners.size() == 0) {
            zRegisterEqualizerStateListener = this.mEqualizer.registerEqualizerStateListener(this.mEqualizerStateListener);
        }
        this.mEqualizerStateListeners.add(listener);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "registerEqualizerStateListener isRegister=" + zRegisterEqualizerStateListener);
        return zRegisterEqualizerStateListener;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean unregisterEqualizerStateListener(IGlyEqualizerStateListener listener) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "unregisterEqualizerStateListener listener=" + listener);
        if (listener == null) {
            return false;
        }
        this.mEqualizerStateListeners.remove(listener);
        if (this.mEqualizer == null || this.mEqualizerStateListeners.size() != 0) {
            return true;
        }
        boolean zUnregisterEqualizerStateListener = this.mEqualizer.unregisterEqualizerStateListener(this.mEqualizerStateListener);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "EqualizerStateListeners clear isUnRegister=" + zUnregisterEqualizerStateListener);
        return zUnregisterEqualizerStateListener;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getExternalSpeakersMediaPlayMode() {
        IExternalSpeakers iExternalSpeakers = this.mExternalSpeakers;
        if (iExternalSpeakers == null) {
            return 0;
        }
        int externalSpeakersMediaPlayMode = iExternalSpeakers.getExternalSpeakersMediaPlayMode();
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getExternalSpeakersMediaPlayMode() =" + externalSpeakersMediaPlayMode);
        return externalSpeakersMediaPlayMode;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getExternalSpeakersVolume() {
        IExternalSpeakers iExternalSpeakers = this.mExternalSpeakers;
        if (iExternalSpeakers == null) {
            return 0;
        }
        int externalSpeakersVolume = iExternalSpeakers.getExternalSpeakersVolume();
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "getExternalSpeakersVolume() =" + externalSpeakersVolume);
        return externalSpeakersVolume;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean setExternalSpeakersMediaPlayMode(int mode) {
        if (this.mExternalSpeakers == null) {
            return false;
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setExternalSpeakersMediaPlayMode(" + mode + ")");
        return this.mExternalSpeakers.setExternalSpeakersMediaPlayMode(mode);
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean setExternalSpeakersSwitch(boolean enabled) {
        if (this.mExternalSpeakers == null) {
            return false;
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setExternalSpeakersSwitch(" + enabled + ")");
        return this.mExternalSpeakers.setExternalSpeakersSwitch(enabled);
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean setExternalSpeakersVolume(int volume) {
        if (this.mExternalSpeakers == null) {
            return false;
        }
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setExternalSpeakersVolume(" + volume + ")");
        return this.mExternalSpeakers.setExternalSpeakersVolume(volume);
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void registerExternalAudioVolumeCallback(IGlyExternalSpeakersVolumeListener callback) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "registerExternalAudioVolumeCallback( " + callback + ")");
        if (callback != null) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "ExternalSpeakersVolumeListeners.size() = " + this.mExternalSpeakersVolumeListeners);
            if (this.mExternalSpeakers != null && this.mExternalSpeakersVolumeListeners.size() == 0) {
                this.mExternalSpeakers.registerExternalAudioVolumeCallback(this.iExternalSpeakersVolumeListener);
            }
            this.mExternalSpeakersVolumeListeners.add(callback);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void unregisterExternalAudioVolumeCallback(IGlyExternalSpeakersVolumeListener callback) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "unregisterExternalAudioVolumeCallback( " + callback + ")");
        if (callback != null) {
            this.mExternalSpeakersVolumeListeners.remove(callback);
            if (this.mExternalSpeakers == null || this.mExternalSpeakersVolumeListeners.size() != 0) {
                return;
            }
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "ExternalSpeakersVolumeListeners clear");
            this.mExternalSpeakers.unregisterExternalAudioVolumeCallback(this.iExternalSpeakersVolumeListener);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void setMicVolumeCallbackSwitch(int value) {
        if (this.mExternalSpeakers != null) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setMicVolumeCallbackSwitch(" + value + ")");
            this.mExternalSpeakers.setMicVolumeCallbackSwitch(value);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void registerExternalAudioCallback(IGlyExternalSpeakersListener callback) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "registerExternalAudioCallback( " + callback + ")");
        if (callback != null) {
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "ExternalSpeakersListeners.size() = " + this.mExternalSpeakersListeners.size());
            if (this.mExternalSpeakers != null && this.mExternalSpeakersListeners.size() == 0) {
                this.mExternalSpeakers.registerExternalAudioCallback(this.externalSpeakersListener);
            }
            this.mExternalSpeakersListeners.add(callback);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public void unregisterExternalAudioCallback(IGlyExternalSpeakersListener callback) {
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "unregisterExternalAudioCallback( " + callback + ")");
        if (callback != null) {
            this.mExternalSpeakersListeners.remove(callback);
            if (this.mExternalSpeakers == null || this.mExternalSpeakersListeners.size() != 0) {
                return;
            }
            GlyLog.i("OneVehicleSDK_GlyAudioImpl", "ExternalSpeakersListeners clear");
            this.mExternalSpeakers.unregisterExternalAudioCallback(this.externalSpeakersListener);
        }
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean isSurroundSoundLevelSupported() {
        Audio audio = this.mAudio;
        boolean zIsSurroundSoundLevelSupported = audio != null ? audio.isSurroundSoundLevelSupported() : false;
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isSurroundSoundLevelSupported: " + zIsSurroundSoundLevelSupported);
        return zIsSurroundSoundLevelSupported;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getAudioProvider() {
        int audioProvider = this.mAudio.getAudioProvider();
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "audioProvider = " + audioProvider);
        return audioProvider;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean isDtsSoundEnabled() {
        ICompensation iCompensation = this.mCompensation;
        if (iCompensation == null) {
            return false;
        }
        boolean zIsDtsSoundEnabled = iCompensation.isDtsSoundEnabled();
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "isDtsSoundEnabled = " + zIsDtsSoundEnabled);
        return zIsDtsSoundEnabled;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public int getDtsSoundMode() {
        ICompensation iCompensation = this.mCompensation;
        if (iCompensation == null) {
            return 0;
        }
        int dtsSoundMode = iCompensation.getDtsSoundMode();
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "dtsSoundMode = " + dtsSoundMode);
        return dtsSoundMode;
    }

    @Override // com.geely.os.audio.IGlyAudio
    public boolean setDtsSoundMode(int dtsMode) {
        ICompensation iCompensation = this.mCompensation;
        if (iCompensation == null) {
            return false;
        }
        boolean dtsSoundMode = iCompensation.setDtsSoundMode(dtsMode);
        GlyLog.i("OneVehicleSDK_GlyAudioImpl", "setDtsSoundMode(dtsMode = " + dtsMode + ") result = " + dtsSoundMode);
        return dtsSoundMode;
    }
}
