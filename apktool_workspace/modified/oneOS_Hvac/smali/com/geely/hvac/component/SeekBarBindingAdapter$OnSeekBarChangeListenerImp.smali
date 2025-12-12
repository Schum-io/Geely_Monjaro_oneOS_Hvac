.class public abstract Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;
.super Ljava/lang/Object;
.source "SeekBarBindingAdapter.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/SeekBarBindingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnSeekBarChangeListenerImp"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;->mProgress:I

    return-void
.end method


# virtual methods
.method public abstract onDragEnd(Landroid/widget/SeekBar;IZ)V
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
.end method

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

    .line 22
    iput p2, p0, Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;->mProgress:I

    .line 23
    iput-boolean p3, p0, Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;->mFromUser:Z

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seekBar"
        }
    .end annotation

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

    .line 33
    iget v0, p0, Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;->mProgress:I

    if-ltz v0, :cond_0

    .line 34
    iget-boolean v1, p0, Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;->mFromUser:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;->onDragEnd(Landroid/widget/SeekBar;IZ)V

    :cond_0
    const/4 v0, -0x1

    .line 36
    iput v0, p0, Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;->mProgress:I

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;->mFromUser:Z

    .line 38
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
