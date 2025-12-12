.class Lcom/geely/livewallpager/lotties/parser/CircleShapeParser;
.super Ljava/lang/Object;
.source "CircleShapeParser.java"


# static fields
.field private static NAMES:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "nm"

    const-string v1, "p"

    const-string v2, "s"

    const-string v3, "hd"

    const-string v4, "d"

    .line 15
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/geely/livewallpager/lotties/parser/CircleShapeParser;->NAMES:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;I)Lcom/geely/livewallpager/lotties/model/content/CircleShape;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "composition",
            "d"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/4 v3, 0x0

    move v8, p2

    move v9, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    .line 33
    :goto_1
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 34
    sget-object p2, Lcom/geely/livewallpager/lotties/parser/CircleShapeParser;->NAMES:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, p2}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->selectName(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;)I

    move-result p2

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipName()V

    .line 53
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextInt()I

    move-result p2

    if-ne p2, v2, :cond_2

    move v8, v0

    goto :goto_1

    :cond_2
    move v8, v1

    goto :goto_1

    .line 45
    :cond_3
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextBoolean()Z

    move-result v9

    goto :goto_1

    .line 42
    :cond_4
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parsePoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    move-result-object v7

    goto :goto_1

    .line 39
    :cond_5
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/parser/AnimatablePathValueParser;->parseSplitPath(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;

    move-result-object v6

    goto :goto_1

    .line 36
    :cond_6
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 57
    :cond_7
    new-instance p0, Lcom/geely/livewallpager/lotties/model/content/CircleShape;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/geely/livewallpager/lotties/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;ZZ)V

    return-object p0
.end method
