package com.geely.hvac.utils;

import com.geely.hvac.R;
import com.geely.lib.oneosapi.input.KeyCode;
import com.geely.os.car.GlyCarPropertyValue;
import java.util.HashMap;

/* loaded from: classes.dex */
public class FragranceParser {
    public static final HashMap<Integer, String> FRAGRANCE_MAP = new HashMap<Integer, String>() { // from class: com.geely.hvac.utils.FragranceParser.1
        {
            put(1, "赫尔辛基的雪");
            put(5, "花儿对我笑");
            put(9, "无声惊堂");
            put(13, "阳光的味道");
            put(15, "奥古斯都郁金香");
            put(17, "小行星圆舞曲");
            put(21, "9号香水");
            put(25, "白帝宣和");
            put(26, "清凉息夷");
            put(27, "璚林柔远");
            put(28, "瑶池清味");
            put(29, "归以解忧");
            put(30, "暗香疏楹");
            put(50, "哥德堡的海风");
            put(54, "曼妙的春日");
            put(58, "初醒的清晨");
            put(62, "热情的沙漠");
            put(66, "自由的探戈");
            put(70, "燃情时刻");
            put(100, "野性自由");
            put(101, "清新海洋");
            put(102, "国风茶香");
            put(103, "极馨蔷薇");
            put(104, "极净海洋");
            put(105, "极纯栀兰");
            put(106, "极真鸢尾");
            put(107, "极真木兰");
            put(108, "极睿沉木");
            put(109, "极睿檀柏");
            put(110, "极氧青梨");
            put(111, "极氧铃兰");
            put(112, "极雅柑柠");
            put(113, "极雅茉莉");
            put(114, "极醒青茶");
            put(Integer.valueOf(KeyCode.KEYCODE_MEDIA_TOP_MENU), "埃弗鲁西花园");
            put(Integer.valueOf(KeyCode.KEYCODE_11), "Night Club");
            put(Integer.valueOf(KeyCode.KEYCODE_VOICE_ASSIST), "第五元素");
            put(Integer.valueOf(KeyCode.KEYCODE_TV_NUMBER_ENTRY), "不羁");
            put(Integer.valueOf(KeyCode.KEYCODE_TV_TERRESTRIAL_ANALOG), "蔚蓝空间");
        }
    };
    public static final HashMap<Integer, Integer> FRAGRANCE_IMAGE_MAP = new HashMap<Integer, Integer>() { // from class: com.geely.hvac.utils.FragranceParser.2
        {
            put(106, Integer.valueOf(R.mipmap.fragrancetype_106));
            put(107, Integer.valueOf(R.mipmap.fragrancetype_107));
            put(108, Integer.valueOf(R.mipmap.fragrancetype_108));
            put(109, Integer.valueOf(R.mipmap.fragrancetype_109));
            put(110, Integer.valueOf(R.mipmap.fragrancetype_110));
            put(112, Integer.valueOf(R.mipmap.fragrancetype_112));
            put(114, Integer.valueOf(R.mipmap.fragrancetype_114));
        }
    };

    public static int indexToLevel(int index) {
        if (index == 1) {
            return GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_1;
        }
        if (index == 2) {
            return GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_2;
        }
        if (index != 3) {
            return 0;
        }
        return GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_3;
    }

    public static int indexToSlotIndex(int index) {
        return index != 1 ? index != 2 ? GlyCarPropertyValue.AIR_FRAGRANCE_SLOT_1 : GlyCarPropertyValue.AIR_FRAGRANCE_SLOT_3 : GlyCarPropertyValue.AIR_FRAGRANCE_SLOT_2;
    }

    public static int indexToType(int index) {
        return index != 1 ? index != 2 ? GlyCarPropertyValue.AIR_FRAGRANCE_ROSE : GlyCarPropertyValue.AIR_FRAGRANCE_LAVENDER : GlyCarPropertyValue.AIR_FRAGRANCE_LILY;
    }

    public static int levelToIndex(int level) {
        switch (level) {
            case GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_1 /* 269157121 */:
                return 1;
            case GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_2 /* 269157122 */:
                return 2;
            case GlyCarPropertyValue.AIR_FRAGRANCE_LEVEL_3 /* 269157123 */:
                return 3;
            default:
                return 0;
        }
    }

    public static int slotIndexToIndex(int type) {
        if (type == 255) {
            return 255;
        }
        switch (type) {
            case GlyCarPropertyValue.AIR_FRAGRANCE_SLOT_2 /* 269157378 */:
                return 1;
            case GlyCarPropertyValue.AIR_FRAGRANCE_SLOT_3 /* 269157379 */:
                return 2;
            default:
                return 0;
        }
    }

    public static int slotToIndex(int slot) {
        switch (slot) {
            case GlyCarPropertyValue.AIR_FRAGRANCE_SLOT_2 /* 269157378 */:
                return 1;
            case GlyCarPropertyValue.AIR_FRAGRANCE_SLOT_3 /* 269157379 */:
                return 3;
            default:
                return 0;
        }
    }

    public static int typeToIndex(int type) {
        switch (type) {
            case GlyCarPropertyValue.AIR_FRAGRANCE_LILY /* 269156866 */:
                return 1;
            case GlyCarPropertyValue.AIR_FRAGRANCE_LAVENDER /* 269156867 */:
                return 2;
            default:
                return 0;
        }
    }
}
