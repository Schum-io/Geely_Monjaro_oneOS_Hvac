.class public final synthetic Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$MusicAdapterManager$cDnPT02UcqNt6MW7TunMIiGT1Aw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$MusicAdapterManager$cDnPT02UcqNt6MW7TunMIiGT1Aw;->f$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/manager/-$$Lambda$MusicAdapterManager$cDnPT02UcqNt6MW7TunMIiGT1Aw;->f$0:Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;

    check-cast p1, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    check-cast p2, Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;

    invoke-virtual {v0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/manager/MusicAdapterManager;->lambda$new$0$MusicAdapterManager(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/base/BaseMusicManager;)V

    return-void
.end method
