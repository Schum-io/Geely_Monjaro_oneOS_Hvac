package com.geely.livewallpager.lotties.parser;

import android.graphics.Path;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableGradientColorValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableIntegerValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatablePointValue;
import com.geely.livewallpager.lotties.model.content.GradientFill;
import com.geely.livewallpager.lotties.model.content.GradientType;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
class GradientFillParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("nm", "g", "o", "t", "s", "e", "r", "hd");
    private static final JsonReader.Options GRADIENT_NAMES = JsonReader.Options.of("p", "k");

    private GradientFillParser() {
    }

    static GradientFill parse(JsonReader reader, LottieComposition composition) throws IOException {
        Path.FillType fillType = Path.FillType.WINDING;
        String strNextString = null;
        GradientType gradientType = null;
        AnimatableGradientColorValue gradientColor = null;
        AnimatableIntegerValue integer = null;
        AnimatablePointValue point = null;
        AnimatablePointValue point2 = null;
        boolean zNextBoolean = false;
        while (reader.hasNext()) {
            switch (reader.selectName(NAMES)) {
                case 0:
                    strNextString = reader.nextString();
                    break;
                case 1:
                    int iNextInt = -1;
                    reader.beginObject();
                    while (reader.hasNext()) {
                        int iSelectName = reader.selectName(GRADIENT_NAMES);
                        if (iSelectName == 0) {
                            iNextInt = reader.nextInt();
                        } else if (iSelectName == 1) {
                            gradientColor = AnimatableValueParser.parseGradientColor(reader, composition, iNextInt);
                        } else {
                            reader.skipName();
                            reader.skipValue();
                        }
                    }
                    reader.endObject();
                    break;
                case 2:
                    integer = AnimatableValueParser.parseInteger(reader, composition);
                    break;
                case 3:
                    gradientType = reader.nextInt() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    point = AnimatableValueParser.parsePoint(reader, composition);
                    break;
                case 5:
                    point2 = AnimatableValueParser.parsePoint(reader, composition);
                    break;
                case 6:
                    fillType = reader.nextInt() == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD;
                    break;
                case 7:
                    zNextBoolean = reader.nextBoolean();
                    break;
                default:
                    reader.skipName();
                    reader.skipValue();
                    break;
            }
        }
        return new GradientFill(strNextString, gradientType, fillType, gradientColor, integer, point, point2, null, null, zNextBoolean);
    }
}
