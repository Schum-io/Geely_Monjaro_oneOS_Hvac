.class Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;
.super Ljava/lang/Object;
.source "HmiAddWlanDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->setHmiListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    invoke-static {v1}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$100(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/view/HmiEditText;

    move-result-object v2

    invoke-interface {v0, v1, v2, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;->afterTextChanged(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;Lcom/geely/toolchain/hmi/view/HmiEditText;Landroid/text/Editable;)V

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mHmiTextChangedListener is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    invoke-static {v2}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$100(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/view/HmiEditText;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;->beforeTextChanged(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;Lcom/geely/toolchain/hmi/view/HmiEditText;Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mHmiTextChangedListener is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$000(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$1;->this$0:Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;

    invoke-static {v2}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$100(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;)Lcom/geely/toolchain/hmi/view/HmiEditText;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v1 .. v7}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog$HmiTextChangedListener;->onTextChanged(Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;Lcom/geely/toolchain/hmi/view/HmiEditText;Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {}, Lcom/geely/toolchain/hmi/dialog/HmiAddWlanDialog;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mHmiTextChangedListener is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
