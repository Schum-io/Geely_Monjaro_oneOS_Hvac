.class Lcom/geely/hvac/viewmodel/MainViewModel$8;
.super Ljava/lang/Object;
.source "MainViewModel.java"

# interfaces
.implements Lcom/geely/hvac/component/ImageViewWithUpDown$UpDownListener;


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

    .line 656
    iput-object p1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$8;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDown$1$MainViewModel$8(Landroidx/databinding/ObservableInt;I)V
    .locals 3

    .line 690
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$8;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/4 v1, -0x8

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->setIntProperty(Landroidx/databinding/ObservableInt;III)Z

    move-result p1

    .line 691
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seatRaise down delay 1, zone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",res:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onDown$2$MainViewModel$8(Landroidx/databinding/ObservableInt;I)V
    .locals 3

    .line 694
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$8;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/4 v1, -0x8

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->setIntProperty(Landroidx/databinding/ObservableInt;III)Z

    move-result p1

    .line 695
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seatRaise down delay 2, zone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",res:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$onUp$0$MainViewModel$8(Landroidx/databinding/ObservableInt;I)V
    .locals 3

    .line 668
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$8;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/4 v1, -0x8

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->setIntProperty(Landroidx/databinding/ObservableInt;III)Z

    move-result p1

    .line 669
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seatRaise up, zone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",res:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onDown(Landroid/widget/ImageView;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 679
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v1, 0x400

    if-eq p1, v1, :cond_0

    .line 681
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seatRaise, not support zone, zone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$8;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$400(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$8;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$500(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    .line 687
    :goto_0
    iget-object v1, p0, Lcom/geely/hvac/viewmodel/MainViewModel$8;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    const/4 v2, -0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/geely/hvac/viewmodel/MainViewModel;->setIntProperty(Landroidx/databinding/ObservableInt;III)Z

    move-result v1

    .line 688
    sget-object v2, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seatRaise down, zone:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    sget-object v1, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$8$lpX4o6jvHJi11-IRwEFnVp3jhmk;

    invoke-direct {v2, p0, v0, p1}, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$8$lpX4o6jvHJi11-IRwEFnVp3jhmk;-><init>(Lcom/geely/hvac/viewmodel/MainViewModel$8;Landroidx/databinding/ObservableInt;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 693
    sget-object v1, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$8$_lHbY8TCs7m_e20CX8BsrH7QSIo;

    invoke-direct {v2, p0, v0, p1}, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$8$_lHbY8TCs7m_e20CX8BsrH7QSIo;-><init>(Lcom/geely/hvac/viewmodel/MainViewModel$8;Landroidx/databinding/ObservableInt;I)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 698
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onUp(Landroid/widget/ImageView;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageView"
        }
    .end annotation

    .line 660
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/16 v1, 0x400

    if-eq p1, v1, :cond_0

    .line 662
    sget-object v0, Lcom/geely/hvac/viewmodel/MainViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seatRaise, not support zone, zone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    if-ne p1, v0, :cond_1

    .line 666
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$8;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$400(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/geely/hvac/viewmodel/MainViewModel$8;->this$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-static {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->access$500(Lcom/geely/hvac/viewmodel/MainViewModel;)Landroidx/databinding/ObservableInt;

    move-result-object v0

    .line 667
    :goto_0
    sget-object v1, Lcom/geely/hvac/utils/Executor;->MAIN:Landroid/os/Handler;

    new-instance v2, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$8$9x8xazqBVdZBJztv4q3exqgroiQ;

    invoke-direct {v2, p0, v0, p1}, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$8$9x8xazqBVdZBJztv4q3exqgroiQ;-><init>(Lcom/geely/hvac/viewmodel/MainViewModel$8;Landroidx/databinding/ObservableInt;I)V

    const-wide/16 v3, 0xfa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 672
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
