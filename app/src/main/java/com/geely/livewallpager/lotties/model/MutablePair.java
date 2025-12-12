package com.geely.livewallpager.lotties.model;

import androidx.core.util.Pair;

/* loaded from: classes.dex */
public class MutablePair<T> {
    T first;
    T second;

    public void set(T first, T second) {
        this.first = first;
        this.second = second;
    }

    public boolean equals(Object o) {
        if (!(o instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) o;
        return objectsEqual(pair.first, this.first) && objectsEqual(pair.second, this.second);
    }

    private static boolean objectsEqual(Object a, Object b) {
        return a == b || (a != null && a.equals(b));
    }

    public int hashCode() {
        T t = this.first;
        int iHashCode = t == null ? 0 : t.hashCode();
        T t2 = this.second;
        return iHashCode ^ (t2 != null ? t2.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.first) + " " + String.valueOf(this.second) + "}";
    }
}
