package com.geely.livewallpager.lotties.parser;

import android.graphics.Color;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class ColorParser implements ValueParser<Integer> {
    public static final ColorParser INSTANCE = new ColorParser();

    private ColorParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.geely.livewallpager.lotties.parser.ValueParser
    public Integer parse(JsonReader reader, float scale) throws IOException {
        boolean z = reader.peek() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            reader.beginArray();
        }
        double dNextDouble = reader.nextDouble();
        double dNextDouble2 = reader.nextDouble();
        double dNextDouble3 = reader.nextDouble();
        double dNextDouble4 = reader.nextDouble();
        if (z) {
            reader.endArray();
        }
        if (dNextDouble <= 1.0d && dNextDouble2 <= 1.0d && dNextDouble3 <= 1.0d) {
            dNextDouble *= 255.0d;
            dNextDouble2 *= 255.0d;
            dNextDouble3 *= 255.0d;
            if (dNextDouble4 <= 1.0d) {
                dNextDouble4 *= 255.0d;
            }
        }
        return Integer.valueOf(Color.argb((int) dNextDouble4, (int) dNextDouble, (int) dNextDouble2, (int) dNextDouble3));
    }
}
