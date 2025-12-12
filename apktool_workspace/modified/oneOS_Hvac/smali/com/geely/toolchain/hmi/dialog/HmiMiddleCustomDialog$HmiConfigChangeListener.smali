.class public interface abstract Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiConfigChangeListener;
.super Ljava/lang/Object;
.source "HmiMiddleCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HmiConfigChangeListener"
.end annotation


# virtual methods
.method public abstract onConfigChange(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;Landroid/content/res/Configuration;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "newConfig"
        }
    .end annotation
.end method
