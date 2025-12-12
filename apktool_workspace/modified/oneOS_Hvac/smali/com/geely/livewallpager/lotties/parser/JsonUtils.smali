.class Lcom/geely/livewallpager/lotties/parser/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# static fields
.field private static final POINT_NAMES:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "x"

    const-string/jumbo v1, "y"

    .line 76
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->POINT_NAMES:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static jsonArrayToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->beginArray()V

    .line 67
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 68
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 69
    :goto_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->peek()Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    move-result-object v2

    sget-object v3, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->END_ARRAY:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    if-eq v2, v3, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->endArray()V

    .line 73
    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private static jsonNumbersToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 56
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 60
    :cond_0
    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method private static jsonObjectToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->beginObject()V

    const/4 v0, 0x0

    move v1, v0

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    sget-object v2, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->POINT_NAMES:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v2}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->selectName(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipName()V

    .line 92
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->valueFromObject(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;)F

    move-result v1

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {p0}, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->valueFromObject(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;)F

    move-result v0

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->endObject()V

    .line 96
    new-instance p0, Landroid/graphics/PointF;

    mul-float/2addr v0, p1

    mul-float/2addr v1, p1

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method static jsonToColor(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->beginArray()V

    .line 22
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x406fe00000000000L    # 255.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 23
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v1, v4

    .line 24
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v2, v4

    .line 25
    :goto_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->endArray()V

    const/16 p0, 0xff

    .line 29
    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method static jsonToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/geely/livewallpager/lotties/parser/JsonUtils$1;->$SwitchMap$com$geely$livewallpager$lotties$parser$moshi$JsonReader$Token:[I

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->peek()Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    move-result-object v1

    invoke-virtual {v1}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 49
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->jsonObjectToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown point starts with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->peek()Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_1
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->jsonArrayToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 47
    :cond_2
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->jsonNumbersToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static jsonToPoints(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "scale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;",
            "F)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->beginArray()V

    .line 36
    :goto_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->peek()Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->beginArray()V

    .line 38
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->jsonToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->endArray()V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->endArray()V

    return-object v0
.end method

.method static valueFromObject(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;)F
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->peek()Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    move-result-object v0

    .line 101
    sget-object v1, Lcom/geely/livewallpager/lotties/parser/JsonUtils$1;->$SwitchMap$com$geely$livewallpager$lotties$parser$moshi$JsonReader$Token:[I

    invoke-virtual {v0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->beginArray()V

    .line 106
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float v0, v0

    .line 107
    :goto_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->endArray()V

    return v0

    .line 113
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown value for token of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method
