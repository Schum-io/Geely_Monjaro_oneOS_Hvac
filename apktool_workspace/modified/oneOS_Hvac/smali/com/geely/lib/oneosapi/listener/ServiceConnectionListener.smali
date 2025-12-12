.class public interface abstract Lcom/geely/lib/oneosapi/listener/ServiceConnectionListener;
.super Ljava/lang/Object;
.source "ServiceConnectionListener.java"


# virtual methods
.method public abstract onServiceBinderUpdated(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binderType"
        }
    .end annotation
.end method

.method public abstract onServiceConnectionChanged(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connectionState"
        }
    .end annotation
.end method
