.class public interface abstract Lcom/geely/os/bt/IGlyPbapExtension;
.super Ljava/lang/Object;
.source "IGlyPbapExtension.java"


# virtual methods
.method public abstract getDecryptContactName(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "encryptedContactName",
            "extArg"
        }
    .end annotation
.end method

.method public abstract getPhoneBookContactsCount()I
.end method

.method public abstract getSyncPhonebookStatus()I
.end method

.method public abstract registerPbapListener(Lcom/geely/os/bt/IGlyPbapListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract syncPhonebook(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract unregisterPbapListener(Lcom/geely/os/bt/IGlyPbapListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
