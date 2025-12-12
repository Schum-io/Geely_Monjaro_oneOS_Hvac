.class Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$1;
.super Ljava/lang/Object;
.source "HmiHasCheckBoxDoubleButtonDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;)Lcom/geely/toolchain/hmi/view/HmiTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->access$100(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiHasCheckBoxDoubleButtonDialog;)Lcom/geely/toolchain/hmi/view/HmiTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    return v0
.end method
