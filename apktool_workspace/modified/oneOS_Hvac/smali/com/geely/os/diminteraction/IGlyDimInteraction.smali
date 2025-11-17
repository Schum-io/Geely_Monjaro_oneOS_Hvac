.class public interface abstract Lcom/geely/os/diminteraction/IGlyDimInteraction;
.super Ljava/lang/Object;
.source "IGlyDimInteraction.java"


# virtual methods
.method public abstract getContactsInteraction()Lcom/geely/os/diminteraction/IGlyContactsInteraction;
.end method

.method public abstract getDimMenuInteraction()Lcom/geely/os/diminteraction/IGlyDimMenuInteraction;
.end method

.method public abstract getMediaInteraction()Lcom/geely/os/diminteraction/IGlyMediaInteraction;
.end method

.method public abstract getNaviInteraction()Lcom/geely/os/diminteraction/IGlyNaviInteraction;
.end method

.method public abstract getPhoneCallInteraction()Lcom/geely/os/diminteraction/IGlyPhoneCallInteraction;
.end method

.method public abstract getShowPresentationOption()I
.end method

.method public abstract getSupportedRankingType()I
.end method

.method public abstract getVendorInteraction()Lcom/geely/os/diminteraction/IGlyVendorInteraction;
.end method

.method public abstract getVrInteraction()Lcom/geely/os/diminteraction/IGlyVrInteraction;
.end method

.method public abstract registerInteractionCallback(Lcom/geely/os/diminteraction/IGlyInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setPresentationToDimSwitch(ILjava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "app",
            "pkg",
            "cls",
            "on"
        }
    .end annotation
.end method

.method public abstract unregisterInteractionCallback(Lcom/geely/os/diminteraction/IGlyInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract updateAvgFuleRanking(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "rankingInfo"
        }
    .end annotation
.end method
