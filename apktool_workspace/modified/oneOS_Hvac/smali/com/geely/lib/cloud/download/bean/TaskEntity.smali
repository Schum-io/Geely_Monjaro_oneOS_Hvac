.class public Lcom/geely/lib/cloud/download/bean/TaskEntity;
.super Ljava/lang/Object;
.source "TaskEntity.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/cloud/download/bean/TaskEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private downLoadPath:Ljava/lang/String;

.field private downLoadProgress:F

.field private downLoadUrl:Ljava/lang/String;

.field private downloadId:Ljava/lang/String;

.field private downloadName:Ljava/lang/String;

.field private errorCode:I

.field private installProgress:F

.field private taskStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/geely/lib/cloud/download/bean/TaskEntity$1;

    invoke-direct {v0}, Lcom/geely/lib/cloud/download/bean/TaskEntity$1;-><init>()V

    sput-object v0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downloadName:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadUrl:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadPath:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downloadId:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->taskStatus:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadProgress:F

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->installProgress:F

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->errorCode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownLoadPath()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getDownLoadProgress()F
    .locals 1

    .line 134
    iget v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadProgress:F

    return v0
.end method

.method public getDownLoadUrl()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downloadId:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downloadName:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->errorCode:I

    return v0
.end method

.method public getInstallProgress()F
    .locals 1

    .line 142
    iget v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->installProgress:F

    return v0
.end method

.method public getTaskStatus()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->taskStatus:I

    return v0
.end method

.method public setDownLoadPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downLoadPath"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadPath:Ljava/lang/String;

    return-void
.end method

.method public setDownLoadProgress(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downLoadProgress"
        }
    .end annotation

    .line 138
    iput p1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadProgress:F

    return-void
.end method

.method public setDownLoadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downLoadUrl"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadUrl:Ljava/lang/String;

    return-void
.end method

.method public setDownloadId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadId"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downloadId:Ljava/lang/String;

    return-void
.end method

.method public setDownloadName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadName"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downloadName:Ljava/lang/String;

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 154
    iput p1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->errorCode:I

    return-void
.end method

.method public setInstallProgress(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "installProgress"
        }
    .end annotation

    .line 146
    iput p1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->installProgress:F

    return-void
.end method

.method public setTaskStatus(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskStatus"
        }
    .end annotation

    .line 130
    iput p1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->taskStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskEntity{, downloadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downloadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", downLoadUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", downLoadPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", downloadId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", taskStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->taskStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downLoadProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", installProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->installProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 66
    iget-object p2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downloadName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object p2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downloadId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget p2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->taskStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget p2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->downLoadProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 72
    iget p2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->installProgress:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 73
    iget p2, p0, Lcom/geely/lib/cloud/download/bean/TaskEntity;->errorCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
