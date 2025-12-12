package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class FloatParser implements ValueParser<Float> {
    public static final FloatParser INSTANCE = new FloatParser();

    private FloatParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.geely.livewallpager.lotties.parser.ValueParser
    public Float parse(JsonReader reader, float scale) throws IOException {
        return Float.valueOf(JsonUtils.valueFromObject(reader) * scale);
    }
}
