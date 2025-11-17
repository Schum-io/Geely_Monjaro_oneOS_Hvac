.class public final synthetic Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$6$nm9AfQIBCD7E9QSf8GkkxjjJ6aI;
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

    iput p1, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$6$nm9AfQIBCD7E9QSf8GkkxjjJ6aI;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$6$nm9AfQIBCD7E9QSf8GkkxjjJ6aI;->f$0:I

    check-cast p1, Lcom/geely/os/audio/IGlyAudioCallback;

    invoke-static {v0, p1}, Lcom/geely/os/audio/GlyAudioImpl$6;->lambda$onAudioSettingStateChanged$0(ILcom/geely/os/audio/IGlyAudioCallback;)V

    return-void
.end method
