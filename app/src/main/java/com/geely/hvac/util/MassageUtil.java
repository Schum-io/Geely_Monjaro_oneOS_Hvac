package com.geely.hvac.util;

import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.os.car.GlyCarPropertyValue;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class MassageUtil {
    public static final Map<Integer, Integer> LEVEL_MAP = new HashMap() { // from class: com.geely.hvac.util.MassageUtil.1
        {
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_1), Integer.valueOf(R.string.massage_level_1));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_2), Integer.valueOf(R.string.massage_level_2));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_3), Integer.valueOf(R.string.massage_level_3));
        }
    };
    public static final Map<Integer, String> TYPE_NAME_MAP = new HashMap() { // from class: com.geely.hvac.util.MassageUtil.2
        {
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1), "Волна");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2), "Кошка");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3), "Змея");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4), "Плечи");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5), "Талия");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6), "Ползти");
        }
    };
    public static final Map<Integer, Integer> TYPE_ICON_ON_MAP = new HashMap() { // from class: com.geely.hvac.util.MassageUtil.3
        {
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1), Integer.valueOf(R.drawable.ic_wave_on));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2), Integer.valueOf(R.drawable.ic_cat_on));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3), Integer.valueOf(R.drawable.ic_snake_on));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4), Integer.valueOf(R.drawable.ic_shoulder2));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5), Integer.valueOf(R.drawable.ic_waist2));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6), Integer.valueOf(R.drawable.ic_crawl));
        }
    };
    public static final Map<Integer, Integer> TYPE_ICON_OFF_MAP = new HashMap() { // from class: com.geely.hvac.util.MassageUtil.4
        {
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_1), Integer.valueOf(R.drawable.ic_wave_off));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_2), Integer.valueOf(R.drawable.ic_cat_off));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_3), Integer.valueOf(R.drawable.ic_snake_off));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_4), Integer.valueOf(R.drawable.ic_shoulder_off));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_5), Integer.valueOf(R.drawable.ic_waist_off));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_PROGRAM_6), Integer.valueOf(R.drawable.ic_crawl_off));
        }
    };

    public static String formatLevel(int level) {
        Map<Integer, Integer> map = LEVEL_MAP;
        Integer numValueOf = Integer.valueOf(level);
        int iIntValue = R.string.massage_level_unknow;
        Integer orDefault = map.getOrDefault(numValueOf, Integer.valueOf(R.string.massage_level_unknow));
        GlyAcApp glyAcApp = GlyAcApp.getInstance();
        if (orDefault != null) {
            iIntValue = orDefault.intValue();
        }
        return glyAcApp.getString(iIntValue);
    }

    public static String formatType(int type) {
        return TYPE_NAME_MAP.getOrDefault(Integer.valueOf(type), "未知");
    }

    public static int getTypeDrawableId(int type) {
        Integer orDefault = TYPE_ICON_ON_MAP.getOrDefault(Integer.valueOf(type), -1);
        if (orDefault == null) {
            return -1;
        }
        return orDefault.intValue();
    }

    public static int getTypeDrawableId(int type, boolean on) {
        Integer orDefault = (on ? TYPE_ICON_ON_MAP : TYPE_ICON_OFF_MAP).getOrDefault(Integer.valueOf(type), -1);
        if (orDefault == null) {
            return -1;
        }
        return orDefault.intValue();
    }
}
