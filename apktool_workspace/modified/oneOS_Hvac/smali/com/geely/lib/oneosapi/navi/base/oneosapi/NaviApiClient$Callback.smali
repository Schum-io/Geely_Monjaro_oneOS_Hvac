.class public interface abstract Lcom/geely/lib/oneosapi/navi/base/oneosapi/NaviApiClient$Callback;
.super Ljava/lang/Object;
.source "NaviApiClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/navi/base/oneosapi/NaviApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAPIFailed(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMessage"
        }
    .end annotation
.end method

.method public abstract onAPIReady()V
.end method
