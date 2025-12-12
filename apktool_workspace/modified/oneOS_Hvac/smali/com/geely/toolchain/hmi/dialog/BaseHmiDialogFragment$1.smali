.class Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment$1;
.super Landroid/app/Dialog;
.source "BaseHmiDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "context"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment$1;->this$0:Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 77
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 79
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment$1;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 80
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment$1;->this$0:Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;

    .line 82
    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method
