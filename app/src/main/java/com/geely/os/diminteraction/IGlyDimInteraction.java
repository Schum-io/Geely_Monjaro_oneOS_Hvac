package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyDimInteraction {
    IGlyContactsInteraction getContactsInteraction();

    IGlyDimMenuInteraction getDimMenuInteraction();

    IGlyMediaInteraction getMediaInteraction();

    IGlyNaviInteraction getNaviInteraction();

    IGlyPhoneCallInteraction getPhoneCallInteraction();

    int getShowPresentationOption();

    int getSupportedRankingType();

    IGlyVendorInteraction getVendorInteraction();

    IGlyVrInteraction getVrInteraction();

    void registerInteractionCallback(IGlyInteractionCallback callback);

    void setPresentationToDimSwitch(int app, String pkg, String cls, boolean on);

    void unregisterInteractionCallback(IGlyInteractionCallback callback);

    void updateAvgFuleRanking(int type, String rankingInfo);
}
