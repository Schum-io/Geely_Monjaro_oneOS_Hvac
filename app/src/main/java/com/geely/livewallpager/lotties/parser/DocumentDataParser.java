package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.model.DocumentData;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
public class DocumentDataParser implements ValueParser<DocumentData> {
    public static final DocumentDataParser INSTANCE = new DocumentDataParser();
    private static final JsonReader.Options NAMES = JsonReader.Options.of("t", "f", "s", "j", "tr", "lh", "ls", "fc", "sc", "sw", "of");

    private DocumentDataParser() {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.geely.livewallpager.lotties.parser.ValueParser
    public DocumentData parse(JsonReader reader, float scale) throws IOException {
        DocumentData.Justification justification = DocumentData.Justification.CENTER;
        reader.beginObject();
        DocumentData.Justification justification2 = justification;
        String strNextString = null;
        String strNextString2 = null;
        int iNextInt = 0;
        int iJsonToColor = 0;
        int iJsonToColor2 = 0;
        float fNextDouble = 0.0f;
        float fNextDouble2 = 0.0f;
        float fNextDouble3 = 0.0f;
        float fNextDouble4 = 0.0f;
        boolean zNextBoolean = true;
        while (reader.hasNext()) {
            switch (reader.selectName(NAMES)) {
                case 0:
                    strNextString = reader.nextString();
                    break;
                case 1:
                    strNextString2 = reader.nextString();
                    break;
                case 2:
                    fNextDouble = (float) reader.nextDouble();
                    break;
                case 3:
                    int iNextInt2 = reader.nextInt();
                    if (iNextInt2 > DocumentData.Justification.CENTER.ordinal() || iNextInt2 < 0) {
                        justification2 = DocumentData.Justification.CENTER;
                        break;
                    } else {
                        justification2 = DocumentData.Justification.values()[iNextInt2];
                        break;
                    }
                case 4:
                    iNextInt = reader.nextInt();
                    break;
                case 5:
                    fNextDouble2 = (float) reader.nextDouble();
                    break;
                case 6:
                    fNextDouble3 = (float) reader.nextDouble();
                    break;
                case 7:
                    iJsonToColor = JsonUtils.jsonToColor(reader);
                    break;
                case 8:
                    iJsonToColor2 = JsonUtils.jsonToColor(reader);
                    break;
                case 9:
                    fNextDouble4 = (float) reader.nextDouble();
                    break;
                case 10:
                    zNextBoolean = reader.nextBoolean();
                    break;
                default:
                    reader.skipName();
                    reader.skipValue();
                    break;
            }
        }
        reader.endObject();
        return new DocumentData(strNextString, strNextString2, fNextDouble, justification2, iNextInt, fNextDouble2, fNextDouble3, iJsonToColor, iJsonToColor2, fNextDouble4, zNextBoolean);
    }
}
