.class public final synthetic Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$h_eWUea6nFdLTxsxY4jza_7iW-I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$h_eWUea6nFdLTxsxY4jza_7iW-I;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$4$h_eWUea6nFdLTxsxY4jza_7iW-I;->f$0:I

    check-cast p1, Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;

    invoke-static {v0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$4;->lambda$onChangeNaviMode$2(ILcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V

    return-void
.end method
