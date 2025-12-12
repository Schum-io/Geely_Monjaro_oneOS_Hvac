package com.geely.hvac.classify.classifyreturn;

import android.os.Environment;
import com.geely.hvac.classify.SeatKey;
import com.geely.hvac.utils.CommonUtils;
import com.geely.hvac.utils.DayNightUtil;
import com.geely.hvac.utils.LogUtil;
import com.geely.lib.oneosapi.user.bean.LoginType;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class SeatKeyReturn {
    private static final String TAG = "SeatKeyReturn";
    private static SeatKeyReturn mSeatKeyReturn;
    private CarType carType;
    private String dirPath;
    boolean isLight = DayNightUtil.isLight();

    public enum CarType {
        G636,
        G733,
        FS11,
        FX11A1,
        FX11A2,
        KX11A2,
        KX11A3
    }

    public void setCarType(CarType carType) {
        this.carType = carType;
        try {
            if (CommonUtils.isFX11A1()) {
                this.dirPath = "seat_regulate_a1/";
            } else if (carType == CarType.KX11A3) {
                this.dirPath = "seat_regulate_kx11a3/";
            } else {
                this.dirPath = "seat_regulate/";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static SeatKeyReturn getInstance() {
        if (mSeatKeyReturn == null) {
            synchronized (SeatKeyReturn.class) {
                if (mSeatKeyReturn == null) {
                    mSeatKeyReturn = new SeatKeyReturn();
                }
            }
        }
        return mSeatKeyReturn;
    }

    public SeatKeyReturn() {
        this.dirPath = "seat_regulate_a1/";
        try {
            if (CommonUtils.isFX11A1()) {
                this.dirPath = "seat_regulate_a1/";
            } else if (this.carType == CarType.KX11A3) {
                this.dirPath = "seat_regulate_kx11a3/";
            } else {
                this.dirPath = "seat_regulate/";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List initCancel(int type) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(Integer.valueOf(type));
        return arrayList;
    }

    public Map<String, String> initKey(int type, int key, int zone) {
        HashMap map = new HashMap();
        try {
        } catch (RuntimeException e) {
            LogUtil.e(TAG, "runtimeException" + e.getMessage());
        }
        if (type == 10) {
            return initMainDrive(key, map, zone);
        }
        if (type == 30) {
            return initLegSupport(key, map);
        }
        if (type == 40) {
            return initLumbarSupport(key, map);
        }
        if (type == 200) {
            return initMainAssistantChangingOver(map, zone);
        }
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Map<String, String> initLegSupport(int key, Map map) {
        map.put("type", 30);
        map.put("lottie", "hmi");
        map.put("hmiX", LoginType.PASSWORD);
        map.put("hmiY", LoginType.PASSWORD);
        switch (key) {
            case 301:
                map.put("key", 301);
                map.put("hmiY", "-20");
                return map;
            case 302:
                map.put("key", 302);
                map.put("hmiY", "20");
                return map;
            case 303:
                map.put("key", 303);
                map.put("hmiX", "-20");
                return map;
            case SeatKey.LEG_SUPPORT_TO_RETURN /* 304 */:
                map.put("key", Integer.valueOf(SeatKey.LEG_SUPPORT_TO_RETURN));
                map.put("hmiX", "20");
                return map;
            default:
                return map;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Map<String, String> initLumbarSupport(int key, Map map) {
        map.put("type", 40);
        map.put("lottie", "hmi");
        map.put("hmiX", LoginType.PASSWORD);
        map.put("hmiY", LoginType.PASSWORD);
        switch (key) {
            case SeatKey.LUMBAR_SUPPORT_TO_UP /* 401 */:
                map.put("key", Integer.valueOf(SeatKey.LUMBAR_SUPPORT_TO_UP));
                map.put("hmiY", "-20");
                return map;
            case SeatKey.LUMBAR_SUPPORT_TO_DOWN /* 402 */:
                map.put("key", Integer.valueOf(SeatKey.LUMBAR_SUPPORT_TO_DOWN));
                map.put("hmiY", "20");
                return map;
            case SeatKey.LUMBAR_SUPPORT_TO_FORWARD /* 403 */:
                map.put("key", Integer.valueOf(SeatKey.LUMBAR_SUPPORT_TO_FORWARD));
                map.put("hmiX", "-20");
                return map;
            case SeatKey.LUMBAR_SUPPORT_TO_RETURN /* 404 */:
                map.put("key", Integer.valueOf(SeatKey.LUMBAR_SUPPORT_TO_RETURN));
                map.put("hmiX", "20");
                return map;
            default:
                return map;
        }
    }

    private Map<String, String> initMainAssistantChangingOver(Map map, int zone) {
        map.put("type", Integer.valueOf(zone));
        map.put("lottie", "oneLottie");
        String str = this.dirPath + (DayNightUtil.isLight() ? "light/" : "night/");
        if (zone == 1) {
            map.put("images", str + "assistant_to_main/images/");
            map.put("json", str + "assistant_to_main/animation.json");
        } else if (zone == 4) {
            map.put("images", str + "main_to_assistant/images/");
            map.put("json", str + "main_to_assistant/animation.json");
        }
        return map;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Map<String, String> initMainDrive(int key, Map map, int zone) {
        map.put("type", Integer.valueOf(zone));
        map.put("lottie", "hmi");
        map.put("hmiX", LoginType.PASSWORD);
        map.put("hmiY", LoginType.PASSWORD);
        switch (key) {
            case 101:
                map.put("key", 101);
                map.put("hmiY", "-20");
                return map;
            case 102:
                map.put("key", 102);
                map.put("hmiY", "20");
                return map;
            case 103:
                map.put("key", 103);
                map.put("hmiX", "-20");
                return map;
            case 104:
                map.put("key", 104);
                map.put("hmiX", "20");
                return map;
            case 105:
                map.put("lottie", "lottie");
                if (zone == 1) {
                    map.put("images", this.dirPath + (DayNightUtil.isLight() ? "light/" : "night/") + "left1_height_up/images");
                    map.put("json", this.dirPath + (DayNightUtil.isLight() ? "light/" : "night/") + "left1_height_up/animation.json");
                } else if (zone == 4) {
                    map.put("images", this.dirPath + (DayNightUtil.isLight() ? "light/" : "night/") + "left2_height_up/images");
                    map.put("json", this.dirPath + (DayNightUtil.isLight() ? "light/" : "night/") + "left2_height_up/animation.json");
                }
                return map;
            case 106:
                map.put("lottie", "lottie");
                if (zone == 1) {
                    map.put("images", this.dirPath + (DayNightUtil.isLight() ? "light/" : "night/") + "right1_height_up/images");
                    map.put("json", this.dirPath + (DayNightUtil.isLight() ? "light/" : "night/") + "right1_height_up/animation.json");
                } else if (zone == 4) {
                    map.put("images", this.dirPath + (DayNightUtil.isLight() ? "light/" : "night/") + "right2_height_up/images");
                    map.put("json", this.dirPath + (DayNightUtil.isLight() ? "light/" : "night/") + "right2_height_up/animation.json");
                }
                return map;
            default:
                return map;
        }
    }

    private boolean existsFile() {
        File file;
        String externalStorageState = Environment.getExternalStorageState();
        try {
            if (CommonUtils.isFX11A1()) {
                file = new File(externalStorageState + "/hvac/seatseat_regulate_a1/light/main_to_assistant/images/");
            } else if (this.carType == CarType.KX11A3) {
                file = new File(externalStorageState + "/hvac/seatseat_regulate_kx11a3/light/main_to_assistant/images/");
            } else {
                file = new File(externalStorageState + "/hvac/seatseat_regulate/light/main_to_assistant/images/");
            }
            return file.exists();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
