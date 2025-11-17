package com.geely.livewallpager.lotties.animation.content;

import com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation;
import com.geely.livewallpager.lotties.model.content.ShapeTrimPath;
import com.geely.livewallpager.lotties.model.layer.BaseLayer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class TrimPathContent implements Content, BaseKeyframeAnimation.AnimationListener {
    private final BaseKeyframeAnimation<?, Float> endAnimation;
    private final boolean hidden;
    private final List<BaseKeyframeAnimation.AnimationListener> listeners = new ArrayList();
    private final String name;
    private final BaseKeyframeAnimation<?, Float> offsetAnimation;
    private final BaseKeyframeAnimation<?, Float> startAnimation;
    private final ShapeTrimPath.Type type;

    @Override // com.geely.livewallpager.lotties.animation.content.Content
    public void setContents(List<Content> contentsBefore, List<Content> contentsAfter) {
    }

    public TrimPathContent(BaseLayer layer, ShapeTrimPath trimPath) {
        this.name = trimPath.getName();
        this.hidden = trimPath.isHidden();
        this.type = trimPath.getType();
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation = trimPath.getStart().createAnimation();
        this.startAnimation = baseKeyframeAnimationCreateAnimation;
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation2 = trimPath.getEnd().createAnimation();
        this.endAnimation = baseKeyframeAnimationCreateAnimation2;
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimationCreateAnimation3 = trimPath.getOffset().createAnimation();
        this.offsetAnimation = baseKeyframeAnimationCreateAnimation3;
        layer.addAnimation(baseKeyframeAnimationCreateAnimation);
        layer.addAnimation(baseKeyframeAnimationCreateAnimation2);
        layer.addAnimation(baseKeyframeAnimationCreateAnimation3);
        baseKeyframeAnimationCreateAnimation.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation2.addUpdateListener(this);
        baseKeyframeAnimationCreateAnimation3.addUpdateListener(this);
    }

    @Override // com.geely.livewallpager.lotties.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    public void onValueChanged() {
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onValueChanged();
        }
    }

    @Override // com.geely.livewallpager.lotties.animation.content.Content
    public String getName() {
        return this.name;
    }

    void addListener(BaseKeyframeAnimation.AnimationListener listener) {
        this.listeners.add(listener);
    }

    ShapeTrimPath.Type getType() {
        return this.type;
    }

    public BaseKeyframeAnimation<?, Float> getStart() {
        return this.startAnimation;
    }

    public BaseKeyframeAnimation<?, Float> getEnd() {
        return this.endAnimation;
    }

    public BaseKeyframeAnimation<?, Float> getOffset() {
        return this.offsetAnimation;
    }

    public boolean isHidden() {
        return this.hidden;
    }
}
