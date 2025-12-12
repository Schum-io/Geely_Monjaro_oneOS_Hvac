.class public final synthetic Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$77eihVREIiqOHft4jWmra8fHBnc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$77eihVREIiqOHft4jWmra8fHBnc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$77eihVREIiqOHft4jWmra8fHBnc;

    invoke-direct {v0}, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$77eihVREIiqOHft4jWmra8fHBnc;-><init>()V

    sput-object v0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$77eihVREIiqOHft4jWmra8fHBnc;->INSTANCE:Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$77eihVREIiqOHft4jWmra8fHBnc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/geely/os/ota/IGlyOtaSessionCallback;

    invoke-static {p1}, Lcom/geely/os/ota/GlyOTAImpl$1;->lambda$onSucceeded$2(Lcom/geely/os/ota/IGlyOtaSessionCallback;)V

    return-void
.end method
