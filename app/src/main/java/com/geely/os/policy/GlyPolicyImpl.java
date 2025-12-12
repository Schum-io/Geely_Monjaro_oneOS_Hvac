package com.geely.os.policy;

import android.content.Context;
import android.view.Display;
import com.ecarx.xui.adaptapi.policy.IWindowManagerPolicy;
import com.ecarx.xui.adaptapi.policy.Policy;

/* loaded from: classes.dex */
class GlyPolicyImpl implements IGlyPolicy {
    private Policy mPolicy;
    private IWindowManagerPolicy wp;

    private GlyPolicyImpl(Context context) {
        Policy policyCreate = Policy.create(context);
        this.mPolicy = policyCreate;
        if (policyCreate != null) {
            this.wp = policyCreate.getWindowManagerPolicy();
        }
    }

    public static IGlyPolicy create(Context context) {
        if (context != null) {
            return new GlyPolicyImpl(context);
        }
        return null;
    }

    @Override // com.geely.os.policy.IGlyPolicy
    public IGlyWindowManagerPolicy getWindowManagerPolicy() {
        if (this.wp != null) {
            return new IGlyWindowManagerPolicy() { // from class: com.geely.os.policy.GlyPolicyImpl.1
                @Override // com.geely.os.policy.IGlyWindowManagerPolicy
                public int getWindowTypeByCode(String windowCode) {
                    return GlyPolicyImpl.this.wp.getWindowTypeByCode(windowCode);
                }

                @Override // com.geely.os.policy.IGlyWindowManagerPolicy
                public int getWindowTypeByCode(String windowCode, Display display) {
                    return GlyPolicyImpl.this.wp.getWindowTypeByCode(windowCode, display);
                }
            };
        }
        return null;
    }
}
