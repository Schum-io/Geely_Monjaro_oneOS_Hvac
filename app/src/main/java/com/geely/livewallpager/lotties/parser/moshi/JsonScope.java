package com.geely.livewallpager.lotties.parser.moshi;

/* loaded from: classes.dex */
final class JsonScope {
    static final int CLOSED = 8;
    static final int DANGLING_NAME = 4;
    static final int EMPTY_ARRAY = 1;
    static final int EMPTY_DOCUMENT = 6;
    static final int EMPTY_OBJECT = 3;
    static final int NONEMPTY_ARRAY = 2;
    static final int NONEMPTY_DOCUMENT = 7;
    static final int NONEMPTY_OBJECT = 5;

    private JsonScope() {
    }

    static String getPath(int stackSize, int[] stack, String[] pathNames, int[] pathIndices) {
        StringBuilder sbAppend = new StringBuilder().append('$');
        for (int i = 0; i < stackSize; i++) {
            int i2 = stack[i];
            if (i2 == 1 || i2 == 2) {
                sbAppend.append('[').append(pathIndices[i]).append(']');
            } else if (i2 == 3 || i2 == 4 || i2 == 5) {
                sbAppend.append('.');
                if (pathNames[i] != null) {
                    sbAppend.append(pathNames[i]);
                }
            }
        }
        return sbAppend.toString();
    }
}
