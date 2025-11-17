.class public interface abstract Lcom/geely/os/bt/IGlyMultiBtPbapExtension;
.super Ljava/lang/Object;
.source "IGlyMultiBtPbapExtension.java"


# virtual methods
.method public abstract getPhoneBookContactsCount(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation
.end method

.method public abstract getSyncPhonebookStatus(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation
.end method

.method public abstract registerMultiPbapListener(Lcom/geely/os/bt/IGlyMultiPbapListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method

.method public abstract syncPhonebook(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "address",
            "type"
        }
    .end annotation
.end method

.method public abstract unregisterMultiPbapListener(Lcom/geely/os/bt/IGlyMultiPbapListener;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation
.end method
