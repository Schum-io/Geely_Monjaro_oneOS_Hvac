package com.ecarx.xui.adaptapi.car.base;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface ICarFunction {
    int[] getSupportedFunctionValue(int propertyId);
    int[] getSupportedFunctionValue(int propertyId, int zone);
    FunctionStatus isFunctionSupported(int propertyId, int areaId);
    float getCustomizeFunctionValue(int propertyId, int areaId);
    int getFunctionValue(int propertyId, int areaId);
    boolean setCustomizeFunctionValue(int propertyId, int areaId, float val);
    boolean setFunctionValue(int propertyId, int areaId, int val);
    void registerFunctionValueWatcher(int function, IFunctionValueWatcher watcher);
    void unregisterFunctionValueWatcher(IFunctionValueWatcher watcher);

    interface IFunctionValueWatcher {
        void onFunctionChanged(int function);
        void onSupportedFunctionValueChanged(int function, int[] funcValues);
        void onFunctionValueChanged(int function, int zone, int value);
        void onCustomizeFunctionValueChanged(int function, int zone, float value);
        void onSupportedFunctionStatusChanged(int function, int zone, FunctionStatus status);
    }
}