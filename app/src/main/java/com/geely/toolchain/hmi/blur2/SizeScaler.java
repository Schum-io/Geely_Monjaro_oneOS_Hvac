package com.geely.toolchain.hmi.blur2;

import java.math.BigDecimal;

/* loaded from: classes.dex */
public class SizeScaler {
    private static final int ROUNDING_VALUE = 64;
    private final float scaleFactor;

    public SizeScaler(float scaleFactor) {
        this.scaleFactor = scaleFactor;
    }

    Size scale(int width, int height) {
        float f = width;
        int iRoundSize = roundSize(downscaleSize(f));
        float r4 = f / iRoundSize;
        return new Size(iRoundSize, (int) Math.ceil(height / r4), r4);
    }

    boolean isZeroSized(int measuredWidth, int measuredHeight) {
        return downscaleSize((float) measuredHeight) == 0 || downscaleSize((float) measuredWidth) == 0;
    }

    private int roundSize(int value) {
        int i = value % 64;
        return i == 0 ? value : (value - i) + 64;
    }

    private int downscaleSize(float value) {
        return (int) Math.ceil(value / this.scaleFactor);
    }

    static class Size {
        final int height;
        final float scaleFactor;
        final int width;

        Size(int width, int height, float scaleFactor) {
            this.width = width;
            this.height = height;
            this.scaleFactor = scaleFactor;
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            Size size = (Size) o;
            return this.width == size.width && this.height == size.height && Float.compare(size.scaleFactor, this.scaleFactor) == 0;
        }

        public int hashCode() {
            return (((this.width * 31) + this.height) * 31) + (!BigDecimal.valueOf((double) Math.abs(this.scaleFactor)).equals(new BigDecimal("0.0")) ? Float.floatToIntBits(this.scaleFactor) : 0);
        }

        public String toString() {
            return "Size{width=" + this.width + ", height=" + this.height + ", scaleFactor=" + this.scaleFactor + '}';
        }
    }
}
