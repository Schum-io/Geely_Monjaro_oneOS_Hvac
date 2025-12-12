package com.geely.os.system;

/* loaded from: classes.dex */
public class GlyStorageStatsResult {
    long mTotalBytes = 0;
    long mFreeBytes = 0;
    long mSystemBytes = 0;
    long mAppBytes = 0;
    long mImageBytes = 0;
    long mAudioBytes = 0;
    long mVideoBytes = 0;
    long mDocumentBytes = 0;
    long mApkBytes = 0;

    public long getTotalBytes() {
        return this.mTotalBytes;
    }

    public long getFreeBytes() {
        return this.mFreeBytes;
    }

    public long getSystemBytes() {
        return this.mSystemBytes;
    }

    public long getAppBytes() {
        return this.mAppBytes;
    }

    public long getImageBytes() {
        return this.mImageBytes;
    }

    public long getAudioBytes() {
        return this.mAudioBytes;
    }

    public long getVideoBytes() {
        return this.mVideoBytes;
    }

    public long getDocumentBytes() {
        return this.mDocumentBytes;
    }

    public long getApkBytes() {
        return this.mApkBytes;
    }

    public long getOtherBytes() {
        long j = (((((((this.mTotalBytes - this.mFreeBytes) - this.mSystemBytes) - this.mAppBytes) - this.mImageBytes) - this.mAudioBytes) - this.mVideoBytes) - this.mDocumentBytes) - this.mApkBytes;
        if (j < 0) {
            return 0L;
        }
        return j;
    }

    public String toString() {
        return "GlyStorageStatsResult{mTotalBytes=" + this.mTotalBytes + ", mFreeBytes=" + this.mFreeBytes + ", mSystemBytes=" + this.mSystemBytes + ", mAppBytes=" + this.mAppBytes + ", mImageBytes=" + this.mImageBytes + ", mAudioBytes=" + this.mAudioBytes + ", mVideoBytes=" + this.mVideoBytes + ", mDocumentBytes=" + this.mDocumentBytes + ", mApkBytes=" + this.mApkBytes + '}';
    }
}
