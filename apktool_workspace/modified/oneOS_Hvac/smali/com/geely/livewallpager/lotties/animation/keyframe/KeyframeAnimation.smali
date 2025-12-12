.class abstract Lcom/geely/livewallpager/lotties/animation/keyframe/KeyframeAnimation;
.super Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;
.source "KeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation<",
        "TT;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyframes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/geely/livewallpager/lotties/value/Keyframe<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/geely/livewallpager/lotties/animation/keyframe/BaseKeyframeAnimation;-><init>(Ljava/util/List;)V

    return-void
.end method
