package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.animation.keyframe.PathKeyframe;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.utils.Utils;
import java.io.IOException;

/* loaded from: classes.dex */
class PathKeyframeParser {
    private PathKeyframeParser() {
    }

    static PathKeyframe parse(JsonReader reader, LottieComposition composition) throws IOException {
        return new PathKeyframe(composition, KeyframeParser.parse(reader, composition, Utils.dpScale(), PathParser.INSTANCE, reader.peek() == JsonReader.Token.BEGIN_OBJECT));
    }
}
