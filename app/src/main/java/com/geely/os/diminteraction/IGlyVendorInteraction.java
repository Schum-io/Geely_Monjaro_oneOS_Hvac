package com.geely.os.diminteraction;

/* loaded from: classes.dex */
public interface IGlyVendorInteraction {
    boolean registerVendorInteractionCallback(IGlyVendorInteractionCallback callback);

    boolean unRegisterVendorInteractionCallback(IGlyVendorInteractionCallback callback);

    boolean updateVendorInformation(IGlyVendorInformation information);
}
