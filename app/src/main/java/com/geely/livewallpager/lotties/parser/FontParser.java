package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.model.Font;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
class FontParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("fFamily", "fName", "fStyle", "ascent");

    private FontParser() {
    }

    static Font parse(JsonReader reader) throws IOException {
        reader.beginObject();
        String strNextString = null;
        String strNextString2 = null;
        float fNextDouble = 0.0f;
        String strNextString3 = null;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                strNextString = reader.nextString();
            } else if (iSelectName == 1) {
                strNextString3 = reader.nextString();
            } else if (iSelectName == 2) {
                strNextString2 = reader.nextString();
            } else if (iSelectName == 3) {
                fNextDouble = (float) reader.nextDouble();
            } else {
                reader.skipName();
                reader.skipValue();
            }
        }
        reader.endObject();
        return new Font(strNextString, strNextString3, strNextString2, fNextDouble);
    }
}
