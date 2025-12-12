package com.geely.livewallpager.lotties.parser;

import android.graphics.Color;
import android.graphics.Rect;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableTextFrame;
import com.geely.livewallpager.lotties.model.animatable.AnimatableTextProperties;
import com.geely.livewallpager.lotties.model.animatable.AnimatableTransform;
import com.geely.livewallpager.lotties.model.content.ContentModel;
import com.geely.livewallpager.lotties.model.layer.Layer;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.utils.Utils;
import com.geely.livewallpager.lotties.value.Keyframe;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

/* loaded from: classes.dex */
public class LayerParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("nm", "ind", "refId", "ty", "parent", "sw", "sh", "sc", "ks", "tt", "masksProperties", "shapes", "t", "ef", "sr", "st", "w", "h", "ip", "op", "tm", "cl", "hd");
    private static final JsonReader.Options TEXT_NAMES = JsonReader.Options.of("d", "a");
    private static final JsonReader.Options EFFECTS_NAMES = JsonReader.Options.of("nm");

    private LayerParser() {
    }

    public static Layer parse(LottieComposition composition) {
        Rect bounds = composition.getBounds();
        return new Layer(Collections.emptyList(), composition, "__container", -1L, Layer.LayerType.PRE_COMP, -1L, null, Collections.emptyList(), new AnimatableTransform(), 0, 0, 0, 0.0f, 0.0f, bounds.width(), bounds.height(), null, null, Collections.emptyList(), Layer.MatteType.NONE, null, false);
    }

    public static Layer parse(JsonReader reader, LottieComposition composition) throws IOException {
        ArrayList arrayList;
        ArrayList arrayList2;
        float f;
        Layer.MatteType matteType = Layer.MatteType.NONE;
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        reader.beginObject();
        Float fValueOf = Float.valueOf(1.0f);
        Float fValueOf2 = Float.valueOf(0.0f);
        Layer.MatteType matteType2 = matteType;
        float fNextDouble = 1.0f;
        int iNextInt = 0;
        int iNextInt2 = 0;
        int color = 0;
        int iNextInt3 = 0;
        int iNextInt4 = 0;
        boolean zNextBoolean = false;
        Layer.LayerType layerType = null;
        String strNextString = null;
        AnimatableTransform animatableTransform = null;
        AnimatableTextFrame documentData = null;
        AnimatableTextProperties animatableTextProperties = null;
        AnimatableFloatValue animatableFloatValue = null;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        float fNextDouble4 = 0.0f;
        long jNextInt = -1;
        long jNextInt2 = 0;
        String strNextString2 = null;
        String strNextString3 = "UNSET";
        while (reader.hasNext()) {
            switch (reader.selectName(NAMES)) {
                case 0:
                    strNextString3 = reader.nextString();
                    break;
                case 1:
                    jNextInt2 = reader.nextInt();
                    break;
                case 2:
                    strNextString = reader.nextString();
                    break;
                case 3:
                    int iNextInt5 = reader.nextInt();
                    if (iNextInt5 < Layer.LayerType.UNKNOWN.ordinal()) {
                        layerType = Layer.LayerType.values()[iNextInt5];
                        break;
                    } else {
                        layerType = Layer.LayerType.UNKNOWN;
                        break;
                    }
                case 4:
                    jNextInt = reader.nextInt();
                    break;
                case 5:
                    iNextInt = (int) (reader.nextInt() * Utils.dpScale());
                    break;
                case 6:
                    iNextInt2 = (int) (reader.nextInt() * Utils.dpScale());
                    break;
                case 7:
                    color = Color.parseColor(reader.nextString());
                    break;
                case 8:
                    animatableTransform = AnimatableTransformParser.parse(reader, composition);
                    break;
                case 9:
                    matteType2 = Layer.MatteType.values()[reader.nextInt()];
                    composition.incrementMatteOrMaskCount(1);
                    break;
                case 10:
                    reader.beginArray();
                    while (reader.hasNext()) {
                        arrayList3.add(MaskParser.parse(reader, composition));
                    }
                    composition.incrementMatteOrMaskCount(arrayList3.size());
                    reader.endArray();
                    break;
                case 11:
                    reader.beginArray();
                    while (reader.hasNext()) {
                        ContentModel contentModel = ContentModelParser.parse(reader, composition);
                        if (contentModel != null) {
                            arrayList4.add(contentModel);
                        }
                    }
                    reader.endArray();
                    break;
                case 12:
                    reader.beginObject();
                    while (reader.hasNext()) {
                        int iSelectName = reader.selectName(TEXT_NAMES);
                        if (iSelectName == 0) {
                            documentData = AnimatableValueParser.parseDocumentData(reader, composition);
                        } else if (iSelectName == 1) {
                            reader.beginArray();
                            if (reader.hasNext()) {
                                animatableTextProperties = AnimatableTextPropertiesParser.parse(reader, composition);
                            }
                            while (reader.hasNext()) {
                                reader.skipValue();
                            }
                            reader.endArray();
                        } else {
                            reader.skipName();
                            reader.skipValue();
                        }
                    }
                    reader.endObject();
                    break;
                case 13:
                    reader.beginArray();
                    ArrayList arrayList5 = new ArrayList();
                    while (reader.hasNext()) {
                        reader.beginObject();
                        while (reader.hasNext()) {
                            if (reader.selectName(EFFECTS_NAMES) == 0) {
                                arrayList5.add(reader.nextString());
                            } else {
                                reader.skipName();
                                reader.skipValue();
                            }
                        }
                        reader.endObject();
                    }
                    reader.endArray();
                    composition.addWarning("Lottie doesn't support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: " + arrayList5);
                    break;
                case 14:
                    fNextDouble = (float) reader.nextDouble();
                    break;
                case 15:
                    fNextDouble4 = (float) reader.nextDouble();
                    break;
                case 16:
                    iNextInt3 = (int) (reader.nextInt() * Utils.dpScale());
                    break;
                case 17:
                    iNextInt4 = (int) (reader.nextInt() * Utils.dpScale());
                    break;
                case 18:
                    fNextDouble2 = (float) reader.nextDouble();
                    break;
                case 19:
                    fNextDouble3 = (float) reader.nextDouble();
                    break;
                case 20:
                    animatableFloatValue = AnimatableValueParser.parseFloat(reader, composition, false);
                    break;
                case 21:
                    strNextString2 = reader.nextString();
                    break;
                case 22:
                    zNextBoolean = reader.nextBoolean();
                    break;
                default:
                    reader.skipName();
                    reader.skipValue();
                    break;
            }
        }
        reader.endObject();
        float f2 = fNextDouble2 / fNextDouble;
        float endFrame = fNextDouble3 / fNextDouble;
        ArrayList arrayList6 = new ArrayList();
        if (f2 > 0.0f) {
            arrayList = arrayList3;
            arrayList2 = arrayList6;
            arrayList2.add(new Keyframe(composition, fValueOf2, fValueOf2, null, 0.0f, Float.valueOf(f2)));
            f = 0.0f;
        } else {
            arrayList = arrayList3;
            arrayList2 = arrayList6;
            f = 0.0f;
        }
        if (endFrame <= f) {
            endFrame = composition.getEndFrame();
        }
        arrayList2.add(new Keyframe(composition, fValueOf, fValueOf, null, f2, Float.valueOf(endFrame)));
        arrayList2.add(new Keyframe(composition, fValueOf2, fValueOf2, null, endFrame, Float.valueOf(Float.MAX_VALUE)));
        if (strNextString3.endsWith(".ai") || "ai".equals(strNextString2)) {
            composition.addWarning("Convert your Illustrator layers to shape layers.");
        }
        return new Layer(arrayList4, composition, strNextString3, jNextInt2, layerType, jNextInt, strNextString, arrayList, animatableTransform, iNextInt, iNextInt2, color, fNextDouble, fNextDouble4, iNextInt3, iNextInt4, documentData, animatableTextProperties, arrayList2, matteType2, animatableFloatValue, zNextBoolean);
    }
}
