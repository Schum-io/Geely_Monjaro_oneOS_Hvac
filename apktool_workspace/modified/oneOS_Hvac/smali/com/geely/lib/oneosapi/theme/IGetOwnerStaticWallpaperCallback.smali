.class public interface abstract Lcom/geely/lib/oneosapi/theme/IGetOwnerStaticWallpaperCallback;
.super Ljava/lang/Object;
.source "IGetOwnerStaticWallpaperCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/theme/IGetOwnerStaticWallpaperCallback$Stub;,
        Lcom/geely/lib/oneosapi/theme/IGetOwnerStaticWallpaperCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract getOwnerStaticWallpaperCallback(ILjava/lang/String;)V
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
