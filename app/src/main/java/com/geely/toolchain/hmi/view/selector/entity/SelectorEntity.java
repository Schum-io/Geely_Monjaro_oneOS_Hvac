package com.geely.toolchain.hmi.view.selector.entity;

import com.geely.toolchain.hmi.view.selector.listener.CustomSelectorEntity;

/* loaded from: classes.dex */
public class SelectorEntity implements CustomSelectorEntity {
    public int selectedIcon;
    public String title;
    public int unSelectedIcon;

    public SelectorEntity(String title, int selectedIcon, int unSelectedIcon) {
        this.title = title;
        this.selectedIcon = selectedIcon;
        this.unSelectedIcon = unSelectedIcon;
    }

    @Override // com.geely.toolchain.hmi.view.selector.listener.CustomSelectorEntity
    public String getSelectorTitle() {
        return this.title;
    }

    @Override // com.geely.toolchain.hmi.view.selector.listener.CustomSelectorEntity
    public int getSelectedIcon() {
        return this.selectedIcon;
    }

    @Override // com.geely.toolchain.hmi.view.selector.listener.CustomSelectorEntity
    public int getUnselectedIcon() {
        return this.unSelectedIcon;
    }
}
