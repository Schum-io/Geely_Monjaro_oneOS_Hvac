package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableGradientColorValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableIntegerValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatablePointValue;
import com.geely.livewallpager.lotties.model.content.GradientStroke;
import com.geely.livewallpager.lotties.model.content.GradientType;
import com.geely.livewallpager.lotties.model.content.ShapeStroke;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;
import java.util.ArrayList;

/* loaded from: classes.dex */
class GradientStrokeParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of("nm", "g", "o", "t", "s", "e", "w", "lc", "lj", "ml", "hd", "d");
    private static final JsonReader.Options GRADIENT_NAMES = JsonReader.Options.of("p", "k");
    private static final JsonReader.Options DASH_PATTERN_NAMES = JsonReader.Options.of("n", "v");

    private GradientStrokeParser() {
    }

    static GradientStroke parse(JsonReader reader, LottieComposition composition) throws IOException {
        AnimatableGradientColorValue animatableGradientColorValue;
        ArrayList arrayList = new ArrayList();
        float fNextDouble = 0.0f;
        String strNextString = null;
        GradientType gradientType = null;
        AnimatableGradientColorValue gradientColor = null;
        AnimatableIntegerValue integer = null;
        AnimatablePointValue point = null;
        AnimatablePointValue point2 = null;
        AnimatableFloatValue animatableFloatValue = null;
        ShapeStroke.LineCapType lineCapType = null;
        ShapeStroke.LineJoinType lineJoinType = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        boolean zNextBoolean = false;
        while (reader.hasNext()) {
            switch (reader.selectName(NAMES)) {
                case 0:
                    strNextString = reader.nextString();
                    break;
                case 1:
                    int iNextInt = -1;
                    reader.beginObject();
                    while (reader.hasNext()) {
                        int iSelectName = reader.selectName(GRADIENT_NAMES);
                        if (iSelectName != 0) {
                            animatableGradientColorValue = gradientColor;
                            if (iSelectName == 1) {
                                gradientColor = AnimatableValueParser.parseGradientColor(reader, composition, iNextInt);
                            } else {
                                reader.skipName();
                                reader.skipValue();
                            }
                        } else {
                            animatableGradientColorValue = gradientColor;
                            iNextInt = reader.nextInt();
                        }
                        gradientColor = animatableGradientColorValue;
                    }
                    reader.endObject();
                    break;
                case 2:
                    integer = AnimatableValueParser.parseInteger(reader, composition);
                    break;
                case 3:
                    gradientType = reader.nextInt() == 1 ? GradientType.LINEAR : GradientType.RADIAL;
                    break;
                case 4:
                    point = AnimatableValueParser.parsePoint(reader, composition);
                    break;
                case 5:
                    point2 = AnimatableValueParser.parsePoint(reader, composition);
                    break;
                case 6:
                    animatableFloatValue = AnimatableValueParser.parseFloat(reader, composition);
                    break;
                case 7:
                    lineCapType = ShapeStroke.LineCapType.values()[reader.nextInt() - 1];
                    break;
                case 8:
                    lineJoinType = ShapeStroke.LineJoinType.values()[reader.nextInt() - 1];
                    break;
                case 9:
                    fNextDouble = (float) reader.nextDouble();
                    break;
                case 10:
                    zNextBoolean = reader.nextBoolean();
                    break;
                case 11:
                    reader.beginArray();
                    while (reader.hasNext()) {
                        reader.beginObject();
                        String strNextString2 = null;
                        AnimatableFloatValue animatableFloatValue3 = null;
                        while (reader.hasNext()) {
                            int iSelectName2 = reader.selectName(DASH_PATTERN_NAMES);
                            if (iSelectName2 != 0) {
                                AnimatableFloatValue animatableFloatValue4 = animatableFloatValue2;
                                if (iSelectName2 == 1) {
                                    animatableFloatValue3 = AnimatableValueParser.parseFloat(reader, composition);
                                } else {
                                    reader.skipName();
                                    reader.skipValue();
                                }
                                animatableFloatValue2 = animatableFloatValue4;
                            } else {
                                strNextString2 = reader.nextString();
                            }
                        }
                        AnimatableFloatValue animatableFloatValue5 = animatableFloatValue2;
                        reader.endObject();
                        if (strNextString2.equals("o")) {
                            animatableFloatValue2 = animatableFloatValue3;
                        } else {
                            if (strNextString2.equals("d") || strNextString2.equals("g")) {
                                composition.setHasDashPattern(true);
                                arrayList.add(animatableFloatValue3);
                            }
                            animatableFloatValue2 = animatableFloatValue5;
                        }
                    }
                    AnimatableFloatValue animatableFloatValue6 = animatableFloatValue2;
                    reader.endArray();
                    if (arrayList.size() == 1) {
                        arrayList.add((AnimatableFloatValue) arrayList.get(0));
                    }
                    animatableFloatValue2 = animatableFloatValue6;
                    break;
                default:
                    reader.skipName();
                    reader.skipValue();
                    break;
            }
        }
        return new GradientStroke(strNextString, gradientType, gradientColor, integer, point, point2, animatableFloatValue, lineCapType, lineJoinType, fNextDouble, arrayList, animatableFloatValue2, zNextBoolean);
    }
}
