.class Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$1;
.super Ljava/lang/Object;
.source "HmiWheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->onItemSelected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 340
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$1;->this$0:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$1;->this$0:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->access$000(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;)Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$OnItemSelectedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$1;->this$0:Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;->getCurrentItem()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$OnItemSelectedListener;->onItemSelected(I)V

    return-void
.end method
