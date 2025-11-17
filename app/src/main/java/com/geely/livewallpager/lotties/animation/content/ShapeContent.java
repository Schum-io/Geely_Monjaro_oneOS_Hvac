package com.geely.livewallpager.lotties.animation.content;

import android.graphics.Path;
import com.geely.livewallpager.lotties.LottieDrawable;
import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.model.content.ShapeData;
import com.geely.livewallpager.lotties.model.content.ShapePath;
import com.geely.livewallpager.lotties.model.content.ShapeTrimPath;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeContent implements PathContent, BaseKeyframeAnimation.AnimationListener {
    private final boolean hidden;
    private boolean isPathValid;
    private final LottieDrawable lottieDrawable;
    private final String name;
    private final BaseKeyframeAnimation<?, Path> shapeAnimation;
    private final Path path = new Path();
    private CompoundTrimPathContent trimPaths = new CompoundTrimPathContent();

    public ShapeContent(LottieDrawable lottieDrawable, BaseLayer layer, ShapePath shape) {
        this.name = shape.getName();
        this.hidden = shape.isHidden();
        this.lottieDrawable = lottieDrawable;
        BaseKeyframeAnimation<ShapeData, Path> baseKeyframeAnimationCreateAnimation = shape.getShapePath().createAnimation();
        this.shapeAnimation = baseKeyframeAnimationCreateAnimation;
        layer.addAnimation(baseKeyframeAnimationCreateAnimation);
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        invalidate();
    }

    private void invalidate() {
        this.isPathValid = false;
        this.lottieDrawable.invalidateSelf();
    }

    @Override // com.geely.livewallpager.lotties.animation.content.Content
    public void setContents(List<Content> contentsBefore, List<Content> contentsAfter) {
        for (int i = 0; i < contentsBefore.size(); i++) {
            Content content = contentsBefore.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.getType() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.trimPaths.addTrimPath(trimPathContent);
                    trimPathContent.addListener(this);
                }
            }
        }
    }

    @Override // com.geely.livewallpager.lotties.animation.content.PathContent
    public Path getPath() {
        if (this.isPathValid) {
            return this.path;
        }
        this.path.reset();
        if (this.hidden) {
            this.isPathValid = true;
            return this.path;
        }
        this.path.set(this.shapeAnimation.getValue());
        this.path.setFillType(Path.FillType.EVEN_ODD);
        this.trimPaths.apply(this.path);
        this.isPathValid = true;
        return this.path;
    }

    @Override // com.geely.livewallpager.lotties.animation.content.Content
    public String getName() {
        return this.name;
    }
}
