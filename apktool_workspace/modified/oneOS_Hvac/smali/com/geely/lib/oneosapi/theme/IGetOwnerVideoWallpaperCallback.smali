.class public interface abstract Lcom/geely/lib/oneosapi/theme/IGetOwnerVideoWallpaperCallback;
.super Ljava/lang/Object;
.source "IGetOwnerVideoWallpaperCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/theme/IGetOwnerVideoWallpaperCallback$Stub;,
        Lcom/geely/lib/oneosapi/theme/IGetOwnerVideoWallpaperCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract getOwnerVideoWallpaperCallback(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
