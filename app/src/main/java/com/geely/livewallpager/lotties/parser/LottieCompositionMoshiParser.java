package com.geely.livewallpager.lotties.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.LottieImageAsset;
import com.geely.livewallpager.lotties.model.Font;
import com.geely.livewallpager.lotties.model.FontCharacter;
import com.geely.livewallpager.lotties.model.Marker;
import com.geely.livewallpager.lotties.model.layer.Layer;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.utils.Logger;
import com.geely.livewallpager.lotties.utils.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LottieCompositionMoshiParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");
    static JsonReader.Options ASSETS_NAMES = JsonReader.Options.of("id", "layers", "w", "h", "p", "u");
    private static final JsonReader.Options FONT_NAMES = JsonReader.Options.of("list");
    private static final JsonReader.Options MARKER_NAMES = JsonReader.Options.of("cm", "tm", "dr");

    public static LottieComposition parse(JsonReader reader) throws IOException {
        HashMap map;
        ArrayList arrayList;
        JsonReader jsonReader = reader;
        float fDpScale = Utils.dpScale();
        LongSparseArray<Layer> longSparseArray = new LongSparseArray<>();
        ArrayList arrayList2 = new ArrayList();
        HashMap map2 = new HashMap();
        HashMap map3 = new HashMap();
        HashMap map4 = new HashMap();
        ArrayList arrayList3 = new ArrayList();
        SparseArrayCompat<FontCharacter> sparseArrayCompat = new SparseArrayCompat<>();
        LottieComposition lottieComposition = new LottieComposition();
        reader.beginObject();
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        int iNextInt = 0;
        int iNextInt2 = 0;
        while (reader.hasNext()) {
            switch (jsonReader.selectName(NAMES)) {
                case 0:
                    iNextInt = reader.nextInt();
                    break;
                case 1:
                    iNextInt2 = reader.nextInt();
                    break;
                case 2:
                    fNextDouble = (float) reader.nextDouble();
                    break;
                case 3:
                    map = map4;
                    arrayList = arrayList3;
                    fNextDouble2 = ((float) reader.nextDouble()) - 0.01f;
                    map4 = map;
                    arrayList3 = arrayList;
                    break;
                case 4:
                    map = map4;
                    arrayList = arrayList3;
                    fNextDouble3 = (float) reader.nextDouble();
                    map4 = map;
                    arrayList3 = arrayList;
                    break;
                case 5:
                    String[] strArrSplit = reader.nextString().split("\\.");
                    if (!Utils.isAtLeastVersion(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), 4, 4, 0)) {
                        lottieComposition.addWarning("Lottie only supports bodymovin >= 4.4.0");
                    }
                    map = map4;
                    arrayList = arrayList3;
                    map4 = map;
                    arrayList3 = arrayList;
                    break;
                case 6:
                    parseLayers(jsonReader, lottieComposition, arrayList2, longSparseArray);
                    map = map4;
                    arrayList = arrayList3;
                    map4 = map;
                    arrayList3 = arrayList;
                    break;
                case 7:
                    parseAssets(jsonReader, lottieComposition, map2, map3);
                    map = map4;
                    arrayList = arrayList3;
                    map4 = map;
                    arrayList3 = arrayList;
                    break;
                case 8:
                    parseFonts(jsonReader, map4);
                    map = map4;
                    arrayList = arrayList3;
                    map4 = map;
                    arrayList3 = arrayList;
                    break;
                case 9:
                    parseChars(jsonReader, lottieComposition, sparseArrayCompat);
                    map = map4;
                    arrayList = arrayList3;
                    map4 = map;
                    arrayList3 = arrayList;
                    break;
                case 10:
                    parseMarkers(jsonReader, lottieComposition, arrayList3);
                    map = map4;
                    arrayList = arrayList3;
                    map4 = map;
                    arrayList3 = arrayList;
                    break;
                default:
                    map = map4;
                    arrayList = arrayList3;
                    reader.skipName();
                    reader.skipValue();
                    map4 = map;
                    arrayList3 = arrayList;
                    break;
            }
            jsonReader = reader;
        }
        lottieComposition.init(new Rect(0, 0, (int) (iNextInt * fDpScale), (int) (iNextInt2 * fDpScale)), fNextDouble, fNextDouble2, fNextDouble3, arrayList2, longSparseArray, map2, map3, sparseArrayCompat, map4, arrayList3);
        return lottieComposition;
    }

    private static void parseLayers(JsonReader reader, LottieComposition composition, List<Layer> layers, LongSparseArray<Layer> layerMap) throws IOException {
        reader.beginArray();
        int i = 0;
        while (reader.hasNext()) {
            Layer layer = LayerParser.parse(reader, composition);
            if (layer.getLayerType() == Layer.LayerType.IMAGE) {
                i++;
            }
            layers.add(layer);
            layerMap.put(layer.getId(), layer);
            if (i > 4) {
                Logger.warning("You have " + i + " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers.");
            }
        }
        reader.endArray();
    }

    private static void parseAssets(JsonReader reader, LottieComposition composition, Map<String, List<Layer>> precomps, Map<String, LottieImageAsset> images) throws IOException {
        reader.beginArray();
        while (reader.hasNext()) {
            ArrayList arrayList = new ArrayList();
            LongSparseArray longSparseArray = new LongSparseArray();
            reader.beginObject();
            int iNextInt = 0;
            int iNextInt2 = 0;
            String strNextString = null;
            String strNextString2 = null;
            String strNextString3 = null;
            while (reader.hasNext()) {
                int iSelectName = reader.selectName(ASSETS_NAMES);
                if (iSelectName == 0) {
                    strNextString = reader.nextString();
                } else if (iSelectName == 1) {
                    reader.beginArray();
                    while (reader.hasNext()) {
                        Layer layer = LayerParser.parse(reader, composition);
                        longSparseArray.put(layer.getId(), layer);
                        arrayList.add(layer);
                    }
                    reader.endArray();
                } else if (iSelectName == 2) {
                    iNextInt = reader.nextInt();
                } else if (iSelectName == 3) {
                    iNextInt2 = reader.nextInt();
                } else if (iSelectName == 4) {
                    strNextString2 = reader.nextString();
                } else if (iSelectName == 5) {
                    strNextString3 = reader.nextString();
                } else {
                    reader.skipName();
                    reader.skipValue();
                }
            }
            reader.endObject();
            if (strNextString2 != null) {
                LottieImageAsset lottieImageAsset = new LottieImageAsset(iNextInt, iNextInt2, strNextString, strNextString2, strNextString3);
                images.put(lottieImageAsset.getId(), lottieImageAsset);
            } else {
                precomps.put(strNextString, arrayList);
            }
        }
        reader.endArray();
    }

    private static void parseFonts(JsonReader reader, Map<String, Font> fonts) throws IOException {
        reader.beginObject();
        while (reader.hasNext()) {
            if (reader.selectName(FONT_NAMES) == 0) {
                reader.beginArray();
                while (reader.hasNext()) {
                    Font font = FontParser.parse(reader);
                    fonts.put(font.getName(), font);
                }
                reader.endArray();
            } else {
                reader.skipName();
                reader.skipValue();
            }
        }
        reader.endObject();
    }

    private static void parseChars(JsonReader reader, LottieComposition composition, SparseArrayCompat<FontCharacter> characters) throws IOException {
        reader.beginArray();
        while (reader.hasNext()) {
            FontCharacter fontCharacter = FontCharacterParser.parse(reader, composition);
            characters.put(fontCharacter.hashCode(), fontCharacter);
        }
        reader.endArray();
    }

    private static void parseMarkers(JsonReader reader, LottieComposition composition, List<Marker> markers) throws IOException {
        reader.beginArray();
        while (reader.hasNext()) {
            String strNextString = null;
            reader.beginObject();
            float fNextDouble = 0.0f;
            float fNextDouble2 = 0.0f;
            while (reader.hasNext()) {
                int iSelectName = reader.selectName(MARKER_NAMES);
                if (iSelectName == 0) {
                    strNextString = reader.nextString();
                } else if (iSelectName == 1) {
                    fNextDouble = (float) reader.nextDouble();
                } else if (iSelectName == 2) {
                    fNextDouble2 = (float) reader.nextDouble();
                } else {
                    reader.skipName();
                    reader.skipValue();
                }
            }
            reader.endObject();
            markers.add(new Marker(strNextString, fNextDouble, fNextDouble2));
        }
        reader.endArray();
    }
}
