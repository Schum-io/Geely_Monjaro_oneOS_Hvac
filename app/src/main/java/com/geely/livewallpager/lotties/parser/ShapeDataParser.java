package com.geely.livewallpager.lotties.parser;

import android.graphics.PointF;
import com.geely.livewallpager.lotties.model.CubicCurveData;
import com.geely.livewallpager.lotties.model.content.ShapeData;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.utils.MiscUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class ShapeDataParser implements ValueParser<ShapeData> {
    public static final ShapeDataParser INSTANCE = new ShapeDataParser();
    private static final JsonReader.Options NAMES = JsonReader.Options.of("c", "v", "i", "o");

    private ShapeDataParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.geely.livewallpager.lotties.parser.ValueParser
    public ShapeData parse(JsonReader reader, float scale) throws IOException {
        if (reader.peek() == JsonReader.Token.BEGIN_ARRAY) {
            reader.beginArray();
        }
        reader.beginObject();
        List<PointF> listJsonToPoints = null;
        List<PointF> listJsonToPoints2 = null;
        List<PointF> listJsonToPoints3 = null;
        boolean zNextBoolean = false;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                zNextBoolean = reader.nextBoolean();
            } else if (iSelectName == 1) {
                listJsonToPoints = JsonUtils.jsonToPoints(reader, scale);
            } else if (iSelectName == 2) {
                listJsonToPoints2 = JsonUtils.jsonToPoints(reader, scale);
            } else if (iSelectName == 3) {
                listJsonToPoints3 = JsonUtils.jsonToPoints(reader, scale);
            } else {
                reader.skipName();
                reader.skipValue();
            }
        }
        reader.endObject();
        if (reader.peek() == JsonReader.Token.END_ARRAY) {
            reader.endArray();
        }
        if (listJsonToPoints == null || listJsonToPoints2 == null || listJsonToPoints3 == null) {
            throw new IllegalArgumentException("Shape data was missing information.");
        }
        if (listJsonToPoints.isEmpty()) {
            return new ShapeData(new PointF(), false, Collections.emptyList());
        }
        int size = listJsonToPoints.size();
        PointF pointF = listJsonToPoints.get(0);
        ArrayList arrayList = new ArrayList(size);
        for (int i = 1; i < size; i++) {
            PointF pointF2 = listJsonToPoints.get(i);
            int i2 = i - 1;
            arrayList.add(new CubicCurveData(MiscUtils.addPoints(listJsonToPoints.get(i2), listJsonToPoints3.get(i2)), MiscUtils.addPoints(pointF2, listJsonToPoints2.get(i)), pointF2));
        }
        if (zNextBoolean) {
            PointF pointF3 = listJsonToPoints.get(0);
            int i3 = size - 1;
            arrayList.add(new CubicCurveData(MiscUtils.addPoints(listJsonToPoints.get(i3), listJsonToPoints3.get(i3)), MiscUtils.addPoints(pointF3, listJsonToPoints2.get(0)), pointF3));
        }
        return new ShapeData(pointF, zNextBoolean, arrayList);
    }
}
