package com.ecarx.xui.adaptapi.car;

import com.ecarx.xui.adaptapi.binder.IConnectable;
import com.ecarx.xui.adaptapi.car.base.ICarFunction;
import com.ecarx.xui.adaptapi.car.base.ICarInfo;
import com.ecarx.xui.adaptapi.car.hev.IHev;
import com.ecarx.xui.adaptapi.car.sensor.ISensor;
import com.ecarx.xui.adaptapi.car.userprofile.IUserProfile;

public interface ICar extends IConnectable {
    ICarFunction getICarFunction();
    ISensor getSensorManager();
    ICarInfo getCarInfoManager();
    IHev getHevManager();
    IUserProfile getUserProfileManager();
}