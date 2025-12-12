.class public Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;
.super Ljava/lang/Object;
.source "AnimatableValueParser.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;FLcom/geely/livewallpager/lotties/LottieComposition;Lcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "scale",
            "composition",
            "valueParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;",
            "F",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            "Lcom/geely/livewallpager/lotties/parser/ValueParser<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    invoke-static {p0, p2, p1, p3}, Lcom/geely/livewallpager/lotties/parser/KeyframesParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;FLcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;Lcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "composition",
            "valueParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;",
            "Lcom/geely/livewallpager/lotties/LottieComposition;",
            "Lcom/geely/livewallpager/lotties/parser/ValueParser<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/geely/livewallpager/lotties/value/Keyframe<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 79
    invoke-static {p0, p1, v0, p2}, Lcom/geely/livewallpager/lotties/parser/KeyframesParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;FLcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static parseColor(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;
    .locals 2
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

    .line 65
    new-instance v0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;

    sget-object v1, Lcom/geely/livewallpager/lotties/parser/ColorParser;->INSTANCE:Lcom/geely/livewallpager/lotties/parser/ColorParser;

    invoke-static {p0, p1, v1}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;Lcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableColorValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseDocumentData(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextFrame;
    .locals 2
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

    .line 60
    new-instance v0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextFrame;

    sget-object v1, Lcom/geely/livewallpager/lotties/parser/DocumentDataParser;->INSTANCE:Lcom/geely/livewallpager/lotties/parser/DocumentDataParser;

    invoke-static {p0, p1, v1}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;Lcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static parseFloat(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 1
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

    const/4 v0, 0x1

    .line 27
    invoke-static {p0, p1, v0}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parseFloat(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;Z)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    move-result-object p0

    return-object p0
.end method

.method public static parseFloat(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;Z)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "composition",
            "isDp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;

    if-eqz p2, :cond_0

    .line 33
    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lcom/geely/livewallpager/lotties/parser/FloatParser;->INSTANCE:Lcom/geely/livewallpager/lotties/parser/FloatParser;

    invoke-static {p0, p2, p1, v1}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;FLcom/geely/livewallpager/lotties/LottieComposition;Lcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableFloatValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseGradientColor(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;I)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "composition",
            "points"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;

    new-instance v1, Lcom/geely/livewallpager/lotties/parser/GradientColorParser;

    invoke-direct {v1, p2}, Lcom/geely/livewallpager/lotties/parser/GradientColorParser;-><init>(I)V

    .line 71
    invoke-static {p0, p1, v1}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;Lcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseInteger(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;
    .locals 2
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

    .line 38
    new-instance v0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;

    sget-object v1, Lcom/geely/livewallpager/lotties/parser/IntegerParser;->INSTANCE:Lcom/geely/livewallpager/lotties/parser/IntegerParser;

    invoke-static {p0, p1, v1}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;Lcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parsePoint(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;
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

    .line 43
    new-instance v0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;

    .line 44
    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/geely/livewallpager/lotties/parser/PointFParser;->INSTANCE:Lcom/geely/livewallpager/lotties/parser/PointFParser;

    invoke-static {p0, v1, p1, v2}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;FLcom/geely/livewallpager/lotties/LottieComposition;Lcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatablePointValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseScale(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableScaleValue;
    .locals 2
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

    .line 49
    new-instance v0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableScaleValue;

    sget-object v1, Lcom/geely/livewallpager/lotties/parser/ScaleXYParser;->INSTANCE:Lcom/geely/livewallpager/lotties/parser/ScaleXYParser;

    invoke-static {p0, p1, v1}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;Lcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method static parseShapeData(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;Lcom/geely/livewallpager/lotties/LottieComposition;)Lcom/geely/livewallpager/lotties/model/animatable/AnimatableShapeValue;
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

    .line 54
    new-instance v0, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableShapeValue;

    .line 55
    invoke-static {}, Lcom/geely/livewallpager/lotties/utils/Utils;->dpScale()F

    move-result v1

    sget-object v2, Lcom/geely/livewallpager/lotties/parser/ShapeDataParser;->INSTANCE:Lcom/geely/livewallpager/lotties/parser/ShapeDataParser;

    invoke-static {p0, v1, p1, v2}, Lcom/geely/livewallpager/lotties/parser/AnimatableValueParser;->parse(Lcom/geely/livewallpager/lotties/parser/moshi/JsonReader;FLcom/geely/livewallpager/lotties/LottieComposition;Lcom/geely/livewallpager/lotties/parser/ValueParser;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/geely/livewallpager/lotties/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;)V

    return-object v0
.end method
