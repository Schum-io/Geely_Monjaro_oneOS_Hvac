package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableShapeValue;
import com.geely.livewallpager.lotties.model.content.ShapePath;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
class ShapePathParser {
    static JsonReader.Options NAMES = JsonReader.Options.of("nm", "ind", "ks", "hd");

    private ShapePathParser() {
    }

    static ShapePath parse(JsonReader reader, LottieComposition composition) throws IOException {
        int iNextInt = 0;
        String strNextString = null;
        AnimatableShapeValue shapeData = null;
        boolean zNextBoolean = false;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                strNextString = reader.nextString();
            } else if (iSelectName == 1) {
                iNextInt = reader.nextInt();
            } else if (iSelectName == 2) {
                shapeData = AnimatableValueParser.parseShapeData(reader, composition);
            } else if (iSelectName == 3) {
                zNextBoolean = reader.nextBoolean();
            } else {
                reader.skipValue();
            }
        }
        return new ShapePath(strNextString, iNextInt, shapeData, zNextBoolean);
    }
}
