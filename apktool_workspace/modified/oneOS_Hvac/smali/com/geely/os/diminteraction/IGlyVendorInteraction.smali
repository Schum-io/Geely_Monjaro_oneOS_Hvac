.class public interface abstract Lcom/geely/os/diminteraction/IGlyVendorInteraction;
.super Ljava/lang/Object;
.source "IGlyVendorInteraction.java"


# virtual methods
.method public abstract registerVendorInteractionCallback(Lcom/geely/os/diminteraction/IGlyVendorInteractionCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unRegisterVendorInteractionCallback(Lcom/geely/os/diminteraction/IGlyVendorInteractionCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract updateVendorInformation(Lcom/geely/os/diminteraction/IGlyVendorInformation;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "information"
        }
    .end annotation
.end method
