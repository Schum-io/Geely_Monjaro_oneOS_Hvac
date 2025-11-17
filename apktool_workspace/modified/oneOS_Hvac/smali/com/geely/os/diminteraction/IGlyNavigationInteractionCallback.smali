.class public interface abstract Lcom/geely/os/diminteraction/IGlyNavigationInteractionCallback;
.super Ljava/lang/Object;
.source "IGlyNavigationInteractionCallback.java"


# virtual methods
.method public abstract onDoInteractionAction(ILcom/geely/os/diminteraction/IGlyAddress;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "address"
        }
    .end annotation
.end method

.method public abstract onSearchAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation
.end method
