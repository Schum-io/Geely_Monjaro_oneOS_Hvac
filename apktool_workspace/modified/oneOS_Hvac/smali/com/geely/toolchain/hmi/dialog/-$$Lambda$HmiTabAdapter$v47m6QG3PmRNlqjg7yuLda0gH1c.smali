.class public final synthetic Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabAdapter$v47m6QG3PmRNlqjg7yuLda0gH1c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabAdapter$v47m6QG3PmRNlqjg7yuLda0gH1c;->f$0:Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;

    iput p2, p0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabAdapter$v47m6QG3PmRNlqjg7yuLda0gH1c;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabAdapter$v47m6QG3PmRNlqjg7yuLda0gH1c;->f$0:Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabAdapter$v47m6QG3PmRNlqjg7yuLda0gH1c;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->lambda$onBindViewHolder$0$HmiTabAdapter(ILandroid/view/View;)V

    return-void
.end method
