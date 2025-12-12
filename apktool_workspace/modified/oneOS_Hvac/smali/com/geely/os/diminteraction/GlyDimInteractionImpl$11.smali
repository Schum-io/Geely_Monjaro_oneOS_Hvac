.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IPhoneCallInteraction$IPhoneCallInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1330
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAnswerAndEndCall$2(Ljava/lang/String;Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1343
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->onAnswerAndEndCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAnswerAndHoldCall$1(Ljava/lang/String;Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1338
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->onAnswerAndHoldCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onAnswerCall$0(Ljava/lang/String;Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1333
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->onAnswerCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCallInfoUpdateRequired$4(Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1358
    invoke-interface {p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->onCallInfoUpdateRequired()V

    return-void
.end method

.method static synthetic lambda$onEndCall$3(Ljava/lang/String;Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1348
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->onEndCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onRequestConnectedMobileDeviceInfo$5(Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1363
    invoke-interface {p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->onRequestConnectedMobileDeviceInfo()V

    return-void
.end method

.method static synthetic lambda$onSwitchCall$6(Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1368
    invoke-interface {p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->onSwitchCall()V

    return-void
.end method

.method static synthetic lambda$onSwitchChannel$8(ILcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1378
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->onSwitchChannel(I)V

    return-void
.end method

.method static synthetic lambda$onSwitchMicMode$7(ILcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1373
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->onSwitchMicMode(I)V

    return-void
.end method

.method static synthetic lambda$onSwitchRingtoneMuteMode$10(ILcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1388
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->onSwitchRingtoneMuteMode(I)V

    return-void
.end method

.method static synthetic lambda$placeCall$9(Ljava/lang/String;Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;)V
    .locals 0

    .line 1383
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyPhoneCallInteractionCallback;->placeCall(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onAnswerAndEndCall(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$f18Dd_T2Fw6WknsVtL7LSAKMTQ8;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$f18Dd_T2Fw6WknsVtL7LSAKMTQ8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAnswerAndHoldCall(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1338
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$_8IV70aG7cGIyoiCCCQXBB1S1BI;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$_8IV70aG7cGIyoiCCCQXBB1S1BI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAnswerCall(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1333
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$FlWeyNEZ_upEBaPN6GRyifCDxcg;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$FlWeyNEZ_upEBaPN6GRyifCDxcg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCallInfoUpdateRequired()V
    .locals 2

    .line 1358
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$D9g7UEjHtgij63vUBy37c7gT_Mo;->INSTANCE:Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$D9g7UEjHtgij63vUBy37c7gT_Mo;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onEndCall(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1348
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$UdKmJO-9b-LiUKDBk3KXb_TI-8U;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$UdKmJO-9b-LiUKDBk3KXb_TI-8U;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onRejectCall(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public onRequestConnectedMobileDeviceInfo()V
    .locals 2

    .line 1363
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$OB3xMPsXnzRiTSzcu__7fFIjwmY;->INSTANCE:Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$OB3xMPsXnzRiTSzcu__7fFIjwmY;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSwitchCall()V
    .locals 2

    .line 1368
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    sget-object v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$1D0M-HgLE8lHErzHKj2FWsf8Uug;->INSTANCE:Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$1D0M-HgLE8lHErzHKj2FWsf8Uug;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSwitchChannel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1378
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$DXG2w77JKq_q9fzlQoObfKK0ItU;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$DXG2w77JKq_q9fzlQoObfKK0ItU;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSwitchMicMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$aF_AR32ivkGFNCNakp8sJFLNaDI;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$aF_AR32ivkGFNCNakp8sJFLNaDI;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSwitchRingtoneMuteMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1388
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$upY1-2CHP0wRp9thRpsi7zBGoUc;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$upY1-2CHP0wRp9thRpsi7zBGoUc;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public placeCall(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1383
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$11;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$1200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$_ACbTz5YmnhhPsTwOU8padZCH7g;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$11$_ACbTz5YmnhhPsTwOU8padZCH7g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
