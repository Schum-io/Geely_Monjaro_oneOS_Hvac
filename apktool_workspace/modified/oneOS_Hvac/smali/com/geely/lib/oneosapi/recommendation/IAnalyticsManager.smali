.class public interface abstract Lcom/geely/lib/oneosapi/recommendation/IAnalyticsManager;
.super Ljava/lang/Object;
.source "IAnalyticsManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/recommendation/IAnalyticsManager$Stub;,
        Lcom/geely/lib/oneosapi/recommendation/IAnalyticsManager$Default;
    }
.end annotation


# virtual methods
.method public abstract recordContentClickBehavior(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "behaviorId",
            "subId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract recordCsdFlowClick(ILjava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "listItemId",
            "contentId",
            "imageUrl",
            "jumpType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
