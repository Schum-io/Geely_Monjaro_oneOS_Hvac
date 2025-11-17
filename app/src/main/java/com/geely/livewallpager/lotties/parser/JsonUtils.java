package com.geely.livewallpager.lotties.parser;

import android.graphics.Color;
import android.graphics.PointF;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class JsonUtils {
    private static final JsonReader.Options POINT_NAMES = JsonReader.Options.of("x", "y");

    private JsonUtils() {
    }

    static int jsonToColor(JsonReader reader) throws IOException {
        reader.beginArray();
        int iNextDouble = (int) (reader.nextDouble() * 255.0d);
        int iNextDouble2 = (int) (reader.nextDouble() * 255.0d);
        int iNextDouble3 = (int) (reader.nextDouble() * 255.0d);
        while (reader.hasNext()) {
            reader.skipValue();
        }
        reader.endArray();
        return Color.argb(255, iNextDouble, iNextDouble2, iNextDouble3);
    }

    static List<PointF> jsonToPoints(JsonReader reader, float scale) throws IOException {
        ArrayList arrayList = new ArrayList();
        reader.beginArray();
        while (reader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            reader.beginArray();
            arrayList.add(jsonToPoint(reader, scale));
            reader.endArray();
        }
        reader.endArray();
        return arrayList;
    }

    /* renamed from: com.geely.livewallpager.lotties.parser.JsonUtils$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$geely$livewallpager$lotties$parser$moshi$JsonReader$Token;

        static {
            int[] iArr = new int[JsonReader.Token.values().length];
            $SwitchMap$com$geely$livewallpager$lotties$parser$moshi$JsonReader$Token = iArr;
            try {
                iArr[JsonReader.Token.NUMBER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$parser$moshi$JsonReader$Token[JsonReader.Token.BEGIN_ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$geely$livewallpager$lotties$parser$moshi$JsonReader$Token[JsonReader.Token.BEGIN_OBJECT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static PointF jsonToPoint(JsonReader reader, float scale) throws IOException {
        int i = AnonymousClass1.$SwitchMap$com$geely$livewallpager$lotties$parser$moshi$JsonReader$Token[reader.peek().ordinal()];
        if (i == 1) {
            return jsonNumbersToPoint(reader, scale);
        }
        if (i == 2) {
            return jsonArrayToPoint(reader, scale);
        }
        if (i == 3) {
            return jsonObjectToPoint(reader, scale);
        }
        throw new IllegalArgumentException("Unknown point starts with " + reader.peek());
    }

    private static PointF jsonNumbersToPoint(JsonReader reader, float scale) throws IOException {
        float fNextDouble = (float) reader.nextDouble();
        float fNextDouble2 = (float) reader.nextDouble();
        while (reader.hasNext()) {
            reader.skipValue();
        }
        return new PointF(fNextDouble * scale, fNextDouble2 * scale);
    }

    private static PointF jsonArrayToPoint(JsonReader reader, float scale) throws IOException {
        reader.beginArray();
        float fNextDouble = (float) reader.nextDouble();
        float fNextDouble2 = (float) reader.nextDouble();
        while (reader.peek() != JsonReader.Token.END_ARRAY) {
            reader.skipValue();
        }
        reader.endArray();
        return new PointF(fNextDouble * scale, fNextDouble2 * scale);
    }

    private static PointF jsonObjectToPoint(JsonReader reader, float scale) throws IOException {
        reader.beginObject();
        float fValueFromObject = 0.0f;
        float fValueFromObject2 = 0.0f;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(POINT_NAMES);
            if (iSelectName == 0) {
                fValueFromObject = valueFromObject(reader);
            } else if (iSelectName == 1) {
                fValueFromObject2 = valueFromObject(reader);
            } else {
                reader.skipName();
                reader.skipValue();
            }
        }
        reader.endObject();
        return new PointF(fValueFromObject * scale, fValueFromObject2 * scale);
    }

    static float valueFromObject(JsonReader reader) throws IOException {
        JsonReader.Token tokenPeek = reader.peek();
        int i = AnonymousClass1.$SwitchMap$com$geely$livewallpager$lotties$parser$moshi$JsonReader$Token[tokenPeek.ordinal()];
        if (i == 1) {
            return (float) reader.nextDouble();
        }
        if (i == 2) {
            reader.beginArray();
            float fNextDouble = (float) reader.nextDouble();
            while (reader.hasNext()) {
                reader.skipValue();
            }
            reader.endArray();
            return fNextDouble;
        }
        throw new IllegalArgumentException("Unknown value for token of type " + tokenPeek);
    }
}
