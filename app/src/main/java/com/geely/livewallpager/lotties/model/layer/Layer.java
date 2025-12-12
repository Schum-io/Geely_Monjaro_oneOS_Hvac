package com.geely.livewallpager.lotties.model.layer;

import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableTextFrame;
import com.geely.livewallpager.lotties.model.animatable.AnimatableTextProperties;
import com.geely.livewallpager.lotties.model.animatable.AnimatableTransform;
import com.geely.livewallpager.lotties.model.content.ContentModel;
import com.geely.livewallpager.lotties.model.content.Mask;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class Layer {
    private final LottieComposition composition;
    private final boolean hidden;
    private final List<Keyframe<Float>> inOutKeyframes;
    private final long layerId;
    private final String layerName;
    private final LayerType layerType;
    private final List<Mask> masks;
    private final MatteType matteType;
    private final long parentId;
    private final int preCompHeight;
    private final int preCompWidth;
    private final String refId;
    private final List<ContentModel> shapes;
    private final int solidColor;
    private final int solidHeight;
    private final int solidWidth;
    private final float startFrame;
    private final AnimatableTextFrame text;
    private final AnimatableTextProperties textProperties;
    private final AnimatableFloatValue timeRemapping;
    private final float timeStretch;
    private final AnimatableTransform transform;

    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        UNKNOWN
    }

    public Layer(List<ContentModel> shapes, LottieComposition composition, String layerName, long layerId, LayerType layerType, long parentId, String refId, List<Mask> masks, AnimatableTransform transform, int solidWidth, int solidHeight, int solidColor, float timeStretch, float startFrame, int preCompWidth, int preCompHeight, AnimatableTextFrame text, AnimatableTextProperties textProperties, List<Keyframe<Float>> inOutKeyframes, MatteType matteType, AnimatableFloatValue timeRemapping, boolean hidden) {
        this.shapes = shapes;
        this.composition = composition;
        this.layerName = layerName;
        this.layerId = layerId;
        this.layerType = layerType;
        this.parentId = parentId;
        this.refId = refId;
        this.masks = masks;
        this.transform = transform;
        this.solidWidth = solidWidth;
        this.solidHeight = solidHeight;
        this.solidColor = solidColor;
        this.timeStretch = timeStretch;
        this.startFrame = startFrame;
        this.preCompWidth = preCompWidth;
        this.preCompHeight = preCompHeight;
        this.text = text;
        this.textProperties = textProperties;
        this.inOutKeyframes = inOutKeyframes;
        this.matteType = matteType;
        this.timeRemapping = timeRemapping;
        this.hidden = hidden;
    }

    LottieComposition getComposition() {
        return this.composition;
    }

    float getTimeStretch() {
        return this.timeStretch;
    }

    float getStartProgress() {
        return this.startFrame / this.composition.getDurationFrames();
    }

    List<Keyframe<Float>> getInOutKeyframes() {
        return this.inOutKeyframes;
    }

    public long getId() {
        return this.layerId;
    }

    String getName() {
        return this.layerName;
    }

    String getRefId() {
        return this.refId;
    }

    int getPreCompWidth() {
        return this.preCompWidth;
    }

    int getPreCompHeight() {
        return this.preCompHeight;
    }

    List<Mask> getMasks() {
        return this.masks;
    }

    public LayerType getLayerType() {
        return this.layerType;
    }

    MatteType getMatteType() {
        return this.matteType;
    }

    long getParentId() {
        return this.parentId;
    }

    List<ContentModel> getShapes() {
        return this.shapes;
    }

    AnimatableTransform getTransform() {
        return this.transform;
    }

    int getSolidColor() {
        return this.solidColor;
    }

    int getSolidHeight() {
        return this.solidHeight;
    }

    int getSolidWidth() {
        return this.solidWidth;
    }

    AnimatableTextFrame getText() {
        return this.text;
    }

    AnimatableTextProperties getTextProperties() {
        return this.textProperties;
    }

    AnimatableFloatValue getTimeRemapping() {
        return this.timeRemapping;
    }

    public String toString() {
        return toString("");
    }

    public boolean isHidden() {
        return this.hidden;
    }

    public String toString(String prefix) {
        StringBuilder sb = new StringBuilder();
        sb.append(prefix).append(getName()).append("\n");
        Layer layerLayerModelForId = this.composition.layerModelForId(getParentId());
        if (layerLayerModelForId != null) {
            sb.append("\t\tParents: ").append(layerLayerModelForId.getName());
            Layer layerLayerModelForId2 = this.composition.layerModelForId(layerLayerModelForId.getParentId());
            while (layerLayerModelForId2 != null) {
                sb.append("->").append(layerLayerModelForId2.getName());
                layerLayerModelForId2 = this.composition.layerModelForId(layerLayerModelForId2.getParentId());
            }
            sb.append(prefix).append("\n");
        }
        if (!getMasks().isEmpty()) {
            sb.append(prefix).append("\tMasks: ").append(getMasks().size()).append("\n");
        }
        if (getSolidWidth() != 0 && getSolidHeight() != 0) {
            sb.append(prefix).append("\tBackground: ").append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(getSolidWidth()), Integer.valueOf(getSolidHeight()), Integer.valueOf(getSolidColor())));
        }
        if (!this.shapes.isEmpty()) {
            sb.append(prefix).append("\tShapes:\n");
            Iterator<ContentModel> it = this.shapes.iterator();
            while (it.hasNext()) {
                sb.append(prefix).append("\t\t").append(it.next()).append("\n");
            }
        }
        return sb.toString();
    }
}
