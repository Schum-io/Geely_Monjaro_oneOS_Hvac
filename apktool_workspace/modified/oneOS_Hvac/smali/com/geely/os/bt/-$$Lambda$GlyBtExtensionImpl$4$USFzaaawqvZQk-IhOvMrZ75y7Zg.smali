.class public final synthetic Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$4$USFzaaawqvZQk-IhOvMrZ75y7Zg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$4$USFzaaawqvZQk-IhOvMrZ75y7Zg;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$4$USFzaaawqvZQk-IhOvMrZ75y7Zg;->f$1:I

    iput p3, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$4$USFzaaawqvZQk-IhOvMrZ75y7Zg;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$4$USFzaaawqvZQk-IhOvMrZ75y7Zg;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$4$USFzaaawqvZQk-IhOvMrZ75y7Zg;->f$1:I

    iget v2, p0, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$4$USFzaaawqvZQk-IhOvMrZ75y7Zg;->f$2:I

    check-cast p1, Lcom/geely/os/bt/IGlyMultiPbapListener;

    invoke-static {v0, v1, v2, p1}, Lcom/geely/os/bt/GlyBtExtensionImpl$4;->lambda$onSyncPhonebookStatusChanged$0(Ljava/lang/String;IILcom/geely/os/bt/IGlyMultiPbapListener;)V

    return-void
.end method
