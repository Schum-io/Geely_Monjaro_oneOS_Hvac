package com.geely.livewallpager.lotties.parser;

import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.model.animatable.AnimatableFloatValue;
import com.geely.livewallpager.lotties.model.animatable.AnimatableTransform;
import com.geely.livewallpager.lotties.model.content.Repeater;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import java.io.IOException;

/* loaded from: classes.dex */
class RepeaterParser {
    private static JsonReader.Options NAMES = JsonReader.Options.of("nm", "c", "o", "tr", "hd");

    private RepeaterParser() {
    }

    /* JADX WARN: Failed to analyze thrown exceptions
    java.util.ConcurrentModificationException
    	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1096)
    	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1050)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:118)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:69)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.checkInsn(MethodThrowsVisitor.java:179)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.processInstructions(MethodThrowsVisitor.java:132)
    	at jadx.core.dex.visitors.MethodThrowsVisitor.visit(MethodThrowsVisitor.java:69)
     */
    static Repeater parse(JsonReader reader, LottieComposition composition) throws IOException {
        boolean zNextBoolean = false;
        String strNextString = null;
        AnimatableFloatValue animatableFloatValue = null;
        AnimatableFloatValue animatableFloatValue2 = null;
        AnimatableTransform animatableTransform = null;
        while (reader.hasNext()) {
            int iSelectName = reader.selectName(NAMES);
            if (iSelectName == 0) {
                strNextString = reader.nextString();
            } else if (iSelectName == 1) {
                animatableFloatValue = AnimatableValueParser.parseFloat(reader, composition, false);
            } else if (iSelectName == 2) {
                animatableFloatValue2 = AnimatableValueParser.parseFloat(reader, composition, false);
            } else if (iSelectName == 3) {
                animatableTransform = AnimatableTransformParser.parse(reader, composition);
            } else if (iSelectName == 4) {
                zNextBoolean = reader.nextBoolean();
            } else {
                reader.skipValue();
            }
        }
        return new Repeater(strNextString, animatableFloatValue, animatableFloatValue2, animatableTransform, zNextBoolean);
    }
}
