package com.ecarx.xui.adaptapi.diminteraction;

import android.os.Bundle;

public interface IVendorInteraction {
    interface IVendorInformation {
        int getType();
        Bundle getVendorExtras();
    }

    interface IVendorInteractionCallback {
        void onInteractionAction(int i, IVendorInformation iVendorInformation);
    }

    boolean registerVendorInteractionCallback(IVendorInteractionCallback callback);
    boolean unRegisterVendorInteractionCallback(IVendorInteractionCallback callback);
    boolean updateVendorInformation(IVendorInformation information);
}