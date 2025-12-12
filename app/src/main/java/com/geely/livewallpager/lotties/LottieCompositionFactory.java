package com.geely.livewallpager.lotties;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.geely.livewallpager.lotties.model.LottieCompositionCache;
import com.geely.livewallpager.lotties.network.NetworkCache;
import com.geely.livewallpager.lotties.network.NetworkFetcher;
import com.geely.livewallpager.lotties.parser.LottieCompositionMoshiParser;
import com.geely.livewallpager.lotties.parser.moshi.JsonReader;
import com.geely.livewallpager.lotties.utils.Utils;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.Okio;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LottieCompositionFactory {
    private static final Map<String, LottieTask<LottieComposition>> taskCache = new HashMap();

    private LottieCompositionFactory() {
    }

    public static void setMaxCacheSize(int size) {
        LottieCompositionCache.getInstance().resize(size);
    }

    public static void clearCache(Context context) {
        taskCache.clear();
        LottieCompositionCache.getInstance().clear();
        new NetworkCache(context).clear();
    }

    public static LottieTask<LottieComposition> fromUrl(final Context context, final String url) {
        return fromUrl(context, url, "url_" + url);
    }

    public static LottieTask<LottieComposition> fromUrl(final Context context, final String url, final String cacheKey) {
        return cache(cacheKey, new Callable<LottieResult<LottieComposition>>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return NetworkFetcher.fetchSync(context, url, cacheKey);
            }
        });
    }

    public static LottieResult<LottieComposition> fromUrlSync(Context context, String url) {
        return fromUrlSync(context, url, url);
    }

    public static LottieResult<LottieComposition> fromUrlSync(Context context, String url, String cacheKey) {
        return NetworkFetcher.fetchSync(context, url, cacheKey);
    }

    public static LottieTask<LottieComposition> fromAsset(Context context, final String fileName) {
        return fromAsset(context, fileName, "asset_" + fileName);
    }

    public static LottieTask<LottieComposition> fromAsset(Context context, final String fileName, final String cacheKey) {
        final Context applicationContext = context.getApplicationContext();
        return cache(cacheKey, new Callable<LottieResult<LottieComposition>>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromAssetSync(applicationContext, fileName, cacheKey);
            }
        });
    }

    public static LottieResult<LottieComposition> fromAssetSync(Context context, String fileName) {
        return fromAssetSync(context, fileName, "asset_" + fileName);
    }

    public static LottieResult<LottieComposition> fromAssetSync(Context context, String fileName, String cacheKey) {
        try {
            if (fileName.endsWith(".zip")) {
                return fromZipStreamSync(new ZipInputStream(context.getAssets().open(fileName)), cacheKey);
            }
            return fromJsonInputStreamSync(context.getAssets().open(fileName), cacheKey);
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    public static LottieTask<LottieComposition> fromRawRes(Context context, final int rawRes) {
        return fromRawRes(context, rawRes, rawResCacheKey(context, rawRes));
    }

    public static LottieTask<LottieComposition> fromRawRes(Context context, final int rawRes, String cacheKey) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return cache(cacheKey, new Callable<LottieResult<LottieComposition>>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                Context context2 = (Context) weakReference.get();
                if (context2 == null) {
                    context2 = applicationContext;
                }
                return LottieCompositionFactory.fromRawResSync(context2, rawRes);
            }
        });
    }

    public static LottieResult<LottieComposition> fromRawResSync(Context context, int rawRes) {
        return fromRawResSync(context, rawRes, rawResCacheKey(context, rawRes));
    }

    public static LottieResult<LottieComposition> fromRawResSync(Context context, int rawRes, String cacheKey) {
        try {
            return fromJsonInputStreamSync(context.getResources().openRawResource(rawRes), cacheKey);
        } catch (Resources.NotFoundException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    private static String rawResCacheKey(Context context, int resId) {
        return "rawRes" + (isNightMode(context) ? "_night_" : "_day_") + resId;
    }

    private static boolean isNightMode(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static LottieTask<LottieComposition> fromJsonInputStream(final InputStream stream, final String cacheKey) {
        return cache(cacheKey, new Callable<LottieResult<LottieComposition>>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromJsonInputStreamSync(stream, cacheKey);
            }
        });
    }

    public static LottieResult<LottieComposition> fromJsonInputStreamSync(InputStream stream, String cacheKey) {
        try {
            return fromJsonInputStreamSync(stream, cacheKey, true);
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    private static LottieResult<LottieComposition> fromJsonInputStreamSync(InputStream stream, String cacheKey, boolean close) throws IOException {
        try {
            return fromJsonReaderSync(JsonReader.of(Okio.buffer(Okio.source(stream))), cacheKey);
        } finally {
            if (close) {
                Utils.closeQuietly(stream);
            }
        }
    }

    @Deprecated
    public static LottieTask<LottieComposition> fromJson(final JSONObject json, final String cacheKey) {
        return cache(cacheKey, new Callable<LottieResult<LottieComposition>>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromJsonSync(json, cacheKey);
            }
        });
    }

    @Deprecated
    public static LottieResult<LottieComposition> fromJsonSync(JSONObject json, String cacheKey) {
        return fromJsonStringSync(json.toString(), cacheKey);
    }

    public static LottieTask<LottieComposition> fromJsonString(final String json, final String cacheKey) {
        return cache(cacheKey, new Callable<LottieResult<LottieComposition>>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromJsonStringSync(json, cacheKey);
            }
        });
    }

    public static LottieResult<LottieComposition> fromJsonStringSync(String json, String cacheKey) {
        return fromJsonReaderSync(JsonReader.of(Okio.buffer(Okio.source(new ByteArrayInputStream(json.getBytes())))), cacheKey);
    }

    public static LottieTask<LottieComposition> fromJsonReader(final JsonReader reader, final String cacheKey) {
        return cache(cacheKey, new Callable<LottieResult<LottieComposition>>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromJsonReaderSync(reader, cacheKey);
            }
        });
    }

    public static LottieResult<LottieComposition> fromJsonReaderSync(JsonReader reader, String cacheKey) {
        try {
            return fromJsonReaderSyncInternal(reader, cacheKey, true);
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    private static LottieResult<LottieComposition> fromJsonReaderSyncInternal(JsonReader reader, String cacheKey, boolean close) throws IOException {
        try {
            try {
                LottieComposition lottieComposition = LottieCompositionMoshiParser.parse(reader);
                if (cacheKey != null) {
                    LottieCompositionCache.getInstance().put(cacheKey, lottieComposition);
                }
                LottieResult<LottieComposition> lottieResult = new LottieResult<>(lottieComposition);
                if (close) {
                    Utils.closeQuietly(reader);
                }
                return lottieResult;
            } catch (Exception e) {
                LottieResult<LottieComposition> lottieResult2 = new LottieResult<>(e);
                if (close) {
                    Utils.closeQuietly(reader);
                }
                return lottieResult2;
            }
        } catch (Throwable th) {
            if (close) {
                Utils.closeQuietly(reader);
            }
            throw th;
        }
    }

    public static LottieTask<LottieComposition> fromZipStream(final ZipInputStream inputStream, final String cacheKey) {
        return cache(cacheKey, new Callable<LottieResult<LottieComposition>>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            public LottieResult<LottieComposition> call() {
                return LottieCompositionFactory.fromZipStreamSync(inputStream, cacheKey);
            }
        });
    }

    public static LottieResult<LottieComposition> fromZipStreamSync(ZipInputStream inputStream, String cacheKey) {
        try {
            return fromZipStreamSyncInternal(inputStream, cacheKey);
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        } finally {
            Utils.closeQuietly(inputStream);
        }
    }

    private static LottieResult<LottieComposition> fromZipStreamSyncInternal(ZipInputStream inputStream, String cacheKey) throws IOException {
        Map<String, Bitmap> map = new HashMap<>();
        try {
            ZipEntry nextEntry = inputStream.getNextEntry();
            LottieComposition value = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (name.contains("__MACOSX")) {
                    inputStream.closeEntry();
                } else if (nextEntry.getName().contains(".json")) {
                    value = fromJsonReaderSyncInternal(JsonReader.of(Okio.buffer(Okio.source(inputStream))), null, false).getValue();
                } else if (name.contains(".png") || name.contains(".webp")) {
                    String[] splits = name.split("/");
                    map.put(splits[splits.length - 1], BitmapFactory.decodeStream(inputStream));
                } else {
                    inputStream.closeEntry();
                }
                nextEntry = inputStream.getNextEntry();
            }
            if (value == null) {
                return new LottieResult<>((Throwable) new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry<String, Bitmap> entry : map.entrySet()) {
                LottieImageAsset lottieImageAssetFindImageAssetForFileName = findImageAssetForFileName(value, (String) entry.getKey());
                if (lottieImageAssetFindImageAssetForFileName != null) {
                    lottieImageAssetFindImageAssetForFileName.setBitmap(Utils.resizeBitmapIfNeeded((Bitmap) entry.getValue(), lottieImageAssetFindImageAssetForFileName.getWidth(), lottieImageAssetFindImageAssetForFileName.getHeight()));
                }
            }
            for (Map.Entry<String, LottieImageAsset> entry2 : value.getImages().entrySet()) {
                if (entry2.getValue().getBitmap() == null) {
                    return new LottieResult<>((Throwable) new IllegalStateException("There is no image for " + entry2.getValue().getFileName()));
                }
            }
            if (cacheKey != null) {
                LottieCompositionCache.getInstance().put(cacheKey, value);
            }
            return new LottieResult<>(value);
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    private static LottieImageAsset findImageAssetForFileName(LottieComposition composition, String fileName) {
        for (LottieImageAsset lottieImageAsset : composition.getImages().values()) {
            if (lottieImageAsset.getFileName().equals(fileName)) {
                return lottieImageAsset;
            }
        }
        return null;
    }

    private static LottieTask<LottieComposition> cache(final String cacheKey, Callable<LottieResult<LottieComposition>> callable) {
        final LottieComposition lottieComposition = cacheKey == null ? null : LottieCompositionCache.getInstance().get(cacheKey);
        if (lottieComposition != null) {
            return new LottieTask<>(new Callable<LottieResult<LottieComposition>>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.9
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // java.util.concurrent.Callable
                public LottieResult<LottieComposition> call() {
                    return new LottieResult<>(lottieComposition);
                }
            });
        }
        if (cacheKey != null) {
            Map<String, LottieTask<LottieComposition>> map = taskCache;
            if (map.containsKey(cacheKey)) {
                return map.get(cacheKey);
            }
        }
        LottieTask<LottieComposition> lottieTask = new LottieTask<>(callable);
        if (cacheKey != null) {
            lottieTask.addListener(new LottieListener<LottieComposition>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.10
                @Override // com.geely.livewallpager.lotties.LottieListener
                public void onResult(LottieComposition result) {
                    LottieCompositionFactory.taskCache.remove(cacheKey);
                }
            });
            lottieTask.addFailureListener(new LottieListener<Throwable>() { // from class: com.geely.livewallpager.lotties.LottieCompositionFactory.11
                @Override // com.geely.livewallpager.lotties.LottieListener
                public void onResult(Throwable result) {
                    LottieCompositionFactory.taskCache.remove(cacheKey);
                }
            });
            taskCache.put(cacheKey, lottieTask);
        }
        return lottieTask;
    }
}
