.class public final synthetic Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$SubTitleAdapter$DhpBWBWIcNrSo68_7XePWtY3kGI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;ILcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$SubTitleAdapter$DhpBWBWIcNrSo68_7XePWtY3kGI;->f$0:Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;

    iput p2, p0, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$SubTitleAdapter$DhpBWBWIcNrSo68_7XePWtY3kGI;->f$1:I

    iput-object p3, p0, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$SubTitleAdapter$DhpBWBWIcNrSo68_7XePWtY3kGI;->f$2:Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$SubTitleAdapter$DhpBWBWIcNrSo68_7XePWtY3kGI;->f$0:Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;

    iget v1, p0, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$SubTitleAdapter$DhpBWBWIcNrSo68_7XePWtY3kGI;->f$1:I

    iget-object v2, p0, Lcom/geely/toolchain/hmi/view/-$$Lambda$HmiTitleBar$SubTitleAdapter$DhpBWBWIcNrSo68_7XePWtY3kGI;->f$2:Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;

    invoke-virtual {v0, v1, v2, p1}, Lcom/geely/toolchain/hmi/view/HmiTitleBar$SubTitleAdapter;->lambda$onBindViewHolder$0$HmiTitleBar$SubTitleAdapter(ILcom/geely/toolchain/hmi/view/HmiTitleBar$SubItem;Landroid/view/View;)V

    return-void
.end method
