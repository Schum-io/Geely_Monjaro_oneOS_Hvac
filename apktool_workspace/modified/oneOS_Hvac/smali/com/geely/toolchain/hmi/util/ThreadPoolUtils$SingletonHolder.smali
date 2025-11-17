.class Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$SingletonHolder;
.super Ljava/lang/Object;
.source "ThreadPoolUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingletonHolder"
.end annotation


# static fields
.field static instance:Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;-><init>(Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$1;)V

    sput-object v0, Lcom/geely/toolchain/hmi/util/ThreadPoolUtils$SingletonHolder;->instance:Lcom/geely/toolchain/hmi/util/ThreadPoolUtils;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
