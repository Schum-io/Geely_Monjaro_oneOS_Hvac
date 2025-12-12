package com.geely.os.car;

import android.content.Context;
import android.util.ArrayMap;
import android.util.ArraySet;
import com.ecarx.xui.adaptapi.FunctionStatus;
import com.ecarx.xui.adaptapi.binder.IConnectable;
import com.ecarx.xui.adaptapi.car.Car;
import com.ecarx.xui.adaptapi.car.ICar;
import com.ecarx.xui.adaptapi.car.base.ICarFunction;
import com.ecarx.xui.adaptapi.car.base.ICarInfo;
import com.ecarx.xui.adaptapi.car.sensor.ISensor;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.IntFunction;
import java.util.function.ToIntFunction;
import java.util.stream.Collectors;

/* loaded from: classes.dex */
class GlyCarImpl implements IGlyCar {
    private ICar car;
    private IConnectable carConnectable;
    private ICarFunction carFunction;
    private ICarInfo carInfo;
    private ConnectionListener mConnectionListener;
    private ISensor sensor;
    private ArrayMap<Integer, Field> fields = new ArrayMap<>();
    private ArrayMap<String, String> oldVal = new ArrayMap<>();
    private ArraySet<IGlyCarEventCallBack> mSingleCallbacks = new ArraySet<>();
    private HashMap<Integer, Integer[]> callBackHashMap = new HashMap<>();
    IConnectable.IConnectWatcher connectCarWatcher = new IConnectable.IConnectWatcher() { // from class: com.geely.os.car.GlyCarImpl.1
        public void onConnected() throws IllegalAccessException, IllegalArgumentException {
            GlyLog.i(GlyLog.DEFAULT_TAG, "IConnectWatcher onConnected");
            GlyCarImpl glyCarImpl = GlyCarImpl.this;
            glyCarImpl.carFunction = glyCarImpl.car.getICarFunction();
            GlyCarImpl glyCarImpl2 = GlyCarImpl.this;
            glyCarImpl2.sensor = glyCarImpl2.car.getSensorManager();
            GlyCarImpl glyCarImpl3 = GlyCarImpl.this;
            glyCarImpl3.carInfo = glyCarImpl3.car.getCarInfoManager();
            for (Field field : GlyCarPropertyIds.class.getDeclaredFields()) {
                try {
                    GlyCarImpl.this.fields.put(Integer.valueOf(field.getInt(GlyCarPropertyIds.class)), field);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
            if (GlyCarImpl.this.mConnectionListener != null) {
                GlyCarImpl.this.mConnectionListener.onConnected();
            }
        }

        public void onDisConnected() {
            GlyLog.i(GlyLog.DEFAULT_TAG, "IConnectWatcher onDisConnected");
            if (GlyCarImpl.this.mConnectionListener != null) {
                GlyCarImpl.this.mConnectionListener.onDisConnected();
            }
        }
    };
    private ICarFunction.IFunctionValueWatcher singleFunctionValueWatcher = new ICarFunction.IFunctionValueWatcher() { // from class: com.geely.os.car.GlyCarImpl.2
        public void onFunctionChanged(int function) {
        }

        public void onSupportedFunctionValueChanged(int function, int[] funcValues) {
        }

        public void onFunctionValueChanged(int function, int zone, int value) {
            Integer numValueOf = Integer.valueOf(value);
            if (numValueOf != null) {
                GlyCarImpl.this.handleSingleOnChangeEvent(function, zone, numValueOf);
            }
        }

        public void onCustomizeFunctionValueChanged(int function, int zone, float value) {
            Float fValueOf = Float.valueOf(value);
            if (fValueOf != null) {
                GlyCarImpl.this.handleSingleOnChangeEvent(function, zone, fValueOf);
            }
        }

        public void onSupportedFunctionStatusChanged(int function, int zone, FunctionStatus status) {
            GlyCarImpl.this.handleSingleOnSupportChanged(function, zone, status.ordinal());
        }
    };
    private ISensor.ISensorListener singleSensorListener = new ISensor.ISensorListener() { // from class: com.geely.os.car.GlyCarImpl.3
        public void onSensorEventChanged(int sensor, int event) {
            Integer numValueOf = Integer.valueOf(event);
            if (numValueOf != null) {
                GlyCarImpl.this.handleSingleOnChangeEvent(sensor, Integer.MIN_VALUE, numValueOf);
            }
        }

        public void onSensorValueChanged(int sensor, float value) {
            Float fValueOf = Float.valueOf(value);
            if (fValueOf != null) {
                GlyCarImpl.this.handleSingleOnChangeEvent(sensor, Integer.MIN_VALUE, fValueOf);
            }
        }

        public void onSensorSupportChanged(int sensor, FunctionStatus status) {
            GlyCarImpl.this.handleSingleOnSupportChanged(sensor, Integer.MIN_VALUE, status.ordinal());
        }
    };

    private GlyCarImpl(Context context) throws IllegalAccessException, IllegalArgumentException {
        ICar iCarCreate = Car.create(context);
        this.car = iCarCreate;
        if (iCarCreate != null) {
            this.carFunction = iCarCreate.getICarFunction();
            this.sensor = this.car.getSensorManager();
            this.carInfo = this.car.getCarInfoManager();
            for (Field field : GlyCarPropertyIds.class.getDeclaredFields()) {
                try {
                    this.fields.put(Integer.valueOf(field.getInt(GlyCarPropertyIds.class)), field);
                } catch (IllegalAccessException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private GlyCarImpl(Context context, ConnectionListener connectionListener) {
        ICar iCarCreate = Car.create(context);
        this.car = iCarCreate;
        this.mConnectionListener = connectionListener;
        if (iCarCreate != null && this.carConnectable == null && (iCarCreate instanceof IConnectable)) {
            IConnectable iConnectable = (IConnectable) iCarCreate;
            this.carConnectable = iConnectable;
            iConnectable.registerConnectWatcher(this.connectCarWatcher);
        }
    }

    public static IGlyCar create(Context context) {
        if (context != null) {
            try {
                return new GlyCarImpl(context);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return null;
    }

    public static IGlyCar create(Context context, ConnectionListener connectionListener) {
        if (context != null) {
            return new GlyCarImpl(context, connectionListener);
        }
        return null;
    }

    private int getIdType(int id) {
        GlyIdConfig glyIdConfig;
        if (!this.fields.containsKey(Integer.valueOf(id)) || (glyIdConfig = (GlyIdConfig) this.fields.get(Integer.valueOf(id)).getAnnotation(GlyIdConfig.class)) == null) {
            return -1;
        }
        return glyIdConfig.type();
    }

    private String getIdAlias(int id) {
        GlyIdConfig glyIdConfig;
        return (!this.fields.containsKey(Integer.valueOf(id)) || (glyIdConfig = (GlyIdConfig) this.fields.get(Integer.valueOf(id)).getAnnotation(GlyIdConfig.class)) == null) ? "" : glyIdConfig.alias();
    }

    private String getIdName(int id) {
        return this.fields.containsKey(Integer.valueOf(id)) ? this.fields.get(Integer.valueOf(id)).getName() : "";
    }

    @Override // com.geely.os.car.IGlyCar
    public int[] getSupportedValueStatus(int propertyId) {
        return this.carFunction.getSupportedFunctionValue(propertyId);
    }

    @Override // com.geely.os.car.IGlyCar
    public int[] getSupportedValueStatus(int propertyId, int zone) {
        return this.carFunction.getSupportedFunctionValue(propertyId, zone);
    }

    @Override // com.geely.os.car.IGlyCar
    public int getSupportStatus(int propertyId) {
        return getSupportStatus(propertyId, Integer.MIN_VALUE);
    }

    @Override // com.geely.os.car.IGlyCar
    public int getSupportStatus(int propertyId, int areaId) {
        int iOrdinal = GlySupportStatus.error;
        int idType = getIdType(propertyId);
        if (idType == 2) {
            ICarFunction iCarFunction = this.carFunction;
            if (iCarFunction != null) {
                iOrdinal = iCarFunction.isFunctionSupported(propertyId, areaId).ordinal();
            }
        } else if (idType == 3) {
            ISensor iSensor = this.sensor;
            if (iSensor != null) {
                iOrdinal = iSensor.isSensorSupported(propertyId).ordinal();
            }
        } else if (idType == 1) {
            ICarInfo iCarInfo = this.carInfo;
            if (iCarInfo != null) {
                iOrdinal = iCarInfo.isCarInfoSupported(propertyId).ordinal();
            }
        } else {
            GlyLog.i(GlyLog.DEFAULT_TAG, "error idType=" + idType);
        }
        operateLog("isSupport", propertyId, areaId, Integer.valueOf(iOrdinal));
        return iOrdinal;
    }

    @Override // com.geely.os.car.IGlyCar
    public float getFloatProperty(int propertyId) {
        return getFloatProperty(propertyId, Integer.MIN_VALUE);
    }

    @Override // com.geely.os.car.IGlyCar
    public int getIntProperty(int propertyId) {
        return getIntProperty(propertyId, Integer.MIN_VALUE);
    }

    @Override // com.geely.os.car.IGlyCar
    public boolean setFloatProperty(int propertyId, float val) {
        return setFloatProperty(propertyId, Integer.MIN_VALUE, val);
    }

    @Override // com.geely.os.car.IGlyCar
    public boolean setIntProperty(int propertyId, int val) {
        return setIntProperty(propertyId, Integer.MIN_VALUE, val);
    }

    @Override // com.geely.os.car.IGlyCar
    public float getFloatProperty(int propertyId, int areaId) {
        int idType = getIdType(propertyId);
        float value = 0;
        if (idType == 2) {
            ICarFunction iCarFunction = this.carFunction;
            if (iCarFunction != null) {
                value = iCarFunction.getCustomizeFunctionValue(propertyId, areaId);
            }
        } else if (idType == 3) {
            ISensor iSensor = this.sensor;
            if (iSensor != null) {
                value = iSensor.getSensorLatestValue(propertyId);
            }
        } else if (idType == 1) {
            ICarInfo iCarInfo = this.carInfo;
            if (iCarInfo != null) {
                value = iCarInfo.getCarInfoFloat(propertyId);
            }
        } else {
            GlyLog.i(GlyLog.DEFAULT_TAG, "error idType=" + idType);
        }
        operateLog("getFloatProperty", propertyId, areaId, Float.valueOf(value));
        return value;
    }

    @Override // com.geely.os.car.IGlyCar
    public int getIntProperty(int propertyId, int areaId) {
        int idType = getIdType(propertyId);
        int value = 0;
        if (idType == 2) {
            ICarFunction iCarFunction = this.carFunction;
            if (iCarFunction != null) {
                value = iCarFunction.getFunctionValue(propertyId, areaId);
            }
        } else if (idType == 3) {
            ISensor iSensor = this.sensor;
            if (iSensor != null) {
                value = iSensor.getSensorEvent(propertyId);
            }
        } else if (idType == 1) {
            ICarInfo iCarInfo = this.carInfo;
            if (iCarInfo != null) {
                value = iCarInfo.getCarInfoInt(propertyId);
            }
        } else {
            GlyLog.i(GlyLog.DEFAULT_TAG, "error idType=" + idType);
        }
        operateLog("getIntProperty", propertyId, areaId, Integer.valueOf(value));
        return value;
    }

    @Override // com.geely.os.car.IGlyCar
    public boolean setFloatProperty(int propertyId, int areaId, float val) {
        operateLog("setFloatProperty", propertyId, areaId, Float.valueOf(val));
        ICarFunction iCarFunction = this.carFunction;
        if (iCarFunction != null) {
            return iCarFunction.setCustomizeFunctionValue(propertyId, areaId, val);
        }
        return false;
    }

    @Override // com.geely.os.car.IGlyCar
    public boolean setIntProperty(int propertyId, int areaId, int val) {
        operateLog("setIntProperty", propertyId, areaId, Integer.valueOf(val));
        ICarFunction iCarFunction = this.carFunction;
        if (iCarFunction != null) {
            return iCarFunction.setFunctionValue(propertyId, areaId, val);
        }
        return false;
    }

    @Override // com.geely.os.car.IGlyCar
    public void disconnect() {
        IConnectable iConnectable = this.carConnectable;
        if (iConnectable != null) {
            iConnectable.disconnect();
        }
    }

    @Override // com.geely.os.car.IGlyCar
    public synchronized void addRateSingleCarEventCallback(IGlyCarEventCallBack callback, int rate, int... propertyIds) {
        if (propertyIds != null && propertyIds.length > 0) {
            GlyLog.i(GlyLog.DEFAULT_TAG, "addRateSingleCarEventCallback = " + callback + " rate=" + rate + " propertyIds = " + Arrays.toString(propertyIds));
            for (int propertyId : propertyIds) {
                int idType = getIdType(propertyId);
                if (idType == 2) {
                    ICarFunction iCarFunction = this.carFunction;
                    if (iCarFunction != null) {
                        iCarFunction.registerFunctionValueWatcher(propertyId, this.singleFunctionValueWatcher);
                    }
                } else if (idType == 3) {
                    ISensor iSensor = this.sensor;
                    if (iSensor != null) {
                        iSensor.registerListener(this.singleSensorListener, propertyId, rate);
                    }
                } else if (idType == 1) {
                    GlyLog.i(GlyLog.DEFAULT_TAG, "ID_TYPE_INFO  not support register");
                } else {
                    GlyLog.i(GlyLog.DEFAULT_TAG, "register fail no exist propertyId " + propertyId);
                }
            }
            if (callback != null) {
                if (this.mSingleCallbacks != null && !this.mSingleCallbacks.contains(callback)) {
                    this.mSingleCallbacks.add(callback);
                    this.callBackHashMap.put(Integer.valueOf(callback.hashCode()), covertIntsToIntegers(propertyIds));
                }
            }
        } else {
            GlyLog.i(GlyLog.DEFAULT_TAG, "register fail propertyIds=null || propertyIds.length==0");
        }
    }

    @Override // com.geely.os.car.IGlyCar
    public synchronized void registerSingleCarEventCallback(IGlyCarEventCallBack callback, int... propertyIds) {
        if (propertyIds != null && propertyIds.length > 0) {
            GlyLog.i(GlyLog.DEFAULT_TAG, "registerSingleCarEventCallback = " + callback + " propertyIds = " + Arrays.toString(propertyIds));
            for (int propertyId : propertyIds) {
                int idType = getIdType(propertyId);
                if (idType == 2) {
                    ICarFunction iCarFunction = this.carFunction;
                    if (iCarFunction != null) {
                        iCarFunction.registerFunctionValueWatcher(propertyId, this.singleFunctionValueWatcher);
                    }
                } else if (idType == 3) {
                    ISensor iSensor = this.sensor;
                    if (iSensor != null) {
                        iSensor.registerListener(this.singleSensorListener, propertyId, 5);
                    }
                } else if (idType == 1) {
                    GlyLog.i(GlyLog.DEFAULT_TAG, "ID_TYPE_INFO  not support register");
                } else {
                    GlyLog.i(GlyLog.DEFAULT_TAG, "register fail no exist propertyId " + propertyId);
                }
            }
            if (callback != null) {
                if (this.mSingleCallbacks != null && !this.mSingleCallbacks.contains(callback)) {
                    this.mSingleCallbacks.add(callback);
                    this.callBackHashMap.put(Integer.valueOf(callback.hashCode()), covertIntsToIntegers(propertyIds));
                }
            }
        } else {
            GlyLog.i(GlyLog.DEFAULT_TAG, "register fail propertyIds=null || propertyIds.length==0");
        }
    }

    @Override // com.geely.os.car.IGlyCar
    public synchronized void unregisterSingleCarEventCallback(IGlyCarEventCallBack callback) {
        ArraySet<IGlyCarEventCallBack> arraySet;
        GlyLog.i(GlyLog.DEFAULT_TAG, "unregisterSingleCarEventCallback = " + callback);
        if (callback != null && (arraySet = this.mSingleCallbacks) != null && arraySet.contains(callback)) {
            this.mSingleCallbacks.remove(callback);
            HashMap<Integer, Integer[]> map = this.callBackHashMap;
            if (map != null && map.size() > 0 && this.callBackHashMap.containsKey(Integer.valueOf(callback.hashCode()))) {
                this.callBackHashMap.remove(Integer.valueOf(callback.hashCode()));
                if (this.callBackHashMap.size() == 0) {
                    ISensor iSensor = this.sensor;
                    if (iSensor != null) {
                        iSensor.unregisterListener(this.singleSensorListener);
                    }
                    ICarFunction iCarFunction = this.carFunction;
                    if (iCarFunction != null) {
                        iCarFunction.unregisterFunctionValueWatcher(this.singleFunctionValueWatcher);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleSingleOnChangeEvent(final int propertyId, final int zone, final Object value) {
        operateLog("callback", propertyId, zone, value);
        ArraySet<IGlyCarEventCallBack> arraySet = this.mSingleCallbacks;
        if (arraySet != null && arraySet.size() > 0 && this.callBackHashMap != null && value != null) {
            this.mSingleCallbacks.forEach(new Consumer<IGlyCarEventCallBack>() { // from class: com.geely.os.car.GlyCarImpl.4
                @Override // java.util.function.Consumer
                public void accept(IGlyCarEventCallBack listener) {
                    if (GlyCarImpl.this.callBackHashMap.size() <= 0 || !GlyCarImpl.this.callBackHashMap.containsKey(Integer.valueOf(listener.hashCode()))) {
                        return;
                    }
                    if (GlyCarImpl.this.intArrayContainsInt(GlyCarImpl.this.covertIntegersToInts((Integer[]) GlyCarImpl.this.callBackHashMap.get(Integer.valueOf(listener.hashCode()))), propertyId)) {
                        listener.onChangeEvent(propertyId, zone, value);
                    }
                }
            });
        }
    }

    private Integer[] covertIntsToIntegers(int[] propertyIds) {
        return (Integer[]) Arrays.stream(propertyIds).boxed().toArray(new IntFunction() { // from class: com.geely.os.car.-$$Lambda$GlyCarImpl$FwtkNWRlYIgDqjX1E68KkOcFpEs
            @Override // java.util.function.IntFunction
            public final Object apply(int i) {
                return GlyCarImpl.lambda$covertIntsToIntegers$0(i);
            }
        });
    }

    static /* synthetic */ Integer[] lambda$covertIntsToIntegers$0(int i) {
        return new Integer[i];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int[] covertIntegersToInts(Integer[] ids) {
        return Arrays.stream(ids).mapToInt(new ToIntFunction() { // from class: com.geely.os.car.-$$Lambda$GlyCarImpl$ALaheIXHSs1u8UaAIu3dB6jis7g
            @Override // java.util.function.ToIntFunction
            public final int applyAsInt(Object obj) {
                return GlyCarImpl.lambda$covertIntegersToInts$1((Integer) obj);
            }
        }).toArray();
    }

    static /* synthetic */ int lambda$covertIntegersToInts$1(Integer num) {
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean intArrayContainsInt(int[] intArr, int input) {
        return ((List) Arrays.stream(intArr).boxed().collect(Collectors.toList())).contains(Integer.valueOf(input));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void handleSingleOnSupportChanged(final int propertyId, final int zone, final int status) {
        operateLog("onSupportChanged", propertyId, zone, Integer.valueOf(status));
        ArraySet<IGlyCarEventCallBack> arraySet = this.mSingleCallbacks;
        if (arraySet != null && arraySet.size() > 0) {
            this.mSingleCallbacks.forEach(new Consumer<IGlyCarEventCallBack>() { // from class: com.geely.os.car.GlyCarImpl.5
                @Override // java.util.function.Consumer
                public void accept(IGlyCarEventCallBack listener) {
                    if (GlyCarImpl.this.callBackHashMap.size() <= 0 || !GlyCarImpl.this.callBackHashMap.containsKey(Integer.valueOf(listener.hashCode()))) {
                        return;
                    }
                    if (GlyCarImpl.this.intArrayContainsInt(GlyCarImpl.this.covertIntegersToInts((Integer[]) GlyCarImpl.this.callBackHashMap.get(Integer.valueOf(listener.hashCode()))), propertyId)) {
                        listener.onSupportChanged(propertyId, zone, status);
                    }
                }
            });
        }
    }

    private synchronized void operateLog(String operate, int propertyId, int areaId, Object value) {
        String strValueOf = value == null ? "null" : String.valueOf(value);
        if (getIdType(propertyId) == 3) {
            if (!"callback".equals(operate) || !this.oldVal.containsKey(propertyId + "," + areaId) || !this.oldVal.get(propertyId + "," + areaId).equals(strValueOf)) {
                GlyLog.i(GlyLog.DEFAULT_TAG, operate + "\t" + getIdName(propertyId) + "(" + getIdAlias(propertyId) + ") propertyId=" + propertyId + " areaId=" + areaId + " val=" + strValueOf);
                this.oldVal.put(propertyId + "," + areaId, strValueOf);
            }
        } else {
            GlyLog.i(GlyLog.DEFAULT_TAG, operate + "\t" + getIdName(propertyId) + "(" + getIdAlias(propertyId) + ") propertyId=" + propertyId + " areaId=" + areaId + " val=" + strValueOf);
        }
    }
}
