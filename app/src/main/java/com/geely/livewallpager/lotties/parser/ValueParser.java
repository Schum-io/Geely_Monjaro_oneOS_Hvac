package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
interface ValueParser<V> {
    V parse(JsonReader reader, float scale) throws IOException;
}
