.class Lcom/geely/hvac/viewmodel/MainViewModel$42;
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

    .line 2609
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$42;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Lcom/geely/hvac/component/SeekBarBindingAdapter$OnSeekBarChangeListenerImp;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd(Landroid/widget/SeekBar;IZ)V
    .locals 2
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

    .line 2612
    sget-object p1, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRow2LeftSeatLegSupportLengthSeekListener, progress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",fromUser:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 2614
    iget-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$42;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget-object p1, p1, Lcom/geely/hvac/viewmodel/MainViewModel;->mCar:Lcom/geely/os/car/IGlyCar;

    const p3, 0x2d080400

    const/16 v0, 0x10

    invoke-interface {p1, p3, v0, p2}, Lcom/geely/os/car/IGlyCar;->setIntProperty(III)Z

    :cond_0
    return-void
.end method
