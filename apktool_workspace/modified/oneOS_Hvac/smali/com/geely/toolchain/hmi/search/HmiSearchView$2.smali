.class Lcom/geely/toolchain/hmi/search/HmiSearchView$2;
.super Ljava/lang/Object;
.source "HmiSearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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

    .line 80
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$2;->this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "textView",
            "actionId",
            "keyEvent"
        }
    .end annotation

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 84
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$2;->this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->access$100(Lcom/geely/toolchain/hmi/search/HmiSearchView;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
