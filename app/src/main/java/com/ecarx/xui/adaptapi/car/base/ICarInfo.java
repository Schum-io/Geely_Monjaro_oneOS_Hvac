package com.ecarx.xui.adaptapi.car.base;

import com.ecarx.xui.adaptapi.FunctionStatus;

public interface ICarInfo {
    FunctionStatus isCarInfoSupported(int propertyId);
    float getCarInfoFloat(int propertyId);
    int getCarInfoInt(int propertyId);
}