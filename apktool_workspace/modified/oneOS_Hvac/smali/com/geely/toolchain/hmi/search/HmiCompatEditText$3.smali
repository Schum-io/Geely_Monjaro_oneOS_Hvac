.class Lcom/geely/toolchain/hmi/search/HmiCompatEditText$3;
.super Ljava/lang/Object;
.source "HmiCompatEditText.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/search/HmiCompatEditText;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$3;->this$0:Lcom/geely/toolchain/hmi/search/HmiCompatEditText;

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

    .line 188
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$3;->this$0:Lcom/geely/toolchain/hmi/search/HmiCompatEditText;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->access$200(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnFocusChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 189
    iget-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$3;->this$0:Lcom/geely/toolchain/hmi/search/HmiCompatEditText;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->access$200(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnFocusChangeListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$OnFocusChangeListener;->onFocusChange(Z)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mFocusListener is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
