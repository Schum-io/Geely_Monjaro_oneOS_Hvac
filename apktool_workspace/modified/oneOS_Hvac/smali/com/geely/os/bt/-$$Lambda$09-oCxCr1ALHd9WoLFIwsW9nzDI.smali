.class public final synthetic Lcom/geely/os/bt/-$$Lambda$09-oCxCr1ALHd9WoLFIwsW9nzDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/bt/-$$Lambda$09-oCxCr1ALHd9WoLFIwsW9nzDI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/bt/-$$Lambda$09-oCxCr1ALHd9WoLFIwsW9nzDI;

    invoke-direct {v0}, Lcom/geely/os/bt/-$$Lambda$09-oCxCr1ALHd9WoLFIwsW9nzDI;-><init>()V

    sput-object v0, Lcom/geely/os/bt/-$$Lambda$09-oCxCr1ALHd9WoLFIwsW9nzDI;->INSTANCE:Lcom/geely/os/bt/-$$Lambda$09-oCxCr1ALHd9WoLFIwsW9nzDI;

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

    check-cast p1, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;

    invoke-interface {p1}, Lcom/geely/os/bt/IGlyBTHandler$IGlyBTCallback;->onScanStart()V

    return-void
.end method
