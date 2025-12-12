package com.geely.livewallpager.lotties.animation.keyframe;

import android.graphics.Path;
import android.graphics.PointF;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.utils.Utils;
import com.geely.livewallpager.lotties.value.Keyframe;

/* loaded from: classes.dex */
public class PathKeyframe extends Keyframe<PointF> {
    private Path path;
    private final Keyframe<PointF> pointKeyFrame;

    public PathKeyframe(LottieComposition composition, Keyframe<PointF> keyframe) {
        super(composition, keyframe.startValue, keyframe.endValue, keyframe.interpolator, keyframe.startFrame, keyframe.endFrame);
        this.pointKeyFrame = keyframe;
        createPath();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void createPath() {
        boolean z = (this.endValue == null || this.startValue == null || !((PointF) this.startValue).equals(((PointF) this.endValue).x, ((PointF) this.endValue).y)) ? false : true;
        if (this.endValue == null || z) {
            return;
        }
        this.path = Utils.createPath((PointF) this.startValue, (PointF) this.endValue, this.pointKeyFrame.pathCp1, this.pointKeyFrame.pathCp2);
    }

    Path getPath() {
        return this.path;
    }
}
