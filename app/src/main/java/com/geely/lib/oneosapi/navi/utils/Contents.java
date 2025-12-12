package com.geely.lib.oneosapi.navi.utils;

import android.content.Context;
import com.geely.lib.oneosapi.R;
import com.geely.lib.oneosapi.navi.model.base.MapVendor;

/* loaded from: classes.dex */
public class Contents {
    public static final String AMAP_PACKAGE = "com.autonavi.amapauto";
    public static final String BAIDU_PACKAGE = "com.baidu.naviauto";

    public static String getOpenNewMapTitle(int mapVendor, Context mContext, int defaultMap) {
        return mapVendor == 0 ? mContext.getResources().getString(R.string.open_auto_map) : mapVendor == 0 ? mContext.getResources().getString(R.string.open_baidu_map) : defaultMap == 0 ? mContext.getResources().getString(R.string.open_auto_map) : 1 == defaultMap ? mContext.getResources().getString(R.string.open_baidu_map) : mContext.getResources().getString(R.string.open_auto_map);
    }

    public static String getSetDefaultMapContent(int mapVendor, Context mContext) {
        return mapVendor == 0 ? mContext.getResources().getString(R.string.close_baidu_map) : mContext.getResources().getString(R.string.close_auto_map);
    }

    public static String getSetDefaultMapTitle(int mapVendor, Context mContext) {
        return mapVendor == 0 ? mContext.getResources().getString(R.string.set_default_map_auto) : mContext.getResources().getString(R.string.set_default_map_baidu);
    }

    public static int mapPackage2Vendor(String mapPackage) {
        if (BAIDU_PACKAGE.equals(mapPackage)) {
            return 1;
        }
        if (AMAP_PACKAGE.equals(mapPackage)) {
            return 0;
        }
        return MapVendor.NO_MAP_RUNNING;
    }
}
