.class public interface abstract Lcom/geely/hvac/provider/HvacCommunicateContentProvider$HvacCommunicateListener;
.super Ljava/lang/Object;
.source "HvacCommunicateContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/provider/HvacCommunicateContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HvacCommunicateListener"
.end annotation


# virtual methods
.method public abstract onClose(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation
.end method

.method public abstract onGetHvacVisibility()Z
.end method

.method public abstract onOpen(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation
.end method
