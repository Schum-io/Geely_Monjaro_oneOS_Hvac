package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableColorValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableTextProperties;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class AnimatableTextPropertiesParser {
    private static JsonReader.Options PROPERTIES_NAMES = JsonReader.Options.of("a");
    private static JsonReader.Options ANIMATABLE_PROPERTIES_NAMES = JsonReader.Options.of("fc", "sc", "sw", "t");

    private AnimatableTextPropertiesParser() {
    }

    public static AnimatableTextProperties parse(JsonReader reader, LottieComposition composition) throws IOException {
        reader.beginObject();
        AnimatableTextProperties animatableTextProperties = null;
        while (reader.hasNext()) {
            if (reader.selectName(PROPERTIES_NAMES) == 0) {
                animatableTextProperties = parseAnimatableTextProperties(reader, composition);
            } else {
                reader.skipName();
                reader.skipValue();
            }
        }
        reader.endObject();
        return animatableTextProperties == null ? new AnimatableTextProperties(null, null, null, null) : animatableTextProperties;
    }

    private static AnimatableTextProperties parseAnimatableTextProperties(JsonReader reader, LottieComposition composition) throws IOException {
        reader.beginObject();
        AnimatableColorValue color = null;
        AnimatableColorValue color2 = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(ANIMATABLE_PROPERTIES_NAMES);
            if (iSelectName == 0) {
                color = AnimatableValueParser.parseColor(reader, composition);
            } else if (iSelectName == 1) {
                color2 = AnimatableValueParser.parseColor(reader, composition);
            } else if (iSelectName == 2) {
                animatableFloatValue = AnimatableValueParser.parseFloat(reader, composition);
            } else if (iSelectName == 3) {
                animatableFloatValue2 = AnimatableValueParser.parseFloat(reader, composition);
            } else {
                reader.skipName();
                reader.skipValue();
            }
        }
        reader.endObject();
        return new AnimatableTextProperties(color, color2, animatableFloatValue, animatableFloatValue2);
    }
}
