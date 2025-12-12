package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.value.ScaleXY;
import java.io.IOException;

/* loaded from: classes.dex */
public class ScaleXYParser implements ValueParser<ScaleXY> {
    public static final ScaleXYParser INSTANCE = new ScaleXYParser();

    private ScaleXYParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.geely.livewallpager.lotties.parser.ValueParser
    public ScaleXY parse(JsonReader reader, float scale) throws IOException {
        boolean z = reader.peek() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            reader.beginArray();
        }
        float fNextDouble = (float) reader.nextDouble();
        float fNextDouble2 = (float) reader.nextDouble();
        while (reader.hasNext()) {
            reader.skipValue();
        }
        if (z) {
            reader.endArray();
        }
        return new ScaleXY((fNextDouble / 100.0f) * scale, (fNextDouble2 / 100.0f) * scale);
    }
}
