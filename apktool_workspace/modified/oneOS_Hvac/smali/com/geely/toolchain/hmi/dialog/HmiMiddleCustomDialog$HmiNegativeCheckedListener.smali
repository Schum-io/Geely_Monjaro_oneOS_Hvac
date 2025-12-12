.class public interface abstract Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog$HmiNegativeCheckedListener;
.super Ljava/lang/Object;
.source "HmiMiddleCustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HmiNegativeCheckedListener"
.end annotation


# virtual methods
.method public abstract onNegativeAction(Lcom/geely/toolchain/hmi/dialog/HmiMiddleCustomDialog;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "isChecked"
        }
    .end annotation
.end method
