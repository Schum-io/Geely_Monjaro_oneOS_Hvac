.class public interface abstract Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;
.super Ljava/lang/Object;
.source "HmiAddWlanDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HmiTextChangedListener"
.end annotation


# virtual methods
.method public abstract afterTextChanged(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;Lcom/geely/toolchain/hmi/view/HmiEditText;Landroid/text/Editable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "passwordEdittext",
            "s"
        }
    .end annotation
.end method

.method public abstract beforeTextChanged(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;Lcom/geely/toolchain/hmi/view/HmiEditText;Ljava/lang/CharSequence;III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "passwordEdittext",
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation
.end method

.method public abstract onTextChanged(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;Lcom/geely/toolchain/hmi/view/HmiEditText;Ljava/lang/CharSequence;III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dialog",
            "passwordEdittext",
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation
.end method
