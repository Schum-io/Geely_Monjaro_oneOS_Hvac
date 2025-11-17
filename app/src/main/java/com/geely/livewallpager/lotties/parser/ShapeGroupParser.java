package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.content.ContentModel;
import com.geely.livewallpager.lotties.model.content.ShapeGroup;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
class ShapeGroupParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of("nm", "hd", "it");

    private ShapeGroupParser() {
    }

    static ShapeGroup parse(JsonReader reader, LottieComposition composition) throws IOException {
        ArrayList arrayList = new ArrayList();
        String strNextString = null;
        boolean zNextBoolean = false;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                strNextString = reader.nextString();
            } else if (iSelectName == 1) {
                zNextBoolean = reader.nextBoolean();
            } else if (iSelectName == 2) {
                reader.beginArray();
                while (reader.hasNext()) {
                    ContentModel contentModel = ContentModelParser.parse(reader, composition);
                    if (contentModel != null) {
                        arrayList.add(contentModel);
                    }
                }
                reader.endArray();
            } else {
                reader.skipValue();
            }
        }
        return new ShapeGroup(strNextString, arrayList, zNextBoolean);
    }
}
