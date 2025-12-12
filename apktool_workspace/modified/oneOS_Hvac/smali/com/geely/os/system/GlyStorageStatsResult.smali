.class public Lcom/geely/os/system/GlyStorageStatsResult;
.super Ljava/lang/Object;
.source "GlyStorageStatsResult.java"


# instance fields
.field mApkBytes:J

.field mAppBytes:J

.field mAudioBytes:J

.field mDocumentBytes:J

.field mFreeBytes:J

.field mImageBytes:J

.field mSystemBytes:J

.field mTotalBytes:J

.field mVideoBytes:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mTotalBytes:J

    .line 11
    iput-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mFreeBytes:J

    .line 14
    iput-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mSystemBytes:J

    .line 17
    iput-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mAppBytes:J

    .line 20
    iput-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mImageBytes:J

    .line 23
    iput-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mAudioBytes:J

    .line 26
    iput-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mVideoBytes:J

    .line 29
    iput-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mDocumentBytes:J

    .line 32
    iput-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mApkBytes:J

    return-void
.end method


# virtual methods
.method public getApkBytes()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mApkBytes:J

    return-wide v0
.end method

.method public getAppBytes()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mAppBytes:J

    return-wide v0
.end method

.method public getAudioBytes()J
    .locals 2

    .line 55
    iget-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mAudioBytes:J

    return-wide v0
.end method

.method public getDocumentBytes()J
    .locals 2

    .line 63
    iget-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mDocumentBytes:J

    return-wide v0
.end method

.method public getFreeBytes()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mFreeBytes:J

    return-wide v0
.end method

.method public getImageBytes()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mImageBytes:J

    return-wide v0
.end method

.method public getOtherBytes()J
    .locals 5

    .line 71
    iget-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mTotalBytes:J

    iget-wide v2, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mFreeBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mSystemBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mAppBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mImageBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mAudioBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mVideoBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mDocumentBytes:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mApkBytes:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    return-wide v0
.end method

.method public getSystemBytes()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mSystemBytes:J

    return-wide v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mTotalBytes:J

    return-wide v0
.end method

.method public getVideoBytes()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mVideoBytes:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GlyStorageStatsResult{mTotalBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mTotalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFreeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mFreeBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSystemBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mSystemBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAppBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mAppBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mImageBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAudioBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mAudioBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mVideoBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mVideoBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDocumentBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mDocumentBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mApkBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/geely/os/system/GlyStorageStatsResult;->mApkBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
