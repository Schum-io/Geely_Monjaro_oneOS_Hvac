.class public interface abstract Lcom/geely/os/tbox/IGlyTBoxSettings;
.super Ljava/lang/Object;
.source "IGlyTBoxSettings.java"


# virtual methods
.method public abstract isCarLocatorEnabled()Z
.end method

.method public abstract isCarLocatorSupported()I
.end method

.method public abstract isKeylockEnabled()Z
.end method

.method public abstract isKeylockSupported()I
.end method

.method public abstract isRVDCEnabled()Z
.end method

.method public abstract setCarLocatorCallback(Lcom/geely/os/tbox/IGlyCarLocatorCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setCarLocatorEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setKeylockCallback(Lcom/geely/os/tbox/IGlyKeyLockCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setRVDCStatus(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract unsetCarLocatorCallback(Lcom/geely/os/tbox/IGlyCarLocatorCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unsetKeylockCallback(Lcom/geely/os/tbox/IGlyKeyLockCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
