.class public interface abstract Lcom/geely/lib/oneosapi/launcher/IShotCutsService;
.super Ljava/lang/Object;
.source "IShotCutsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/launcher/IShotCutsService$Stub;,
        Lcom/geely/lib/oneosapi/launcher/IShotCutsService$Default;
    }
.end annotation


# virtual methods
.method public abstract getShortCuts(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/launcher/bean/ShortcutCompat;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
