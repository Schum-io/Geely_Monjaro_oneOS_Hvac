.class public interface abstract Lcom/geely/lib/cloud/filmhall/IFilmHall;
.super Ljava/lang/Object;
.source "IFilmHall.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/cloud/filmhall/IFilmHall$Stub;,
        Lcom/geely/lib/cloud/filmhall/IFilmHall$Default;
    }
.end annotation


# virtual methods
.method public abstract getDailyRecommend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "vipType",
            "passportId",
            "channelList",
            "currentPage",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getRankCharts(Lcom/geely/lib/cloud/ICloudCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
