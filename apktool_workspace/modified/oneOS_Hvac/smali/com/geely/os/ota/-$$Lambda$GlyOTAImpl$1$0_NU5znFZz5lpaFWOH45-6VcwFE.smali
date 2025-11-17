.class public final synthetic Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$0_NU5znFZz5lpaFWOH45-6VcwFE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$0_NU5znFZz5lpaFWOH45-6VcwFE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$0_NU5znFZz5lpaFWOH45-6VcwFE;

    invoke-direct {v0}, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$0_NU5znFZz5lpaFWOH45-6VcwFE;-><init>()V

    sput-object v0, Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$0_NU5znFZz5lpaFWOH45-6VcwFE;->INSTANCE:Lcom/geely/os/ota/-$$Lambda$GlyOTAImpl$1$0_NU5znFZz5lpaFWOH45-6VcwFE;

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

    invoke-static {p1}, Lcom/geely/os/ota/GlyOTAImpl$1;->lambda$onRebootingAfterOta$3(Lcom/geely/os/ota/IGlyOtaSessionCallback;)V

    return-void
.end method
