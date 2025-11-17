package com.geely.livewallpager.lotties.manager;

import android.content.res.AssetManager;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.geely.livewallpager.lotties.FontAssetDelegate;
import com.geely.livewallpager.lotties.model.MutablePair;
import com.geely.livewallpager.lotties.utils.Logger;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class FontAssetManager {
    private final AssetManager assetManager;
    private FontAssetDelegate delegate;
    private final MutablePair<String> tempPair = new MutablePair<>();
    private final Map<MutablePair<String>, Typeface> fontMap = new HashMap();
    private final Map<String, Typeface> fontFamilies = new HashMap();
    private String defaultFontFileExtension = ".ttf";

    public FontAssetManager(Drawable.Callback callback, FontAssetDelegate delegate) {
        this.delegate = delegate;
        if (!(callback instanceof View)) {
            Logger.warning("LottieDrawable must be inside of a view for images to work.");
            this.assetManager = null;
        } else {
            this.assetManager = ((View) callback).getContext().getAssets();
        }
    }

    public void setDelegate(FontAssetDelegate assetDelegate) {
        this.delegate = assetDelegate;
    }

    public void setDefaultFontFileExtension(String defaultFontFileExtension) {
        this.defaultFontFileExtension = defaultFontFileExtension;
    }

    public Typeface getTypeface(String fontFamily, String style) {
        this.tempPair.set(fontFamily, style);
        Typeface typeface = this.fontMap.get(this.tempPair);
        if (typeface != null) {
            return typeface;
        }
        Typeface typefaceTypefaceForStyle = typefaceForStyle(getFontFamily(fontFamily), style);
        this.fontMap.put(this.tempPair, typefaceTypefaceForStyle);
        return typefaceTypefaceForStyle;
    }

    private Typeface getFontFamily(String fontFamily) {
        String fontPath;
        Typeface typeface = this.fontFamilies.get(fontFamily);
        if (typeface != null) {
            return typeface;
        }
        FontAssetDelegate fontAssetDelegate = this.delegate;
        Typeface typefaceFetchFont = fontAssetDelegate != null ? fontAssetDelegate.fetchFont(fontFamily) : null;
        FontAssetDelegate fontAssetDelegate2 = this.delegate;
        if (fontAssetDelegate2 != null && typefaceFetchFont == null && (fontPath = fontAssetDelegate2.getFontPath(fontFamily)) != null) {
            typefaceFetchFont = Typeface.createFromAsset(this.assetManager, fontPath);
        }
        if (typefaceFetchFont == null) {
            typefaceFetchFont = Typeface.createFromAsset(this.assetManager, "fonts/" + fontFamily + this.defaultFontFileExtension);
        }
        this.fontFamilies.put(fontFamily, typefaceFetchFont);
        return typefaceFetchFont;
    }

    private Typeface typefaceForStyle(Typeface typeface, String style) {
        boolean zContains = style.contains("Italic");
        boolean zContains2 = style.contains("Bold");
        int i = (zContains && zContains2) ? 3 : zContains ? 2 : zContains2 ? 1 : 0;
        return typeface.getStyle() == i ? typeface : Typeface.create(typeface, i);
    }
}
