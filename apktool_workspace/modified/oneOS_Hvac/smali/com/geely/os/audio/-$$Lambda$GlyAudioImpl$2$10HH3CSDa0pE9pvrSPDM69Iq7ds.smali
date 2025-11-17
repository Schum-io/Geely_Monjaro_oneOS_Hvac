.class public final synthetic Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$2$10HH3CSDa0pE9pvrSPDM69Iq7ds;
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

    iput p1, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$2$10HH3CSDa0pE9pvrSPDM69Iq7ds;->f$0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/geely/os/audio/-$$Lambda$GlyAudioImpl$2$10HH3CSDa0pE9pvrSPDM69Iq7ds;->f$0:I

    check-cast p1, Lcom/geely/os/audio/IGlyCompensationSettingListener;

    invoke-static {v0, p1}, Lcom/geely/os/audio/GlyAudioImpl$2;->lambda$onLevelOfSpeedVolumeChanged$2(ILcom/geely/os/audio/IGlyCompensationSettingListener;)V

    return-void
.end method
