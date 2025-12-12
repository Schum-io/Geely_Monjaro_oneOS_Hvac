.class Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$2;
.super Ljava/lang/Object;
.source "HmiScrollBindControl.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 63
    iput-object p1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$2;->this$0:Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "seekBar",
            "progress",
            "fromUser"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 67
    iget-object p1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$2;->this$0:Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->access$300(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;)Lcom/geely/toolchain/hmi/view/HmiDampScrollView;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/geely/toolchain/hmi/view/HmiDampScrollView;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 73
    iget-object p1, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$2;->this$0:Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->access$002(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;Z)Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl$2;->this$0:Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;->access$002(Lcom/geely/toolchain/hmi/linkage/HmiScrollBindControl;Z)Z

    .line 80
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
