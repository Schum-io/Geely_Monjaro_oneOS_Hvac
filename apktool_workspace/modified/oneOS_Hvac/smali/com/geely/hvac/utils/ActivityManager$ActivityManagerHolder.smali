.class Lcom/geely/hvac/utils/ActivityManager$ActivityManagerHolder;
.super Ljava/lang/Object;
.source "ActivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/utils/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/geely/hvac/utils/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/geely/hvac/utils/ActivityManager;

    invoke-direct {v0}, Lcom/geely/hvac/utils/ActivityManager;-><init>()V

    sput-object v0, Lcom/geely/hvac/utils/ActivityManager$ActivityManagerHolder;->INSTANCE:Lcom/geely/hvac/utils/ActivityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
