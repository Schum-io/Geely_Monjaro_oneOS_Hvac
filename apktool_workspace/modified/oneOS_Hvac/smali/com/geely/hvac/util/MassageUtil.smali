.class public Lcom/geely/hvac/util/MassageUtil;
.super Ljava/lang/Object;
.source "MassageUtil.java"


# static fields
.field public static final LEVEL_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ICON_OFF_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ICON_ON_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_NAME_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/geely/hvac/util/MassageUtil$1;

    invoke-direct {v0}, Lcom/geely/hvac/util/MassageUtil$1;-><init>()V

    sput-object v0, Lcom/geely/hvac/util/MassageUtil;->LEVEL_MAP:Ljava/util/Map;

    .line 20
    new-instance v0, Lcom/geely/hvac/util/MassageUtil$2;

    invoke-direct {v0}, Lcom/geely/hvac/util/MassageUtil$2;-><init>()V

    sput-object v0, Lcom/geely/hvac/util/MassageUtil;->TYPE_NAME_MAP:Ljava/util/Map;

    .line 33
    new-instance v0, Lcom/geely/hvac/util/MassageUtil$3;

    invoke-direct {v0}, Lcom/geely/hvac/util/MassageUtil$3;-><init>()V

    sput-object v0, Lcom/geely/hvac/util/MassageUtil;->TYPE_ICON_ON_MAP:Ljava/util/Map;

    .line 45
    new-instance v0, Lcom/geely/hvac/util/MassageUtil$4;

    invoke-direct {v0}, Lcom/geely/hvac/util/MassageUtil$4;-><init>()V

    sput-object v0, Lcom/geely/hvac/util/MassageUtil;->TYPE_ICON_OFF_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatLevel(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/geely/hvac/util/MassageUtil;->LEVEL_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const v1, 0x7f100070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 61
    invoke-static {}, Lcom/geely/hvac/GlyAcApp;->getInstance()Lcom/geely/hvac/GlyAcApp;

    move-result-object v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/geely/hvac/GlyAcApp;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatType(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/geely/hvac/util/MassageUtil;->TYPE_NAME_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v1, "\u672a\u77e5"

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTypeDrawableId(I)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/geely/hvac/util/MassageUtil;->TYPE_ICON_ON_MAP:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public static getTypeDrawableId(IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "on"
        }
    .end annotation

    const/4 v0, -0x1

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/geely/hvac/util/MassageUtil;->TYPE_ICON_ON_MAP:Ljava/util/Map;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/geely/hvac/util/MassageUtil;->TYPE_ICON_OFF_MAP:Ljava/util/Map;

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    return v0
.end method
