.class Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$1;
.super Ljava/util/HashMap;
.source "SeatPhysiotherapyAnimate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/SeatPhysiotherapyAnimate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const v0, 0x2d500206

    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "motion"

    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2d500208

    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "thai"

    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2d500207

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "relief"

    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2d500204

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "shoulder"

    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2d500205

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "waist"

    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2d500202

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "back"

    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/component/SeatPhysiotherapyAnimate$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
