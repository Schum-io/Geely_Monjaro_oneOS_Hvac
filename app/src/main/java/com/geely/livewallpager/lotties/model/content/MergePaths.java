package com.geely.livewallpager.lotties.model.content;

import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.animation.content.Content;
import com.geely.livewallpager.lotties.animation.content.MergePathsContent;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;
import com.geely.livewallpager.lotties.utils.Logger;

/* loaded from: classes.dex */
public class MergePaths implements ContentModel {
    private final boolean hidden;
    private final MergePathsMode mode;
    private final String name;

    public enum MergePathsMode {
        MERGE,
        ADD,
        SUBTRACT,
        INTERSECT,
        EXCLUDE_INTERSECTIONS;

        public static MergePathsMode forId(int id) {
            if (id == 1) {
                return MERGE;
            }
            if (id == 2) {
                return ADD;
            }
            if (id == 3) {
                return SUBTRACT;
            }
            if (id == 4) {
                return INTERSECT;
            }
            if (id == 5) {
                return EXCLUDE_INTERSECTIONS;
            }
            return MERGE;
        }
    }

    public MergePaths(String name, MergePathsMode mode, boolean hidden) {
        this.name = name;
        this.mode = mode;
        this.hidden = hidden;
    }

    public String getName() {
        return this.name;
    }

    public MergePathsMode getMode() {
        return this.mode;
    }

    public boolean isHidden() {
        return this.hidden;
    }

    @Override // com.geely.livewallpager.lotties.model.content.ContentModel
    public Content toContent(LottieDrawable drawable, BaseLayer layer) {
        if (!drawable.enableMergePathsForKitKatAndAbove()) {
            Logger.warning("Animation contains merge paths but they are disabled.");
            return null;
        }
        return new MergePathsContent(this);
    }

    public String toString() {
        return "MergePaths{mode=" + this.mode + '}';
    }
}
