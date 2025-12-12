.class Lcom/geely/toolchain/hmi/search/HmiSearchView$3;
.super Ljava/lang/Object;
.source "HmiSearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/search/HmiSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/search/HmiSearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$3;->this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "hasFocus"
        }
    .end annotation

    .line 93
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$3;->this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->access$200(Lcom/geely/toolchain/hmi/search/HmiSearchView;)Lcom/geely/toolchain/hmi/search/HmiSearchView$OnFocusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$3;->this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->access$200(Lcom/geely/toolchain/hmi/search/HmiSearchView;)Lcom/geely/toolchain/hmi/search/HmiSearchView$OnFocusChangeListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/geely/toolchain/hmi/search/HmiSearchView$OnFocusChangeListener;->onFocusChange(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "HmiSearchView"

    const-string p2, "mFocusListener is null"

    .line 96
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
