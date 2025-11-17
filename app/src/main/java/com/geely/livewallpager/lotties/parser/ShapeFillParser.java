package com.geely.livewallpager.lotties.parser;

import android.graphics.Path;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableColorValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableIntegerValue;
import com.geely.livewallpager.lotties.model.content.ShapeFill;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
class ShapeFillParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("nm", "c", "o", "fillEnabled", "r", "hd");

    private ShapeFillParser() {
    }

    static ShapeFill parse(JsonReader reader, LottieComposition composition) throws IOException {
        boolean zNextBoolean = false;
        boolean zNextBoolean2 = false;
        int iNextInt = 1;
        String strNextString = null;
        AnimatableColorValue color = null;
        AnimatableIntegerValue integer = null;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                strNextString = reader.nextString();
            } else if (iSelectName == 1) {
                color = AnimatableValueParser.parseColor(reader, composition);
            } else if (iSelectName == 2) {
                integer = AnimatableValueParser.parseInteger(reader, composition);
            } else if (iSelectName == 3) {
                zNextBoolean = reader.nextBoolean();
            } else if (iSelectName == 4) {
                iNextInt = reader.nextInt();
            } else if (iSelectName == 5) {
                zNextBoolean2 = reader.nextBoolean();
            } else {
                reader.skipName();
                reader.skipValue();
            }
        }
        return new ShapeFill(strNextString, zNextBoolean, iNextInt == 1 ? Path.FillType.WINDING : Path.FillType.EVEN_ODD, color, integer, zNextBoolean2);
    }
}
