.class Lcom/geely/hvac/utils/FontManager$FontManagerHolder;
.super Ljava/lang/Object;
.source "FontManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/utils/FontManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontManagerHolder"
.end annotation


# static fields
.field private static final instance:Lcom/geely/hvac/utils/FontManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/geely/hvac/utils/FontManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geely/hvac/utils/FontManager;-><init>(Lcom/geely/hvac/utils/FontManager$1;)V

    sput-object v0, Lcom/geely/hvac/utils/FontManager$FontManagerHolder;->instance:Lcom/geely/hvac/utils/FontManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/geely/hvac/utils/FontManager;
    .locals 1

    .line 15
    sget-object v0, Lcom/geely/hvac/utils/FontManager$FontManagerHolder;->instance:Lcom/geely/hvac/utils/FontManager;

    return-object v0
.end method
