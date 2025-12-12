.class public Lcom/geely/livewallpager/lotties/parser/AnimatablePathValueParser;
.super Ljava/lang/Object;
.source "AnimatablePathValueParser.java"


# static fields
.field private static NAMES:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "k"

    const-string/jumbo v1, "x"

    const-string/jumbo v2, "y"

    .line 20
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;->of([Ljava/lang/String;)Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/geely/livewallpager/lotties/parser/AnimatablePathValueParser;->NAMES:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePathValue;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "composition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->peek()Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    move-result-object v1

    sget-object v2, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->BEGIN_ARRAY:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    if-ne v1, v2, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->beginArray()V

    .line 33
    :goto_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 34
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/parser/PathKeyframeParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/animation/keyframe/PathKeyframe;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->endArray()V

    .line 37
    invoke-static {v0}, Lcom/geely/livewallpager/lotties/parser/KeyframesParser;->setEndFrames(Ljava/util/List;)V

    goto :goto_1

    .line 39
    :cond_1
    new-instance p1, Lcom/geely/livewallpager/lotties/value/Keyframe;

    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result v1

    invoke-static {p0, v1}, Lcom/geely/livewallpager/lotties/parser/JsonUtils;->jsonToPoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;F)Landroid/graphics/PointF;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/geely/livewallpager/lotties/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :goto_1
    new-instance p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePathValue;

    invoke-direct {p0, v0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePathValue;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method static parseSplitPath(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reader",
            "composition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            ")",
            "Lcom/geely/livewallpager/lotties/model/animatable/AnimatableValue<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->beginObject()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    move-object v2, v3

    .line 57
    :goto_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->peek()Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->END_OBJECT:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    if-eq v5, v6, :cond_5

    .line 58
    sget-object v5, Lcom/geely/livewallpager/lotties/parser/AnimatablePathValueParser;->NAMES:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;

    invoke-virtual {p0, v5}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->selectName(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Options;)I

    move-result v5

    if-eqz v5, :cond_4

    if-eq v5, v0, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipName()V

    .line 80
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipValue()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->peek()Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->STRING:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    if-ne v5, v6, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipValue()V

    goto :goto_1

    .line 75
    :cond_1
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parseFloat(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    move-result-object v3

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->peek()Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    move-result-object v5

    sget-object v6, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;->STRING:Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader$Token;

    if-ne v5, v6, :cond_3

    .line 65
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->skipValue()V

    :goto_1
    move v4, v0

    goto :goto_0

    .line 67
    :cond_3
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parseFloat(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    move-result-object v2

    goto :goto_0

    .line 60
    :cond_4
    invoke-static {p0, p1}, Lcom/geely/livewallpager/lotties/parser/AnimatablePathValueParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePathValue;

    move-result-object v1

    goto :goto_0

    .line 83
    :cond_5
    invoke-virtual {p0}, Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;->endObject()V

    if-eqz v4, :cond_6

    const-string p0, "Lottie doesn\'t support expressions."

    .line 86
    invoke-virtual {p1, p0}, Lcom/geely/livewallpager/lotties/LottieComposition;->addWarning(Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    return-object v1

    .line 92
    :cond_7
    new-instance p0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableSplitDimensionPathValue;

    invoke-direct {p0, v2, v3}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableSplitDimensionPathValue;-><init>(Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;)V

    return-object p0
.end method
