.class public final synthetic Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$6$wsONiO4-IT3xvHa86IOEB1-EEzw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$6$wsONiO4-IT3xvHa86IOEB1-EEzw;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$6$wsONiO4-IT3xvHa86IOEB1-EEzw;->f$0:Z

    check-cast p1, Lcom/geely/os/audio/IGlyAudioCallback;

    invoke-static {v0, p1}, Lcom/geely/os/audio/GlyAudioImpl$6;->lambda$onSurroundSoundOnOffChanged$2(ZLcom/geely/os/audio/IGlyAudioCallback;)V

    return-void
.end method
