.class Lcom/geely/os/bt/GlyBtExtensionImpl$3;
.super Ljava/lang/Object;
.source "GlyBtExtensionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/device/ext/IA2dpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/bt/GlyBtExtensionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/bt/GlyBtExtensionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$3;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onA2dpServiceReady$0(Lcom/geely/os/bt/IGlyA2dpCallback;)V
    .locals 0

    .line 156
    invoke-interface {p0}, Lcom/geely/os/bt/IGlyA2dpCallback;->onA2dpServiceReady()V

    return-void
.end method

.method static synthetic lambda$onA2dpStateChanged$1(Ljava/lang/String;IILcom/geely/os/bt/IGlyA2dpCallback;)V
    .locals 0

    .line 162
    invoke-interface {p3, p0, p1, p2}, Lcom/geely/os/bt/IGlyA2dpCallback;->onA2dpStateChanged(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public onA2dpServiceReady()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$3;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$200(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$3$_QJGihotwE58J2qaQDvFexNiRHo;->INSTANCE:Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$3$_QJGihotwE58J2qaQDvFexNiRHo;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "onA2dpServiceReady : "

    .line 157
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onA2dpStateChanged(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "i",
            "i1"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$3;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$200(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$3$HfF6L9VFO5AikF-KAkLHaNeMT1o;

    invoke-direct {v1, p1, p2, p3}, Lcom/geely/os/bt/-$$Lambda$GlyBtExtensionImpl$3$HfF6L9VFO5AikF-KAkLHaNeMT1o;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onA2dpStateChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OneVehicleSDK_IGlyBt"

    invoke-static {p2, p1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
