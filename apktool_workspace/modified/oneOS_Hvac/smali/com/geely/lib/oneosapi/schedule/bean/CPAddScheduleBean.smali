.class public Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;
.super Ljava/lang/Object;
.source "CPAddScheduleBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private content:Ljava/lang/String;

.field private endTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

.field private location:Ljava/lang/String;

.field private repeatInfo:Ljava/lang/String;

.field private repeatType:Ljava/lang/String;

.field private startTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$1;

    invoke-direct {v0}, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$1;-><init>()V

    sput-object v0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->content:Ljava/lang/String;

    .line 10
    const-class v0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->startTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    .line 11
    const-class v0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->endTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatType:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "content",
            "startTime",
            "endTime",
            "repeatType",
            "repeatInfo"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->content:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->startTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    .line 5
    iput-object p3, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->endTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    .line 6
    iput-object p4, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatType:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->endTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getRepeatType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatType:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->startTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->content:Ljava/lang/String;

    .line 2
    const-class v0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->startTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    .line 3
    const-class v0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->endTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatType:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatInfo:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->endTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->location:Ljava/lang/String;

    return-void
.end method

.method public setRepeatInfo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatInfo:Ljava/lang/String;

    return-void
.end method

.method public setRepeatType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatType:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->startTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPAddScheduleBean{content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->startTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", endTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->endTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", repeatType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", repeatInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
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

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->startTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->endTime:Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean$TimeInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4
    iget-object p2, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/geely/lib/oneosapi/schedule/bean/CPAddScheduleBean;->repeatInfo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
