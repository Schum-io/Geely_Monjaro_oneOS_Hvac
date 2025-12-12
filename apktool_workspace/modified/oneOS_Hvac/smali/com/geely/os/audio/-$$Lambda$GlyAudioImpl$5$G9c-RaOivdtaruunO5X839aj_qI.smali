.class public final synthetic Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$5$G9c-RaOivdtaruunO5X839aj_qI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$5$G9c-RaOivdtaruunO5X839aj_qI;->f$0:I

    iput p2, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$5$G9c-RaOivdtaruunO5X839aj_qI;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$5$G9c-RaOivdtaruunO5X839aj_qI;->f$0:I

    iget v1, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$5$G9c-RaOivdtaruunO5X839aj_qI;->f$1:I

    check-cast p1, Lcom/geely/os/audio/IGlyHarmanSettingListener;

    invoke-static {v0, v1, p1}, Lcom/geely/os/audio/GlyAudioImpl$5;->lambda$onBandChanged$1(IILcom/geely/os/audio/IGlyHarmanSettingListener;)V

    return-void
.end method
