.class Lcom/geely/toolchain/hmi/search/HmiCompatEditText$1;
.super Ljava/lang/Object;
.source "HmiCompatEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 161
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$1;->this$0:Lcom/geely/toolchain/hmi/search/HmiCompatEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    .line 168
    iget-object p2, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$1;->this$0:Lcom/geely/toolchain/hmi/search/HmiCompatEditText;

    invoke-static {p2, p1}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->access$000(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;Ljava/lang/CharSequence;)V

    return-void
.end method
