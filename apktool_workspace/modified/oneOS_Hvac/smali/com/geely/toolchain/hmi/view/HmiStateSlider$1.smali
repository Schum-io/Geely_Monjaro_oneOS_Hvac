.class Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;
.super Ljava/lang/Object;
.source "HmiStateSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/view/HmiStateSlider;->initSeekBar(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/view/HmiStateSlider;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/view/HmiStateSlider;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiStateSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
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

    .line 98
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiStateSlider;

    invoke-static {v0, p2}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->access$000(Lcom/geely/toolchain/hmi/view/HmiStateSlider;I)V

    .line 99
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiStateSlider;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->access$100(Lcom/geely/toolchain/hmi/view/HmiStateSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiStateSlider;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->access$100(Lcom/geely/toolchain/hmi/view/HmiStateSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

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

    .line 106
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiStateSlider;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->access$100(Lcom/geely/toolchain/hmi/view/HmiStateSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiStateSlider;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->access$100(Lcom/geely/toolchain/hmi/view/HmiStateSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiStateSlider;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->access$100(Lcom/geely/toolchain/hmi/view/HmiStateSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiStateSlider$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiStateSlider;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/view/HmiStateSlider;->access$100(Lcom/geely/toolchain/hmi/view/HmiStateSlider;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 116
    :cond_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
