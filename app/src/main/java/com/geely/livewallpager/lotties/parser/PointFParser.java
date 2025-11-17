package com.geely.livewallpager.lotties.parser;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class PointFParser implements ValueParser<PointF> {
    public static final PointFParser INSTANCE = new PointFParser();

    private PointFParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.geely.livewallpager.lotties.parser.ValueParser
    public PointF parse(JsonReader reader, float scale) throws IOException {
        JsonReader.Token tokenPeek = reader.peek();
        if (tokenPeek == JsonReader.Token.BEGIN_ARRAY) {
            return JsonUtils.jsonToPoint(reader, scale);
        }
        if (tokenPeek == JsonReader.Token.BEGIN_OBJECT) {
            return JsonUtils.jsonToPoint(reader, scale);
        }
        if (tokenPeek == JsonReader.Token.NUMBER) {
            PointF pointF = new PointF(((float) reader.nextDouble()) * scale, ((float) reader.nextDouble()) * scale);
            while (reader.hasNext()) {
                reader.skipValue();
            }
            return pointF;
        }
        throw new IllegalArgumentException("Cannot convert json to point. Next token is " + tokenPeek);
    }
}
