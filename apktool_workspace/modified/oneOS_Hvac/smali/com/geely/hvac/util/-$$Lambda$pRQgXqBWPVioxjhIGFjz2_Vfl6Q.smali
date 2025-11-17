.class public final synthetic Lcom/geely/hvac/util/-$$Lambda$pRQgXqBWPVioxjhIGFjz2_Vfl6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/geely/hvac/util/TemperatureToastRoot$TouchListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/util/TemperatureToast;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/util/TemperatureToast;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/util/-$$Lambda$pRQgXqBWPVioxjhIGFjz2_Vfl6Q;->f$0:Lcom/geely/hvac/util/TemperatureToast;

    return-void
.end method


# virtual methods
.method public final onTouch()V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/util/-$$Lambda$pRQgXqBWPVioxjhIGFjz2_Vfl6Q;->f$0:Lcom/geely/hvac/util/TemperatureToast;

    invoke-virtual {v0}, Lcom/geely/hvac/util/TemperatureToast;->resetTimer()V

    return-void
.end method
