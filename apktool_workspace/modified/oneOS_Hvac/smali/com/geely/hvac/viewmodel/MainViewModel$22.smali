.class Lcom/geely/hvac/viewmodel/MainViewModel$22;
.super Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;
.source "MainViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/viewmodel/MainViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/viewmodel/MainViewModel;


# direct methods
.method constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 2113
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$22;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(Landroid/widget/SeekBar;IZ)V
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

    if-eqz p3, :cond_0

    .line 2118
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$22;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p1, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const p3, 0x2d020300

    const/4 v0, 0x1

    invoke-interface {p1, p3, v0, p2}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    :cond_0
    return-void
.end method
