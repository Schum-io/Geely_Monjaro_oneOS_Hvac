.class public final synthetic Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$vvAG6L8ePuoxZtGMxklMt3Vf1Mw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/util/TemperatureToast;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/util/TemperatureToast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$vvAG6L8ePuoxZtGMxklMt3Vf1Mw;->f$0:Lcom/geely/hvac/util/TemperatureToast;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/util/-$$Lambda$TemperatureToast$vvAG6L8ePuoxZtGMxklMt3Vf1Mw;->f$0:Lcom/geely/hvac/util/TemperatureToast;

    invoke-virtual {v0}, Lcom/geely/hvac/util/TemperatureToast;->lambda$cancel$1$TemperatureToast()V

    return-void
.end method
