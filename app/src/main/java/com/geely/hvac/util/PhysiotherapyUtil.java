package com.geely.hvac.util;

import com.geely.hvac.GlyAcApp;
import com.geely.hvac.R;
import com.geely.os.car.GlyCarPropertyValue;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class PhysiotherapyUtil {
    public static final Map<Integer, Integer> LEVEL_MAP = new HashMap() { // from class: com.geely.hvac.util.PhysiotherapyUtil.1
        {
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_1), Integer.valueOf(R.string.massage_level_1));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_2), Integer.valueOf(R.string.massage_level_2));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_MASSAGE_LEVEL_3), Integer.valueOf(R.string.massage_level_3));
        }
    };
    public static final Map<Integer, String> TYPE_NAME_MAP = new HashMap() { // from class: com.geely.hvac.util.PhysiotherapyUtil.2
        {
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6), "运动恢复");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_8), "泰式拉伸");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_7), "释压舒展");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_4), "肩部解压");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_5), "腰部解压");
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_2), "背部解压");
            put(255, "运动恢复");
        }
    };
    public static final Map<Integer, Integer> TYPE_ICON_ON_MAP = new HashMap() { // from class: com.geely.hvac.util.PhysiotherapyUtil.3
        {
            Integer numValueOf = Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6);
            Integer numValueOf2 = Integer.valueOf(R.drawable.ic_sports);
            put(numValueOf, numValueOf2);
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_8), Integer.valueOf(R.drawable.ic_stretch));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_7), Integer.valueOf(R.drawable.ic_release_stress));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_4), Integer.valueOf(R.drawable.ic_shoulder));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_5), Integer.valueOf(R.drawable.ic_waist));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_2), Integer.valueOf(R.drawable.ic_back_decompression));
            put(255, numValueOf2);
        }
    };
    public static final Map<Integer, Integer> TYPE_ICON_OFF_MAP = new HashMap() { // from class: com.geely.hvac.util.PhysiotherapyUtil.4
        {
            Integer numValueOf = Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_6);
            Integer numValueOf2 = Integer.valueOf(R.drawable.ic_back_off);
            put(numValueOf, numValueOf2);
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_8), Integer.valueOf(R.drawable.ic_thai_stretch_off));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_7), Integer.valueOf(R.drawable.ic_care_back_off));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_4), Integer.valueOf(R.drawable.ic_shoulder_off));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_5), Integer.valueOf(R.drawable.ic_waist_decompression_off));
            put(Integer.valueOf(GlyCarPropertyValue.SEAT_PHYSIOTHERAPY_PROGRAM_2), Integer.valueOf(R.drawable.ic_back_decompression_off));
            put(255, numValueOf2);
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

    public static int getTypeDrawableId(int type, boolean on) {
        Integer orDefault = (on ? TYPE_ICON_ON_MAP : TYPE_ICON_OFF_MAP).getOrDefault(Integer.valueOf(type), -1);
        if (orDefault == null) {
            return -1;
        }
        return orDefault.intValue();
    }
}
