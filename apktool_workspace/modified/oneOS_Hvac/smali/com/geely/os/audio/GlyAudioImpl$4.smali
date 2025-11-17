.class Lcom/geely/os/audio/GlyAudioImpl$4;
.super Ljava/lang/Object;
.source "GlyAudioImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/audio/audiofx/IFaderBalance$IFaderBalanceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/audio/GlyAudioImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/audio/GlyAudioImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/audio/GlyAudioImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 107
    iput-object p1, p0, Lcom/geely/os/audio/GlyAudioImpl$4;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onBalanceChanged$2(ILcom/geely/os/audio/IGlyFaderBalanceStateListener;)V
    .locals 0

    .line 123
    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyFaderBalanceStateListener;->onBalanceChanged(I)V

    return-void
.end method

.method static synthetic lambda$onFaderBalanceStateChanger$0(Lcom/ecarx/xui/adaptapi/FunctionStatus;Lcom/geely/os/audio/IGlyFaderBalanceStateListener;)V
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyFaderBalanceStateListener;->onFaderBalanceStateChanger(I)V

    return-void
.end method

.method static synthetic lambda$onFaderChanged$1(ILcom/geely/os/audio/IGlyFaderBalanceStateListener;)V
    .locals 0

    .line 117
    invoke-interface {p1, p0}, Lcom/geely/os/audio/IGlyFaderBalanceStateListener;->onFaderChanged(I)V

    return-void
.end method


# virtual methods
.method public onBalanceChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBalanceChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$4;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$400(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$4$SWjln9oXx4sNK9_NPCrvwCFXWyk;

    invoke-direct {v1, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$4$SWjln9oXx4sNK9_NPCrvwCFXWyk;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFaderBalanceStateChanger(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "functionStatus"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFaderBalanceStateChanger : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$4;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$400(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$4$ot0yP0fhZIGN1dSkpSSitcGJ0Gk;

    invoke-direct {v1, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$4$ot0yP0fhZIGN1dSkpSSitcGJ0Gk;-><init>(Lcom/ecarx/xui/adaptapi/FunctionStatus;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFaderChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFaderChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_GlyAudioImpl"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/geely/os/audio/GlyAudioImpl$4;->this$0:Lcom/geely/os/audio/GlyAudioImpl;

    invoke-static {v0}, Lcom/geely/os/audio/GlyAudioImpl;->access$400(Lcom/geely/os/audio/GlyAudioImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$4$XFkTUCCgaPm0z6lDFzNRXIzV7A8;

    invoke-direct {v1, p1}, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$4$XFkTUCCgaPm0z6lDFzNRXIzV7A8;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
