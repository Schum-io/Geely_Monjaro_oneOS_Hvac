package com.geely.os.car;

import android.content.Context;
import android.view.Display;
import com.ecarx.xui.adaptapi.car.Car;
import com.ecarx.xui.adaptapi.car.ICar;
import com.ecarx.xui.adaptapi.car.base.ICarInfo;

/* loaded from: classes.dex */
public class GlyCarInfoImpl implements IGlyCarInfo {
    private ICarInfo iCarInfo;

    @Override // com.geely.os.car.IGlyCarInfo
    public int getIntelligentEnergyManagement() {
        return 0;
    }

    @Override // com.geely.os.car.IGlyCarInfo
    public boolean hasMultiAmbience() {
        return false;
    }

    public static IGlyCarInfo create(Context context) {
        if (context != null) {
            return new GlyCarInfoImpl(context);
        }
        return null;
    }

    private GlyCarInfoImpl(Context context) {
        ICar iCarCreate = Car.create(context);
        if (iCarCreate != null) {
            this.iCarInfo = iCarCreate.getCarInfoManager();
        }
    }

    @Override // com.geely.os.car.IGlyCarInfo
    public int getCarInfoConfig(int configId) {
        ICarInfo iCarInfo = this.iCarInfo;
        return iCarInfo != null ? iCarInfo.getCarInfoInt(configId) : IGlyCarInfo.CONFIG_INFO_VALUE_UNKNOWN;
    }

    @Override // com.geely.os.car.IGlyCarInfo
    public Display getPresentationDisplay(int display) {
//        ICarInfo iCarInfo = this.iCarInfo;
//        if (iCarInfo != null) {
//            return iCarInfo.getPresentationDisplay(display);
//        }
        return null;
    }
}
