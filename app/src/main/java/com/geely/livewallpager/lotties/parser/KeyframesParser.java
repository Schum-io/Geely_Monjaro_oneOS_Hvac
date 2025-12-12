package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.animation.keyframe.PathKeyframe;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class KeyframesParser {
    static JsonReader.Options NAMES = JsonReader.Options.of("k");

    private KeyframesParser() {
    }

    static <T> List<Keyframe<T>> parse(JsonReader reader, LottieComposition composition, float scale, ValueParser<T> valueParser) throws IOException {
        ArrayList arrayList = new ArrayList();
        if (reader.peek() == JsonReader.Token.STRING) {
            composition.addWarning("Lottie doesn't support expressions.");
            return arrayList;
        }
        reader.beginObject();
        while (reader.hasNext()) {
            if (reader.selectName(NAMES) == 0) {
                if (reader.peek() == JsonReader.Token.BEGIN_ARRAY) {
                    reader.beginArray();
                    if (reader.peek() == JsonReader.Token.NUMBER) {
                        arrayList.add(KeyframeParser.parse(reader, composition, scale, valueParser, false));
                    } else {
                        while (reader.hasNext()) {
                            arrayList.add(KeyframeParser.parse(reader, composition, scale, valueParser, true));
                        }
                    }
                    reader.endArray();
                } else {
                    arrayList.add(KeyframeParser.parse(reader, composition, scale, valueParser, false));
                }
            } else {
                reader.skipValue();
            }
        }
        reader.endObject();
        setEndFrames(arrayList);
        return arrayList;
    }

    public static <T> void setEndFrames(List<? extends Keyframe<T>> keyframes) {
        int i;
        int size = keyframes.size();
        int i2 = 0;
        while (true) {
            i = size - 1;
            if (i2 >= i) {
                break;
            }
            Keyframe<T> keyframe = keyframes.get(i2);
            i2++;
            Keyframe<T> keyframe2 = keyframes.get(i2);
            keyframe.endFrame = Float.valueOf(keyframe2.startFrame);
            if (keyframe.endValue == null && keyframe2.startValue != null) {
                keyframe.endValue = keyframe2.startValue;
                if (keyframe instanceof PathKeyframe) {
                    ((PathKeyframe) keyframe).createPath();
                }
            }
        }
        Keyframe<T> keyframe3 = keyframes.get(i);
        if ((keyframe3.startValue == null || keyframe3.endValue == null) && keyframes.size() > 1) {
            keyframes.remove(keyframe3);
        }
    }
}
