package com.geely.livewallpager.lotties.parser;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableValue;
import com.geely.livewallpager.lotties.model.content.PolystarShape;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
class PolystarShapeParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("nm", "sy", "pt", "p", "r", "or", "os", "ir", "is", "hd");

    private PolystarShapeParser() {
    }

    static PolystarShape parse(JsonReader reader, LottieComposition composition) throws IOException {
        boolean zNextBoolean = false;
        String strNextString = null;
        PolystarShape.Type typeForValue = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableValue<PointF, PointF> splitPath = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableFloatValue animatableFloatValue3 = null;
        AnimatableFloatValue animatableFloatValue4 = null;
        AnimatableFloatValue animatableFloatValue5 = null;
        AnimatableFloatValue animatableFloatValue6 = null;
        while (reader.hasNext()) {
            switch (reader.selectName(NAMES)) {
                case 0:
                    strNextString = reader.nextString();
                    break;
                case 1:
                    typeForValue = PolystarShape.Type.forValue(reader.nextInt());
                    break;
                case 2:
                    animatableFloatValue = AnimatableValueParser.parseFloat(reader, composition, false);
                    break;
                case 3:
                    splitPath = AnimatablePathValueParser.parseSplitPath(reader, composition);
                    break;
                case 4:
                    animatableFloatValue2 = AnimatableValueParser.parseFloat(reader, composition, false);
                    break;
                case 5:
                    animatableFloatValue4 = AnimatableValueParser.parseFloat(reader, composition);
                    break;
                case 6:
                    animatableFloatValue6 = AnimatableValueParser.parseFloat(reader, composition, false);
                    break;
                case 7:
                    animatableFloatValue3 = AnimatableValueParser.parseFloat(reader, composition);
                    break;
                case 8:
                    animatableFloatValue5 = AnimatableValueParser.parseFloat(reader, composition, false);
                    break;
                case 9:
                    zNextBoolean = reader.nextBoolean();
                    break;
                default:
                    reader.skipName();
                    reader.skipValue();
                    break;
            }
        }
        return new PolystarShape(strNextString, typeForValue, animatableFloatValue, splitPath, animatableFloatValue2, animatableFloatValue3, animatableFloatValue4, animatableFloatValue5, animatableFloatValue6, zNextBoolean);
    }
}
