package com.geely.livewallpager.lotties.utils;

/* loaded from: classes.dex */
public class GammaEvaluator {
    private static float OECF_sRGB(float linear) {
        return linear <= 0.0031308f ? linear * 12.92f : (float) ((Math.pow(linear, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    private static float EOCF_sRGB(float srgb) {
        return srgb <= 0.04045f ? srgb / 12.92f : (float) Math.pow((srgb + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    public static int evaluate(float fraction, int startInt, int endInt) {
        if (startInt == endInt) {
            return startInt;
        }
        float f = ((startInt >> 24) & 255) / 255.0f;
        float fEOCF_sRGB = EOCF_sRGB(((startInt >> 16) & 255) / 255.0f);
        float fEOCF_sRGB2 = EOCF_sRGB(((startInt >> 8) & 255) / 255.0f);
        float fEOCF_sRGB3 = EOCF_sRGB((startInt & 255) / 255.0f);
        float fEOCF_sRGB4 = EOCF_sRGB(((endInt >> 16) & 255) / 255.0f);
        float f2 = f + (((((endInt >> 24) & 255) / 255.0f) - f) * fraction);
        float fEOCF_sRGB5 = fEOCF_sRGB2 + ((EOCF_sRGB(((endInt >> 8) & 255) / 255.0f) - fEOCF_sRGB2) * fraction);
        float fEOCF_sRGB6 = fEOCF_sRGB3 + (fraction * (EOCF_sRGB((endInt & 255) / 255.0f) - fEOCF_sRGB3));
        return (Math.round(OECF_sRGB(fEOCF_sRGB + ((fEOCF_sRGB4 - fEOCF_sRGB) * fraction)) * 255.0f) << 16) | (Math.round(f2 * 255.0f) << 24) | (Math.round(OECF_sRGB(fEOCF_sRGB5) * 255.0f) << 8) | Math.round(OECF_sRGB(fEOCF_sRGB6) * 255.0f);
    }
}
