.class Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$1;
.super Ljava/lang/Object;
.source "HmiHasCheckBoxSingleButtonDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;)Lcom/geely/toolchain/hmi/view/HmiTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->access$100(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxSingleButtonDialog;)Lcom/geely/toolchain/hmi/view/HmiTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    return v0
.end method
