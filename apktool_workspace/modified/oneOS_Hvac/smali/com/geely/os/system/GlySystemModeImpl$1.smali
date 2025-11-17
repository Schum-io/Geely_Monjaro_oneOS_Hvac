.class Lcom/geely/os/system/GlySystemModeImpl$1;
.super Ljava/lang/Object;
.source "GlySystemModeImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/device/ext/ISystemMode$ISystemModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/system/GlySystemModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/system/GlySystemModeImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/system/GlySystemModeImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 17
    iput-object p1, p0, Lcom/geely/os/system/GlySystemModeImpl$1;->this$0:Lcom/geely/os/system/GlySystemModeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onSystemModeStateChanged$0(IILcom/geely/os/system/IGlySystemModeListener;)V
    .locals 0

    .line 21
    invoke-interface {p2, p0, p1}, Lcom/geely/os/system/IGlySystemModeListener;->onSystemModeStateChanged(II)V

    return-void
.end method


# virtual methods
.method public onSystemModeStateChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "state"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSystemModeStateChanged mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlySystemModeImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/geely/os/system/GlySystemModeImpl$1;->this$0:Lcom/geely/os/system/GlySystemModeImpl;

    invoke-static {v0}, Lcom/geely/os/system/GlySystemModeImpl;->access$000(Lcom/geely/os/system/GlySystemModeImpl;)Landroidx/collection/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/system/-$$Lambda$GlySystemModeImpl$1$fCNd2KaPOiUvFe9lVTL6UnUO7mc;

    invoke-direct {v1, p1, p2}, Lcom/geely/os/system/-$$Lambda$GlySystemModeImpl$1$fCNd2KaPOiUvFe9lVTL6UnUO7mc;-><init>(II)V

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
