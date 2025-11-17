package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.model.content.MergePaths;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
class MergePathsParser {
    private static final JsonReader.Options NAMES = JsonReader.Options.of("nm", "mm", "hd");

    private MergePathsParser() {
    }

    static MergePaths parse(JsonReader reader) throws IOException {
        String strNextString = null;
        boolean zNextBoolean = false;
        MergePaths.MergePathsMode mergePathsModeForId = null;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                strNextString = reader.nextString();
            } else if (iSelectName == 1) {
                mergePathsModeForId = MergePaths.MergePathsMode.forId(reader.nextInt());
            } else if (iSelectName == 2) {
                zNextBoolean = reader.nextBoolean();
            } else {
                reader.skipName();
                reader.skipValue();
            }
        }
        return new MergePaths(strNextString, mergePathsModeForId, zNextBoolean);
    }
}
