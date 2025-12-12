package com.geely.livewallpager.lotties.network;

import android.content.Context;
import androidx.core.util.Pair;
import com.geely.livewallpager.lotties.utils.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class NetworkCache {
    private final Context appContext;

    public NetworkCache(Context appContext) {
        this.appContext = appContext.getApplicationContext();
    }

    public void clear() {
        File fileParentDir = parentDir();
        if (fileParentDir.exists()) {
            File[] fileArrListFiles = fileParentDir.listFiles();
            if (fileArrListFiles != null && fileArrListFiles.length > 0) {
                for (File file : fileParentDir.listFiles()) {
                    file.delete();
                }
            }
            fileParentDir.delete();
        }
    }

    Pair<FileExtension, InputStream> fetch(String url) {
        FileExtension fileExtension;
        try {
            File cachedFile = getCachedFile(url);
            if (cachedFile == null) {
                return null;
            }
            FileInputStream fileInputStream = new FileInputStream(cachedFile);
            if (cachedFile.getAbsolutePath().endsWith(".zip")) {
                fileExtension = FileExtension.ZIP;
            } else {
                fileExtension = FileExtension.JSON;
            }
            Logger.debug("Cache hit for " + url + " at " + cachedFile.getAbsolutePath());
            return new Pair<>(fileExtension, fileInputStream);
        } catch (FileNotFoundException unused) {
            return null;
        }
    }

    File writeTempCacheFile(String url, InputStream stream, FileExtension extension) throws IOException {
        File file = new File(parentDir(), filenameForUrl(url, extension, true));
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int i = stream.read(bArr);
                    if (i != -1) {
                        fileOutputStream.write(bArr, 0, i);
                    } else {
                        fileOutputStream.flush();
                        return file;
                    }
                }
            } finally {
                fileOutputStream.close();
            }
        } finally {
            stream.close();
        }
    }

    void renameTempFile(String url, FileExtension extension) {
        File file = new File(parentDir(), filenameForUrl(url, extension, true));
        File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
        boolean zRenameTo = file.renameTo(file2);
        Logger.debug("Copying temp file to real file (" + file2 + ")");
        if (zRenameTo) {
            return;
        }
        Logger.warning("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
    }

    private File getCachedFile(String url) throws FileNotFoundException {
        File file = new File(parentDir(), filenameForUrl(url, FileExtension.JSON, false));
        if (file.exists()) {
            return file;
        }
        File file2 = new File(parentDir(), filenameForUrl(url, FileExtension.ZIP, false));
        if (file2.exists()) {
            return file2;
        }
        return null;
    }

    private File parentDir() {
        File file = new File(this.appContext.getCacheDir(), "lottie_network_cache");
        if (file.isFile()) {
            file.delete();
        }
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private static String filenameForUrl(String url, FileExtension extension, boolean isTemp) {
        return "lottie_cache_" + url.replaceAll("\\W+", "") + (isTemp ? extension.tempExtension() : extension.extension);
    }
}
