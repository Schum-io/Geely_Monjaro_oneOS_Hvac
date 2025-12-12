package com.geely.livewallpager.lotties.animation.content;

import android.graphics.Path;
import com.geely.livewallpager.lotties.utils.Utils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class CompoundTrimPathContent {
    private List<TrimPathContent> contents = new ArrayList();

    void addTrimPath(TrimPathContent trimPath) {
        this.contents.add(trimPath);
    }

    public void apply(Path path) {
        for (int size = this.contents.size() - 1; size >= 0; size--) {
            Utils.applyTrimPathIfNeeded(path, this.contents.get(size));
        }
    }
}
