package com.ecarx.xui.adaptapi.diminteraction;

import android.content.Context;

public class DimInteraction {

    public interface IInteractionCallback {
        void onShowPresentationOptionChanged(int option);
    }

    public static DimInteraction create(Context context) {
        // This is a placeholder
        return null;
    }

    public IVrInteraction getVrInteraction() {
        return null;
    }

    public IContactsInteraction getContactsInteraction() {
        return null;
    }

    public IDimMenuInteraction getDimMenuInteraction() {
        return null;
    }

    public IMediaInteraction getMediaInteraction() {
        return null;
    }

    public INaviInteraction getNaviInteraction() {
        return null;
    }

    public IVendorInteraction getVendorInteraction() {
        return null;
    }

    public IPhoneCallInteraction getPhoneCallInteraction() {
        return null;
    }

    public void registerInteractionCallback(IInteractionCallback callback) {
    }

    public void unregisterInteractionCallback(IInteractionCallback callback) {
    }

    public int getShowPresentationOption() {
        return 0;
    }

    public int getSupportedRankingType() {
        return 0;
    }

    public void setPresentationToDimSwitch(int app, String pkg, String cls, boolean on) {
    }

    public void updateAvgFuleRanking(int type, String rankingInfo) {
    }
}