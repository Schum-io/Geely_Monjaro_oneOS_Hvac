.class public Lcom/geely/livewallpager/lotties/parser/PointFParser;
.super Ljava/lang/Object;
.source "PointFParser.java"

# interfaces
.implements Lcom/geely/livewallpager/lotties/parser/ValueParser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/geely/livewallpager/lotties/parser/ValueParser<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/geely/livewallpager/lotties/parser/PointFParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/geely/livewallpager/lotties/parser/PointFParser;

    invoke-direct {v0}, Lcom/geely/livewallpager/lotties/parser/PointFParser;-><init>()V

    sput-object v0, Lcom/geely/livewallpager/lotties/parser/PointFParser;->INSTANCE:Lcom/geely/livewallpager/lotties/parser/PointFParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;
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

    .line 17
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->peek()Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_0

    .line 19
    invoke-static {p1, p2}, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->jsonToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    sget-object v1, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->BEGIN_OBJECT:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_1

    .line 21
    invoke-static {p1, p2}, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->jsonToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 22
    :cond_1
    sget-object v1, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->NUMBER:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    if-ne v0, v1, :cond_3

    .line 26
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextDouble()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 27
    :goto_0
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 28
    invoke-virtual {p1}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    :cond_2
    return-object v0

    .line 32
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot convert json to point. Next token is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
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

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/geely/livewallpager/lotties/parser/PointFParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method
