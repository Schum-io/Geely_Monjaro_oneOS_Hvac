package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.FontCharacter;
import com.geely.livewallpager.lotties.model.content.ShapeGroup;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.sensorsdata.analytics.android.sdk.data.adapter.DbParams;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
class FontCharacterParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("ch", "size", "w", "style", "fFamily", DbParams.KEY_DATA);
    private static final JsonReader.Options DATA_NAMES = JsonReader.Options.of("shapes");

    private FontCharacterParser() {
    }

    static FontCharacter parse(JsonReader reader, LottieComposition composition) throws IOException {
        ArrayList arrayList = new ArrayList();
        reader.beginObject();
        String strNextString = null;
        String strNextString2 = null;
        double dNextDouble = 0.0d;
        double dNextDouble2 = 0.0d;
        char cCharAt = 0;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                cCharAt = reader.nextString().charAt(0);
            } else if (iSelectName == 1) {
                dNextDouble = reader.nextDouble();
            } else if (iSelectName == 2) {
                dNextDouble2 = reader.nextDouble();
            } else if (iSelectName == 3) {
                strNextString = reader.nextString();
            } else if (iSelectName == 4) {
                strNextString2 = reader.nextString();
            } else if (iSelectName == 5) {
                reader.beginObject();
                while (reader.hasNext()) {
                    if (reader.selectName(DATA_NAMES) == 0) {
                        reader.beginArray();
                        while (reader.hasNext()) {
                            arrayList.add((ShapeGroup) ContentModelParser.parse(reader, composition));
                        }
                        reader.endArray();
                    } else {
                        reader.skipName();
                        reader.skipValue();
                    }
                }
                reader.endObject();
            } else {
                reader.skipName();
                reader.skipValue();
            }
        }
        reader.endObject();
        return new FontCharacter(arrayList, cCharAt, dNextDouble, dNextDouble2, strNextString, strNextString2);
    }
}
