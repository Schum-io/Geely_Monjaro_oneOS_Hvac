.class public interface abstract Lcom/geely/lib/oneosapi/theme/IDressDlCallback;
.super Ljava/lang/Object;
.source "IDressDlCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/theme/IDressDlCallback$Stub;,
        Lcom/geely/lib/oneosapi/theme/IDressDlCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract dlResultCallback(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cardGoodsVoDataJson",
            "taskEntityJson"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
