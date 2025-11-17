package com.geely.os.system;

import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class GlyPermissionInfo {
    private String mAppOpStr;
    private List<GlyAppInfo> mApps;
    private int mDescription;
    private int mDrawableId;
    private String mPermissionGroup;
    private int mPermissionLabel;
    private List<String> mPermissionList;

    public GlyPermissionInfo(String mPermissionGroup, List<String> mPermissionList, String mAppOpStr, int mPermissionLabel, List<GlyAppInfo> mApps, int mDrawableId, int mDescription) {
        this.mPermissionGroup = mPermissionGroup;
        this.mPermissionList = mPermissionList;
        this.mAppOpStr = mAppOpStr;
        this.mPermissionLabel = mPermissionLabel;
        this.mApps = mApps;
        this.mDrawableId = mDrawableId;
        this.mDescription = mDescription;
    }

    public String getPermissionGroup() {
        return this.mPermissionGroup;
    }

    public List<String> getPermissionList() {
        return this.mPermissionList;
    }

    public String getAppOpStr() {
        return this.mAppOpStr;
    }

    public int getPermissionLabel() {
        return this.mPermissionLabel;
    }

    public List<GlyAppInfo> getApps() {
        return this.mApps;
    }

    public int getDrawableId() {
        return this.mDrawableId;
    }

    public int getDescription() {
        return this.mDescription;
    }

    public boolean hasApp(String appPkg) {
        List<GlyAppInfo> list = this.mApps;
        if (list != null && !list.isEmpty()) {
            Iterator<GlyAppInfo> it = this.mApps.iterator();
            while (it.hasNext()) {
                if (TextUtils.equals(appPkg, it.next().getPackageName())) {
                    return true;
                }
            }
        }
        return false;
    }
}
