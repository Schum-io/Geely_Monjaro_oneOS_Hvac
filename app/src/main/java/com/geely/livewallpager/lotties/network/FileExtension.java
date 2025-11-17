package com.geely.livewallpager.lotties.network;

import com.geely.livewallpager.lotties.utils.Logger;

/* loaded from: classes.dex */
public enum FileExtension {
    JSON(".json"),
    ZIP(".zip");

    public final String extension;

    FileExtension(String extension) {
        this.extension = extension;
    }

    public String tempExtension() {
        return ".temp" + this.extension;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.extension;
    }

    public static FileExtension forFile(String filename) {
        for (FileExtension fileExtension : values()) {
            if (filename.endsWith(fileExtension.extension)) {
                return fileExtension;
            }
        }
        Logger.warning("Unable to find correct extension for " + filename);
        return JSON;
    }
}
