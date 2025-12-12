package com.geely.livewallpager.lotties.parser;

import android.graphics.Rect;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.FontCharacter;
import com.geely.livewallpager.lotties.model.layer.Layer;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.utils.Logger;
import com.geely.livewallpager.lotties.utils.Utils;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public class LottieCompositionParser {
    static JsonReader.Options NAMES = JsonReader.Options.of("w", "h", "ip", "op", "fr", "v", "layers", "assets", "fonts", "chars", "markers");

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
                default:
                    map = map4;
                    arrayList = arrayList3;
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
}
