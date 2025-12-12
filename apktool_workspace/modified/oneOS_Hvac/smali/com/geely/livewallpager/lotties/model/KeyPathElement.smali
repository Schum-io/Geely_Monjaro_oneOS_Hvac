.class public interface abstract Lcom/geely/livewallpager/lotties/model/KeyPathElement;
.super Ljava/lang/Object;
.source "KeyPathElement.java"


# virtual methods
.method public abstract addValueCallback(Ljava/lang/Object;Lcom/geely/livewallpager/lotties/value/LottieValueCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "property",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/geely/livewallpager/lotties/value/LottieValueCallback<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract resolveKeyPath(Lcom/geely/livewallpager/lotties/model/KeyPath;ILjava/util/List;Lcom/geely/livewallpager/lotties/model/KeyPath;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyPath",
            "depth",
            "accumulator",
            "currentPartialKeyPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/model/KeyPath;",
            "I",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/model/KeyPath;",
            ">;",
            "Lcom/geely/livewallpager/lotties/model/KeyPath;",
            ")V"
        }
    .end annotation
.end method
