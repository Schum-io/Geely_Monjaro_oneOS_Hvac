package com.ecarx.xui.adaptapi.car.sensor;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface ISensor {
    FunctionStatus isSensorSupported(int propertyId);
    float getSensorLatestValue(int propertyId);
    int getSensorEvent(int propertyId);
    void registerListener(ISensorListener listener, int sensor, int rate);
    void unregisterListener(ISensorListener listener);

    interface ISensorListener {
        void onSensorEventChanged(int sensor, int event);
        void onSensorValueChanged(int sensor, float value);
        void onSensorSupportChanged(int sensor, FunctionStatus status);
    }
}