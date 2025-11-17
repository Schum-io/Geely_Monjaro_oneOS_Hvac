.class Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$1;
.super Ljava/lang/Object;
.source "HmiScrollBindControl.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$1;->this$0:Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "x",
            "y",
            "i2",
            "i3"
        }
    .end annotation

    .line 54
    iget-object p1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$1;->this$0:Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;

    invoke-virtual {p1}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->showScroll()V

    .line 55
    iget-object p1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$1;->this$0:Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->access$000(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$1;->this$0:Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->access$100(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)I

    move-result p1

    .line 59
    iget-object p2, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$1;->this$0:Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;

    invoke-static {p2}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->access$200(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/geely/toolchain/hmi/view/HmiVerticalSeekbar;->setProgress(I)V

    return-void
.end method
