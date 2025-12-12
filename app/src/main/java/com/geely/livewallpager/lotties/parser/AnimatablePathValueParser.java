package com.geely.livewallpager.lotties.parser;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatablePathValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableSplitDimensionPathValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableValue;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.utils.Utils;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class AnimatablePathValueParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of("k", "x", "y");

    private AnimatablePathValueParser() {
    }

    public static AnimatablePathValue parse(JsonReader reader, LottieComposition composition) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (reader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            reader.beginArray();
            while (reader.hasNext()) {
                arrayList.add(PathKeyframeParser.parse(reader, composition));
            }
            reader.endArray();
            KeyframesParser.setEndFrames(arrayList);
        } else {
            arrayList.add(new Keyframe(JsonUtils.jsonToPoint(reader, Utils.dpScale())));
        }
        return new AnimatablePathValue(arrayList);
    }

    static AnimatableValue<PointF, PointF> parseSplitPath(JsonReader reader, LottieComposition composition) throws IOException {
        reader.beginObject();
        AnimatablePathValue animatablePathValue = null;
        AnimatableFloatValue animatableFloatValue = null;
        boolean z = false;
        AnimatableFloatValue animatableFloatValue2 = null;
        while (reader.peek() != JsonReader.Token.END_OBJECT) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                animatablePathValue = parse(reader, composition);
            } else if (iSelectName != 1) {
                if (iSelectName == 2) {
                    if (reader.peek() == JsonReader.Token.STRING) {
                        reader.skipValue();
                        z = true;
                    } else {
                        animatableFloatValue = AnimatableValueParser.parseFloat(reader, composition);
                    }
                } else {
                    reader.skipName();
                    reader.skipValue();
                }
            } else if (reader.peek() == JsonReader.Token.STRING) {
                reader.skipValue();
                z = true;
            } else {
                animatableFloatValue2 = AnimatableValueParser.parseFloat(reader, composition);
            }
        }
        reader.endObject();
        if (z) {
            composition.addWarning("Lottie doesn't support expressions.");
        }
        return animatablePathValue != null ? animatablePathValue : new AnimatableSplitDimensionPathValue(animatableFloatValue2, animatableFloatValue);
    }
}
