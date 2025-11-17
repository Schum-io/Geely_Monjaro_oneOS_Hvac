.class Lcom/geely/hvac/util/PhysiotherapyUtil$2;
.super Ljava/util/HashMap;
.source "PhysiotherapyUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/util/PhysiotherapyUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const v0, 0x2d500206

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "\u8fd0\u52a8\u6062\u590d"

    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/util/PhysiotherapyUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2d500208

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "\u6cf0\u5f0f\u62c9\u4f38"

    invoke-virtual {p0, v0, v2}, Lcom/geely/hvac/util/PhysiotherapyUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2d500207

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "\u91ca\u538b\u8212\u5c55"

    invoke-virtual {p0, v0, v2}, Lcom/geely/hvac/util/PhysiotherapyUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2d500204

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "\u80a9\u90e8\u89e3\u538b"

    invoke-virtual {p0, v0, v2}, Lcom/geely/hvac/util/PhysiotherapyUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2d500205

    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "\u8170\u90e8\u89e3\u538b"

    invoke-virtual {p0, v0, v2}, Lcom/geely/hvac/util/PhysiotherapyUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x2d500202

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "\u80cc\u90e8\u89e3\u538b"

    invoke-virtual {p0, v0, v2}, Lcom/geely/hvac/util/PhysiotherapyUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xff

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/geely/hvac/util/PhysiotherapyUtil$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
