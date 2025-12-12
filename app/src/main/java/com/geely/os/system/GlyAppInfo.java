package com.geely.os.system;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class GlyAppInfo {
    private Drawable icon;
    private boolean isSystemApp;
    private CharSequence label;
    private String packageName;
    private final List<GlyAppPermInfo> permissions = new ArrayList();

    public GlyAppInfo(boolean isSystemApp, CharSequence label, String packageName, Drawable icon) {
        this.isSystemApp = isSystemApp;
        this.label = label;
        this.packageName = packageName;
        this.icon = icon;
    }

    public boolean isSystemApp() {
        return this.isSystemApp;
    }

    public void setSystemApp(boolean systemApp) {
        this.isSystemApp = systemApp;
    }

    public CharSequence getLabel() {
        return this.label;
    }

    public void setLabel(CharSequence label) {
        this.label = label;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }

    public Drawable getIcon() {
        return this.icon;
    }

    public void setIcon(Drawable icon) {
        this.icon = icon;
    }

    public void addPermission(GlyAppPermInfo appPermInfo) {
        this.permissions.add(appPermInfo);
    }

    public boolean hasPermission(String permission) {
        List<GlyAppPermInfo> list;
        if (!TextUtils.isEmpty(permission) && (list = this.permissions) != null && !list.isEmpty()) {
            Iterator<GlyAppPermInfo> it = this.permissions.iterator();
            while (it.hasNext()) {
                if (TextUtils.equals(it.next().getPerm(), permission)) {
                    return true;
                }
            }
        }
        return false;
    }

    public List<GlyAppPermInfo> getPermissions() {
        return this.permissions;
    }

    public GlyAppInfo copy() {
        return new GlyAppInfo(this.isSystemApp, this.label, this.packageName, this.icon);
    }
}
