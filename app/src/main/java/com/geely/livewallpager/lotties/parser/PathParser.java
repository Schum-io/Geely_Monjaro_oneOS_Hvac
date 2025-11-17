package com.geely.livewallpager.lotties.parser;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class PathParser implements ValueParser<PointF> {
    public static final PathParser INSTANCE = new PathParser();

    private PathParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.geely.livewallpager.lotties.parser.ValueParser
    public PointF parse(JsonReader reader, float scale) throws IOException {
        return JsonUtils.jsonToPoint(reader, scale);
    }
}
