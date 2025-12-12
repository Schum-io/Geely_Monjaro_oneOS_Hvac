.class public final synthetic Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$7$e8HCFEfHoSD5qpcASvlS4v4uL4U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$7$e8HCFEfHoSD5qpcASvlS4v4uL4U;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$7$e8HCFEfHoSD5qpcASvlS4v4uL4U;->f$0:I

    check-cast p1, Lcom/geely/os/audio/IGlyExternalSpeakersVolumeListener;

    invoke-static {v0, p1}, Lcom/geely/os/audio/GlyAudioImpl$7;->lambda$onSpeakersVolumeChange$0(ILcom/geely/os/audio/IGlyExternalSpeakersVolumeListener;)V

    return-void
.end method
