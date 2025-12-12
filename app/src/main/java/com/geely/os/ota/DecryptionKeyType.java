package com.geely.os.ota;

/* loaded from: classes.dex */
public class DecryptionKeyType {
    private String hashRoot;
    private String key;

    public String getHashRoot() {
        return this.hashRoot;
    }

    public void setHashRoot(String hashRoot) {
        this.hashRoot = hashRoot;
    }

    public String getKey() {
        return this.key;
    }

    public void setKey(String key) {
        this.key = key;
    }

    public String toString() {
        return "DecryptionKeyType{hashRoot='" + this.hashRoot + "', key='" + this.key + "'}";
    }
}
