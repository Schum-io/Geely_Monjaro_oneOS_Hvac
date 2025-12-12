.class public final synthetic Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$IStUrC0cVaLk4dv5lidbalHNeYA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:[I


# direct methods
.method public synthetic constructor <init>([I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$IStUrC0cVaLk4dv5lidbalHNeYA;->f$0:[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/os/lighting/-$$Lambda$GlyLightingShowImpl$1$IStUrC0cVaLk4dv5lidbalHNeYA;->f$0:[I

    check-cast p1, Lcom/geely/os/lighting/IGlyLightingShowWatcher;

    invoke-static {v0, p1}, Lcom/geely/os/lighting/GlyLightingShowImpl$1;->lambda$onLightingShowError$2([ILcom/geely/os/lighting/IGlyLightingShowWatcher;)V

    return-void
.end method
