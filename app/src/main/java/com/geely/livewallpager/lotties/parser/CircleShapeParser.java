package com.geely.livewallpager.lotties.parser;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatablePointValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableValue;
import com.geely.livewallpager.lotties.model.content.CircleShape;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
class CircleShapeParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of("nm", "p", "s", "hd", "d");

    private CircleShapeParser() {
    }

    static CircleShape parse(JsonReader reader, LottieComposition composition, int d) throws IOException {
        boolean z = d == 3;
        boolean zNextBoolean = false;
        String strNextString = null;
        AnimatableValue<PointF, PointF> splitPath = null;
        AnimatablePointValue point = null;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                strNextString = reader.nextString();
            } else if (iSelectName == 1) {
                splitPath = AnimatablePathValueParser.parseSplitPath(reader, composition);
            } else if (iSelectName == 2) {
                point = AnimatableValueParser.parsePoint(reader, composition);
            } else if (iSelectName == 3) {
                zNextBoolean = reader.nextBoolean();
            } else if (iSelectName == 4) {
                z = reader.nextInt() == 3;
            } else {
                reader.skipName();
                reader.skipValue();
            }
        }
        return new CircleShape(strNextString, splitPath, point, z, zNextBoolean);
    }
}
