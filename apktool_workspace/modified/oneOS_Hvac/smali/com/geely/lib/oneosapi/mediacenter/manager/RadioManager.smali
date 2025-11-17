.class public Lcom/geely/lib/oneosapi/mediacenter/manager/RadioManager;
.super Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;
.source "RadioManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "service",
            "mediaCenterManager"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;-><init>(Landroid/content/Context;Lcom/geely/lib/oneosapi/mediacenter/IRadioManager;Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;)V

    return-void
.end method


# virtual methods
.method public requestAudioSource()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/base/BaseRadioManager;->mMediaCenterManager:Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;

    sget-object v1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;->AUDIO_SOURCE_RADIO:Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/MediaCenterManager;->requestAudioSource(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;)V

    return-void
.end method
