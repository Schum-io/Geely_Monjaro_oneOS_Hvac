.class public interface abstract Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$HmiSelectListener;
.super Ljava/lang/Object;
.source "HmiHasCheckBoxDoubleButtonDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HmiSelectListener"
.end annotation


# virtual methods
.method public abstract leftAction(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;Z)V
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

.method public abstract rightAction(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;Z)V
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
