package com.geely.livewallpager.lotties.network;

import android.content.Context;
import androidx.core.util.Pair;
import com.geely.livewallpager.lotties.LottieComposition;
import com.geely.livewallpager.lotties.LottieCompositionFactory;
import com.geely.livewallpager.lotties.LottieResult;
import com.geely.livewallpager.lotties.utils.Logger;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.ZipInputStream;

/* loaded from: classes.dex */
public class NetworkFetcher {
    private final Context appContext;
    private final NetworkCache networkCache;
    private final String url;

    public static LottieResult<LottieComposition> fetchSync(Context context, String url, String cacheKey) {
        try {
            return new NetworkFetcher(context, url, cacheKey).fetchSync();
        } catch (IOException e) {
            return new LottieResult<>(e);
        }
    }

    private NetworkFetcher(Context context, String url, String cacheKey) {
        Context applicationContext = context.getApplicationContext();
        this.appContext = applicationContext;
        this.url = url;
        if (cacheKey == null) {
            this.networkCache = null;
        } else {
            this.networkCache = new NetworkCache(applicationContext);
        }
    }

    public LottieResult<LottieComposition> fetchSync() throws IOException {
        LottieComposition lottieCompositionFetchFromCache = fetchFromCache();
        if (lottieCompositionFetchFromCache != null) {
            return new LottieResult<>(lottieCompositionFetchFromCache);
        }
        Logger.debug("Animation for " + this.url + " not found in cache. Fetching from network.");
        return fetchFromNetwork();
    }

    private LottieComposition fetchFromCache() throws IOException {
        Pair<FileExtension, InputStream> pairFetch;
        LottieResult<LottieComposition> lottieResultFromJsonInputStreamSync;
        NetworkCache networkCache = this.networkCache;
        if (networkCache == null || (pairFetch = networkCache.fetch(this.url)) == null) {
            return null;
        }
        FileExtension fileExtension = pairFetch.first;
        InputStream inputStream = pairFetch.second;
        if (fileExtension == FileExtension.ZIP) {
            lottieResultFromJsonInputStreamSync = LottieCompositionFactory.fromZipStreamSync(new ZipInputStream(inputStream), this.url);
        } else {
            lottieResultFromJsonInputStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(inputStream, this.url);
        }
        if (lottieResultFromJsonInputStreamSync.getValue() != null) {
            return lottieResultFromJsonInputStreamSync.getValue();
        }
        return null;
    }

    private LottieResult<LottieComposition> fetchFromNetwork() {
        try {
            return fetchFromNetworkInternal();
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    private LottieResult<LottieComposition> fetchFromNetworkInternal() throws IOException {
        Logger.debug("Fetching " + this.url);
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(this.url).openConnection();
        httpURLConnection.setRequestMethod("GET");
        try {
            httpURLConnection.connect();
            if (httpURLConnection.getErrorStream() == null && httpURLConnection.getResponseCode() == 200) {
                LottieResult<LottieComposition> resultFromConnection = getResultFromConnection(httpURLConnection);
                Logger.debug("Completed fetch from network. Success: " + (resultFromConnection.getValue() != null));
                return resultFromConnection;
            }
            return new LottieResult<>((Throwable) new IllegalArgumentException("Unable to fetch " + this.url + ". Failed with " + httpURLConnection.getResponseCode() + "\n" + getErrorFromConnection(httpURLConnection)));
        } catch (Exception e) {
            return new LottieResult<>((Throwable) e);
        } finally {
            httpURLConnection.disconnect();
        }
    }

    private String getErrorFromConnection(HttpURLConnection connection) throws IOException {
        connection.getResponseCode();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(connection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String line = bufferedReader.readLine();
                    if (line != null) {
                        sb.append(line).append('\n');
                    } else {
                        try {
                            break;
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception e) {
                    throw e;
                }
            } finally {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
            }
        }
        return sb.toString();
    }

    private LottieResult<LottieComposition> getResultFromConnection(HttpURLConnection connection) throws IOException {
        FileExtension fileExtension;
        LottieResult<LottieComposition> lottieResultFromJsonInputStreamSync;
        String contentType = connection.getContentType();
        if (contentType == null) {
            contentType = "application/json";
        }
        if (contentType.contains("application/zip")) {
            Logger.debug("Handling zip response.");
            fileExtension = FileExtension.ZIP;
            NetworkCache networkCache = this.networkCache;
            if (networkCache == null) {
                lottieResultFromJsonInputStreamSync = LottieCompositionFactory.fromZipStreamSync(new ZipInputStream(connection.getInputStream()), null);
            } else {
                lottieResultFromJsonInputStreamSync = LottieCompositionFactory.fromZipStreamSync(new ZipInputStream(new FileInputStream(networkCache.writeTempCacheFile(this.url, connection.getInputStream(), fileExtension))), this.url);
            }
        } else {
            Logger.debug("Received json response.");
            fileExtension = FileExtension.JSON;
            NetworkCache networkCache2 = this.networkCache;
            if (networkCache2 == null) {
                lottieResultFromJsonInputStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(connection.getInputStream(), null);
            } else {
                lottieResultFromJsonInputStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(new FileInputStream(new File(networkCache2.writeTempCacheFile(this.url, connection.getInputStream(), fileExtension).getAbsolutePath())), this.url);
            }
        }
        if (this.networkCache != null && lottieResultFromJsonInputStreamSync.getValue() != null) {
            this.networkCache.renameTempFile(this.url, fileExtension);
        }
        return lottieResultFromJsonInputStreamSync;
    }
}
