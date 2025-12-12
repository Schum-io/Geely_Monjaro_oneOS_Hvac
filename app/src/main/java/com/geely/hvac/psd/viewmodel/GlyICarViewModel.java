package com.geely.hvac.psd.viewmodel;

import android.app.Application;
import android.content.SharedPreferences;
import android.util.ArrayMap;
import androidx.lifecycle.AndroidViewModel;
import androidx.lifecycle.MutableLiveData;
import com.geely.hvac.data.ConstantData;
import com.geely.hvac.utils.LogUtil;
import com.geely.os.car.GlyCar;
import com.geely.os.car.GlyCarPropertyIds;
import com.geely.os.car.GlyCarPropertyValue;
import com.geely.os.car.IGlyCar;
import com.geely.os.car.IGlyCarEventCallBack;
import com.geely.os.car.IGlyHev;
import com.geely.os.car.IGlyHevCallBack;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public class GlyICarViewModel extends AndroidViewModel {
    public static final String HEATING_LEVEL = "SeatHeatingLevel";
    private static final String HVACSETTINGDATA = "hvac_settings_data";
    public static final String MASSAGE_LEVEL = "massageLevel";
    public static final String MASSAGE_PROGRAM = "massageMode";
    public static final String PHYSICAL_PROGRAM = "physicalMode";
    public static final String VENTILATION_LEVEL = "VentilationLevel";
    public static SharedPreferences preferences;
    protected final String TAG;
    private final IGlyCarEventCallBack carEventCallBack;
    private final IGlyCar mCar;
    private final Set<IGlyCarEventCallBack> mCarEventCallBackSet;
    private final Map<String, MutableLiveData<Float>> mFloatValueMap;
    private final IGlyHev mHev;
    private final Map<String, MutableLiveData<Integer>> mIntValueMap;
    private final Map<String, MutableLiveData<Integer>> mSupportValueMap;

    /* renamed from: com.geely.hvac.psd.viewmodel.GlyICarViewModel$1, reason: invalid class name */
    class AnonymousClass1 implements IGlyCarEventCallBack {
        AnonymousClass1() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.geely.os.car.IGlyCarEventCallBack
        public void onChangeEvent(final int propertyId, final int areaId, final Object value) {
            int iIntValue;
            if (value instanceof Float) {
                if (GlyICarViewModel.this.mFloatValueMap.containsKey(propertyId + "," + areaId)) {
                    float fFloatValue = ((Float) value).floatValue();
                    if (fFloatValue != ((Float) ((MutableLiveData) GlyICarViewModel.this.mFloatValueMap.get(propertyId + "," + areaId)).getValue()).floatValue()) {
                        ((MutableLiveData) GlyICarViewModel.this.mFloatValueMap.get(propertyId + "," + areaId)).postValue(Float.valueOf(fFloatValue));
                    }
                }
            } else if (value instanceof Integer) {
                if (GlyICarViewModel.this.mIntValueMap.containsKey(propertyId + "," + areaId) && (iIntValue = ((Integer) value).intValue()) != ((Integer) ((MutableLiveData) GlyICarViewModel.this.mIntValueMap.get(propertyId + "," + areaId)).getValue()).intValue()) {
                    ((MutableLiveData) GlyICarViewModel.this.mIntValueMap.get(propertyId + "," + areaId)).postValue(Integer.valueOf(iIntValue));
                }
            } else {
                LogUtil.i("GlyICarViewModel", " callback unknown type=" + (value == null ? "null" : value.getClass().getSimpleName()) + " propertyId=" + propertyId + " areaId=" + areaId + " val=" + value);
            }
            GlyICarViewModel.this.mCarEventCallBackSet.forEach(new Consumer() { // from class: com.geely.hvac.psd.viewmodel.-$$Lambda$GlyICarViewModel$1$HTO6afplKPiDnTtQumNTN_AuagA
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((IGlyCarEventCallBack) obj).onChangeEvent(propertyId, areaId, value);
                }
            });
        }

        @Override // com.geely.os.car.IGlyCarEventCallBack
        public void onSupportChanged(int propertyId, int areaId, int status) {
            if (GlyICarViewModel.this.mSupportValueMap.containsKey(propertyId + "," + areaId)) {
                ((MutableLiveData) GlyICarViewModel.this.mSupportValueMap.get(propertyId + "," + areaId)).postValue(Integer.valueOf(status));
            }
        }
    }

    public GlyICarViewModel(Application application) {
        super(application);
        this.TAG = "GlyICarViewModel";
        AnonymousClass1 anonymousClass1 = new AnonymousClass1();
        this.carEventCallBack = anonymousClass1;
        this.mIntValueMap = new ArrayMap();
        this.mFloatValueMap = new ArrayMap();
        this.mSupportValueMap = new ArrayMap();
        preferences = application.getSharedPreferences(HVACSETTINGDATA, 0);
        IGlyCar iGlyCarCreate = GlyCar.create(application);
        this.mCar = iGlyCarCreate;
        iGlyCarCreate.registerSingleCarEventCallback(anonymousClass1, ConstantData.REGISTER_PROPERTY);
        IGlyHev iGlyHevCreateHev = GlyCar.createHev(application);
        this.mHev = iGlyHevCreateHev;
        iGlyHevCreateHev.registerTripListener(this::lambda$new$0$GlyICarViewModel);
        LogUtil.d("GlyICarViewModel", "hvac_settings");
        this.mCarEventCallBackSet = new HashSet();
    }

    public /* synthetic */ void lambda$new$0$GlyICarViewModel() {
        LogUtil.i("GlyICarViewModel", "tripInfoChange");
    }

    public MutableLiveData<Integer> getSupportStatus(int propertyId) {
        return getSupportStatus(propertyId, Integer.MIN_VALUE);
    }

    public MutableLiveData<Integer> getSupportStatus(int propertyId, int areaId) {
        int supportStatus = this.mCar.getSupportStatus(propertyId, areaId);
        if (this.mSupportValueMap.containsKey(propertyId + "," + areaId)) {
            MutableLiveData<Integer> mutableLiveData = this.mSupportValueMap.get(propertyId + "," + areaId);
            if (mutableLiveData.getValue() == null || supportStatus != mutableLiveData.getValue().intValue()) {
                mutableLiveData.setValue(Integer.valueOf(supportStatus));
            }
            return mutableLiveData;
        }
        MutableLiveData<Integer> mutableLiveData2 = new MutableLiveData<>();
        mutableLiveData2.setValue(Integer.valueOf(supportStatus));
        this.mSupportValueMap.put(propertyId + "," + areaId, mutableLiveData2);
        return mutableLiveData2;
    }

    public MutableLiveData<Float> getFloatProperty(int propertyId) {
        return getFloatProperty(propertyId, Integer.MIN_VALUE);
    }

    public boolean setFloatProperty(int propertyId, float val) {
        return this.mCar.setFloatProperty(propertyId, val);
    }

    public MutableLiveData<Integer> getIntProperty(int propertyId) {
        return getIntProperty(propertyId, 4);
    }

    public boolean setIntProperty(int propertyId, int val) {
        boolean intProperty = this.mCar.setIntProperty(propertyId, val);
        LogUtil.d("GlyICarViewModel", " propertyId: " + propertyId + " propertyVal: " + val + " intProperty: " + intProperty);
        return intProperty;
    }

    public MutableLiveData<Float> getFloatProperty(int propertyId, int areaId) {
        float floatProperty = this.mCar.getFloatProperty(propertyId, areaId);
        if (this.mFloatValueMap.containsKey(propertyId + "," + areaId)) {
            MutableLiveData<Float> mutableLiveData = this.mFloatValueMap.get(propertyId + "," + areaId);
            if (mutableLiveData.getValue() == null || floatProperty != mutableLiveData.getValue().floatValue()) {
                mutableLiveData.setValue(Float.valueOf(floatProperty));
            }
            return mutableLiveData;
        }
        MutableLiveData<Float> mutableLiveData2 = new MutableLiveData<>();
        mutableLiveData2.setValue(Float.valueOf(floatProperty));
        this.mFloatValueMap.put(propertyId + "," + areaId, mutableLiveData2);
        return mutableLiveData2;
    }

    public boolean setFloatProperty(int propertyId, int areaId, float val) {
        boolean floatProperty = this.mCar.setFloatProperty(propertyId, areaId, val);
        LogUtil.d("GlyICarViewModel", " propertyId: " + propertyId + " areaId: " + areaId + " propertyVal: " + val + " floatProperty: " + floatProperty);
        return floatProperty;
    }

    public MutableLiveData<Integer> getIntProperty(int propertyId, int areaId) {
        int intProperty = this.mCar.getIntProperty(propertyId, areaId);
        if (this.mIntValueMap.containsKey(propertyId + "," + areaId)) {
            MutableLiveData<Integer> mutableLiveData = this.mIntValueMap.get(propertyId + "," + areaId);
            if (mutableLiveData.getValue() == null || intProperty != mutableLiveData.getValue().intValue()) {
                mutableLiveData.setValue(Integer.valueOf(intProperty));
            }
            return mutableLiveData;
        }
        MutableLiveData<Integer> mutableLiveData2 = new MutableLiveData<>();
        mutableLiveData2.setValue(Integer.valueOf(intProperty));
        this.mIntValueMap.put(propertyId + "," + areaId, mutableLiveData2);
        return mutableLiveData2;
    }

    public boolean setIntProperty(int propertyId, int areaId, int val) {
        boolean intProperty = this.mCar.setIntProperty(propertyId, areaId, val);
        LogUtil.d("GlyICarViewModel", " propertyId: " + propertyId + " areaId: " + areaId + " propertyVal: " + val + " intProperty: " + intProperty);
        return intProperty;
    }

    public int[] getSupportedValueStatus(int propertyId) {
        return getSupportedValueStatus(propertyId, Integer.MIN_VALUE);
    }

    public int[] getSupportedValueStatus(int propertyId, int areaId) {
        return this.mCar.getSupportedValueStatus(propertyId, areaId);
    }

    public int isTripDataSupported() {
        return this.mHev.isTripDataSupported(1);
    }

    public boolean isDayMode() {
        int intProperty = this.mCar.getIntProperty(GlyCarPropertyIds.SETTING_FUNC_DAYMODE_SETTING);
        LogUtil.d("GlyICarViewModel", "isDayMode = " + intProperty);
        return intProperty == 538247425;
    }

    public int getSeatNum() {
        int intProperty = this.mCar.getIntProperty(GlyCarPropertyIds.SETTING_FUNC_SEAT_NUM);
        LogUtil.d("GlyICarViewModel", "getSeatNum : " + intProperty);
        return intProperty;
    }

    public void registerCarEventCallback(IGlyCarEventCallBack carEventCallBack) {
        if (carEventCallBack != null) {
            this.mCarEventCallBackSet.add(carEventCallBack);
        }
    }

    public void removeCarEventCallback(IGlyCarEventCallBack carEventCallBack) {
        this.mCarEventCallBackSet.remove(carEventCallBack);
    }

    @Override // androidx.lifecycle.ViewModel
    protected void onCleared() {
        super.onCleared();
        this.mCar.unregisterSingleCarEventCallback(this.carEventCallBack);
        this.mHev.unRegisterTripListener();
        this.mIntValueMap.clear();
        this.mFloatValueMap.clear();
        this.mSupportValueMap.clear();
    }

    public void saveLevel(String name) {
        int iIntValue;
        name.hashCode();
        switch (name) {
            case "physicalMode":
                iIntValue = getIntProperty(GlyCarPropertyIds.SETTING_FUNC_SEAT_PHYSIOTHERAPY_PROGRAM).getValue().intValue();
                break;
            case "SeatHeatingLevel":
                iIntValue = getIntProperty(GlyCarPropertyIds.HVAC_FUNC_SEAT_HEATING).getValue().intValue();
                break;
            case "massageMode":
                iIntValue = getIntProperty(GlyCarPropertyIds.HVAC_FUNC_SEAT_MASSAGE_PROGRAM).getValue().intValue();
                break;
            case "VentilationLevel":
                iIntValue = getIntProperty(GlyCarPropertyIds.HVAC_FUNC_SEAT_VENTILATION).getValue().intValue();
                break;
            case "massageLevel":
                iIntValue = getIntProperty(GlyCarPropertyIds.HVAC_FUNC_SEAT_MASSAGE).getValue().intValue();
                break;
            default:
                LogUtil.e("GlyICarViewModel", "name is Invalid.");
                return;
        }
        if (iIntValue == 0) {
            LogUtil.d("GlyICarViewModel", name + " level is" + iIntValue + ", don't save");
            return;
        }
        SharedPreferences.Editor editorEdit = preferences.edit();
        editorEdit.putInt(name, iIntValue);
        editorEdit.commit();
        LogUtil.d("GlyICarViewModel", "save " + name + ": " + iIntValue);
    }

    public int queryLevel(String name) {
        int i;
        name.hashCode();
        switch (name) {
            case "physicalMode":
                i = preferences.getInt(name, GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6);
                break;
            case "SeatHeatingLevel":
                i = preferences.getInt(name, GlyCarPropertyValue.SEAT_HEATING_LEVEL_1);
                break;
            case "massageMode":
                i = preferences.getInt(name, GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1);
                break;
            case "VentilationLevel":
                i = preferences.getInt(name, GlyCarPropertyValue.SEAT_VENTILATION_LEVEL_1);
                break;
            case "massageLevel":
                i = preferences.getInt(name, GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_1);
                break;
            default:
                LogUtil.e("GlyICarViewModel", "name is Invalid. return level off");
                return 0;
        }
        LogUtil.d("GlyICarViewModel", "query " + name + ": " + i);
        return i;
    }
}
