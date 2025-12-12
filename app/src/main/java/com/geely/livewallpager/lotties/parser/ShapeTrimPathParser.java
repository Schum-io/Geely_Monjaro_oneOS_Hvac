package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.content.ShapeTrimPath;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
class ShapeTrimPathParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of("s", "e", "o", "nm", "m", "hd");

    private ShapeTrimPathParser() {
    }

    static ShapeTrimPath parse(JsonReader reader, LottieComposition composition) throws IOException {
        boolean zNextBoolean = false;
        String strNextString = null;
        ShapeTrimPath.Type typeForId = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableFloatValue animatableFloatValue3 = null;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                animatableFloatValue = AnimatableValueParser.parseFloat(reader, composition, false);
            } else if (iSelectName == 1) {
                animatableFloatValue2 = AnimatableValueParser.parseFloat(reader, composition, false);
            } else if (iSelectName == 2) {
                animatableFloatValue3 = AnimatableValueParser.parseFloat(reader, composition, false);
            } else if (iSelectName == 3) {
                strNextString = reader.nextString();
            } else if (iSelectName == 4) {
                typeForId = ShapeTrimPath.Type.forId(reader.nextInt());
            } else if (iSelectName == 5) {
                zNextBoolean = reader.nextBoolean();
            } else {
                reader.skipValue();
            }
        }
        return new ShapeTrimPath(strNextString, typeForId, animatableFloatValue, animatableFloatValue2, animatableFloatValue3, zNextBoolean);
    }
}
