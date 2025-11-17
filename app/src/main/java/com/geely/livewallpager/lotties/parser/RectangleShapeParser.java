package com.geely.livewallpager.lotties.parser;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatablePointValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableValue;
import com.geely.livewallpager.lotties.model.content.RectangleShape;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
class RectangleShapeParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of("nm", "p", "s", "r", "hd");

    private RectangleShapeParser() {
    }

    static RectangleShape parse(JsonReader reader, LottieComposition composition) throws IOException {
        String strNextString = null;
        AnimatableValue<PointF, PointF> splitPath = null;
        AnimatablePointValue point = null;
        AnimatableFloatValue animatableFloatValue = null;
        boolean zNextBoolean = false;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                strNextString = reader.nextString();
            } else if (iSelectName == 1) {
                splitPath = AnimatablePathValueParser.parseSplitPath(reader, composition);
            } else if (iSelectName == 2) {
                point = AnimatableValueParser.parsePoint(reader, composition);
            } else if (iSelectName == 3) {
                animatableFloatValue = AnimatableValueParser.parseFloat(reader, composition);
            } else if (iSelectName == 4) {
                zNextBoolean = reader.nextBoolean();
            } else {
                reader.skipValue();
            }
        }
        return new RectangleShape(strNextString, splitPath, point, animatableFloatValue, zNextBoolean);
    }
}
