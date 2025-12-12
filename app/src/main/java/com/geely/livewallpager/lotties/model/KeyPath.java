package com.geely.livewallpager.lotties.model;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public class KeyPath {
    private final List<String> keys;
    private KeyPathElement resolvedElement;

    public KeyPath(String... keys) {
        this.keys = Arrays.asList(keys);
    }

    private KeyPath(KeyPath keyPath) {
        this.keys = new ArrayList(keyPath.keys);
        this.resolvedElement = keyPath.resolvedElement;
    }

    public KeyPath addKey(String key) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.keys.add(key);
        return keyPath;
    }

    public KeyPath resolve(KeyPathElement element) {
        KeyPath keyPath = new KeyPath(this);
        keyPath.resolvedElement = element;
        return keyPath;
    }

    public KeyPathElement getResolvedElement() {
        return this.resolvedElement;
    }

    public boolean matches(String key, int depth) {
        if (isContainer(key)) {
            return true;
        }
        if (depth >= this.keys.size()) {
            return false;
        }
        return this.keys.get(depth).equals(key) || this.keys.get(depth).equals("**") || this.keys.get(depth).equals("*");
    }

    public int incrementDepthBy(String key, int depth) {
        if (isContainer(key)) {
            return 0;
        }
        if (this.keys.get(depth).equals("**")) {
            return (depth != this.keys.size() - 1 && this.keys.get(depth + 1).equals(key)) ? 2 : 0;
        }
        return 1;
    }

    public boolean fullyResolvesTo(String key, int depth) {
        if (depth >= this.keys.size()) {
            return false;
        }
        boolean z = depth == this.keys.size() - 1;
        String str = this.keys.get(depth);
        if (!str.equals("**")) {
            return (z || (depth == this.keys.size() + (-2) && endsWithGlobstar())) && (str.equals(key) || str.equals("*"));
        }
        if (!z && this.keys.get(depth + 1).equals(key)) {
            return depth == this.keys.size() + (-2) || (depth == this.keys.size() + (-3) && endsWithGlobstar());
        }
        if (z) {
            return true;
        }
        int i = depth + 1;
        if (i < this.keys.size() - 1) {
            return false;
        }
        return this.keys.get(i).equals(key);
    }

    public boolean propagateToChildren(String key, int depth) {
        return "__container".equals(key) || depth < this.keys.size() - 1 || this.keys.get(depth).equals("**");
    }

    private boolean isContainer(String key) {
        return "__container".equals(key);
    }

    private boolean endsWithGlobstar() {
        return this.keys.get(this.keys.size() - 1).equals("**");
    }

    public String keysToString() {
        return this.keys.toString();
    }

    public String toString() {
        return "KeyPath{keys=" + this.keys + ",resolved=" + (this.resolvedElement != null) + '}';
    }
}
