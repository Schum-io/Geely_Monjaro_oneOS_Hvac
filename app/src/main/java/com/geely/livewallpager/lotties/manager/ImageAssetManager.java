package com.geely.livewallpager.lotties.manager;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Base64;
import android.view.View;
import com.geely.livewallpager.lotties.ImageAssetDelegate;
import com.geely.livewallpager.lotties.LottieImageAsset;
import com.geely.livewallpager.lotties.utils.Logger;
import com.geely.livewallpager.lotties.utils.Utils;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public class ImageAssetManager {
    private static final Object bitmapHashLock = new Object();
    private final Context context;
    private ImageAssetDelegate delegate;
    private final Map<String, LottieImageAsset> imageAssets;
    private String imagesFolder;

    public ImageAssetManager(Drawable.Callback callback, String imagesFolder, ImageAssetDelegate delegate, Map<String, LottieImageAsset> imageAssets) {
        this.imagesFolder = imagesFolder;
        if (!TextUtils.isEmpty(imagesFolder)) {
            if (this.imagesFolder.charAt(this.imagesFolder.length() - 1) != '/') {
                this.imagesFolder += '/';
            }
        }
        if (!(callback instanceof View)) {
            Logger.warning("LottieDrawable must be inside of a view for images to work.");
            this.imageAssets = new HashMap();
            this.context = null;
        } else {
            this.context = ((View) callback).getContext();
            this.imageAssets = imageAssets;
            setDelegate(delegate);
        }
    }

    public void setDelegate(ImageAssetDelegate assetDelegate) {
        this.delegate = assetDelegate;
    }

    public Bitmap updateBitmap(String id, Bitmap bitmap) {
        if (bitmap == null) {
            LottieImageAsset lottieImageAsset = this.imageAssets.get(id);
            Bitmap bitmap2 = lottieImageAsset.getBitmap();
            lottieImageAsset.setBitmap(null);
            return bitmap2;
        }
        Bitmap bitmap3 = this.imageAssets.get(id).getBitmap();
        putBitmap(id, bitmap);
        return bitmap3;
    }

    public Bitmap bitmapForId(String id) {
        LottieImageAsset lottieImageAsset = this.imageAssets.get(id);
        if (lottieImageAsset == null) {
            return null;
        }
        Bitmap bitmap = lottieImageAsset.getBitmap();
        if (bitmap != null && !bitmap.isRecycled()) {
            return bitmap;
        }
        ImageAssetDelegate imageAssetDelegate = this.delegate;
        if (imageAssetDelegate != null) {
            Bitmap bitmapFetchBitmap = imageAssetDelegate.fetchBitmap(lottieImageAsset);
            if (bitmapFetchBitmap != null) {
                putBitmap(id, bitmapFetchBitmap);
            }
            return bitmapFetchBitmap;
        }
        String fileName = lottieImageAsset.getFileName();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inScaled = true;
        options.inDensity = 160;
        if (fileName.startsWith("data:") && fileName.indexOf("base64,") > 0) {
            try {
                byte[] bArrDecode = Base64.decode(fileName.substring(fileName.indexOf(44) + 1), 0);
                return putBitmap(id, BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
            } catch (IllegalArgumentException e) {
                Logger.warning("data URL did not have correct base64 format.", e);
                return null;
            }
        }
        try {
            if (TextUtils.isEmpty(this.imagesFolder)) {
                throw new IllegalStateException("You must set an images folder before loading an image. Set it with LottieComposition#setImagesFolder or LottieDrawable#setImagesFolder");
            }
            return putBitmap(id, Utils.resizeBitmapIfNeeded(BitmapFactory.decodeStream(this.context.getAssets().open(this.imagesFolder + fileName), null, options), lottieImageAsset.getWidth(), lottieImageAsset.getHeight()));
        } catch (IOException e2) {
            Logger.warning("Unable to open asset.", e2);
            return null;
        }
    }

    public boolean hasSameContext(Context context) {
        return (context == null && this.context == null) || this.context.equals(context);
    }

    public void clearImageAssetBitmap() {
        this.imageAssets.forEach(new BiConsumer() { // from class: com.geely.livewallpager.lotties.manager.-$$Lambda$ImageAssetManager$y-9yn79QvvwSIlmavu03nwOKUYo
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ImageAssetManager.lambda$clearImageAssetBitmap$0((String) obj, (LottieImageAsset) obj2);
            }
        });
    }

    static /* synthetic */ void lambda$clearImageAssetBitmap$0(String str, LottieImageAsset lottieImageAsset) {
        Bitmap bitmap = lottieImageAsset.getBitmap();
        if (bitmap != null && !bitmap.isRecycled()) {
            bitmap.recycle();
        }
        lottieImageAsset.setBitmap(null);
    }

    public void clearCache() {
        clearImageAssetBitmap();
        this.imageAssets.clear();
    }

    private Bitmap putBitmap(String key, Bitmap bitmap) {
        synchronized (bitmapHashLock) {
            this.imageAssets.get(key).setBitmap(bitmap);
        }
        return bitmap;
    }
}
