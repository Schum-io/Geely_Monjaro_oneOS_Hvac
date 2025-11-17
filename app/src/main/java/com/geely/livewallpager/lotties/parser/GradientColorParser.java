package com.geely.livewallpager.lotties.parser;

import android.graphics.Color;
import com.geely.livewallpager.lotties.model.content.GradientColor;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.utils.MiscUtils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class GradientColorParser implements ValueParser<GradientColor> {
    private int colorPoints;

    public GradientColorParser(int colorPoints) {
        this.colorPoints = colorPoints;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.geely.livewallpager.lotties.parser.ValueParser
    public GradientColor parse(JsonReader reader, float scale) throws IOException {
        ArrayList<Float> arrayList = new ArrayList<>();
        boolean z = reader.peek() == JsonReader.Token.BEGIN_ARRAY;
        if (z) {
            reader.beginArray();
        }
        while (reader.hasNext()) {
            arrayList.add(Float.valueOf((float) reader.nextDouble()));
        }
        if (z) {
            reader.endArray();
        }
        if (this.colorPoints == -1) {
            this.colorPoints = arrayList.size() / 4;
        }
        int i = this.colorPoints;
        float[] fArr = new float[i];
        int[] iArr = new int[i];
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < this.colorPoints * 4; i4++) {
            int i5 = i4 / 4;
            double dFloatValue = arrayList.get(i4).floatValue();
            int i6 = i4 % 4;
            if (i6 == 0) {
                fArr[i5] = (float) dFloatValue;
            } else if (i6 == 1) {
                i2 = (int) (dFloatValue * 255.0d);
            } else if (i6 == 2) {
                i3 = (int) (dFloatValue * 255.0d);
            } else if (i6 == 3) {
                iArr[i5] = Color.argb(255, i2, i3, (int) (dFloatValue * 255.0d));
            }
        }
        GradientColor gradientColor = new GradientColor(fArr, iArr);
        addOpacityStopsToGradientIfNeeded(gradientColor, arrayList);
        return gradientColor;
    }

    private void addOpacityStopsToGradientIfNeeded(GradientColor gradientColor, List<Float> array) {
        int i = this.colorPoints * 4;
        if (array.size() <= i) {
            return;
        }
        int size = (array.size() - i) / 2;
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        int i2 = 0;
        while (i < array.size()) {
            if (i % 2 == 0) {
                dArr[i2] = array.get(i).floatValue();
            } else {
                dArr2[i2] = array.get(i).floatValue();
                i2++;
            }
            i++;
        }
        for (int i3 = 0; i3 < gradientColor.getSize(); i3++) {
            int i4 = gradientColor.getColors()[i3];
            gradientColor.getColors()[i3] = Color.argb(getOpacityAtPosition(gradientColor.getPositions()[i3], dArr, dArr2), Color.red(i4), Color.green(i4), Color.blue(i4));
        }
    }

    private int getOpacityAtPosition(double position, double[] positions, double[] opacities) {
        double dLerp;
        int i = 1;
        while (true) {
            if (i < positions.length) {
                int i2 = i - 1;
                double d = positions[i2];
                double d2 = positions[i];
                if (positions[i] >= position) {
                    dLerp = MiscUtils.lerp(opacities[i2], opacities[i], (position - d) / (d2 - d));
                    break;
                }
                i++;
            } else {
                dLerp = opacities[opacities.length - 1];
                break;
            }
        }
        return (int) (dLerp * 255.0d);
    }
}
