package com.geely.livewallpager.lotties;

import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;

/* loaded from: classes.dex */
public class SimpleColorFilter extends PorterDuffColorFilter {
    public SimpleColorFilter(int color) {
        super(color, PorterDuff.Mode.SRC_ATOP);
    }
}
