.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$E3CMIlx7cnoxRgiKOOKezmbEMvk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/geely/hvac/utils/Throttle$ThrottleTask;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$E3CMIlx7cnoxRgiKOOKezmbEMvk;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iput p2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$E3CMIlx7cnoxRgiKOOKezmbEMvk;->f$1:I

    return-void
.end method


# virtual methods
.method public final invoke([Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$E3CMIlx7cnoxRgiKOOKezmbEMvk;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget v1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$E3CMIlx7cnoxRgiKOOKezmbEMvk;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/geely/hvac/viewmodel/MainViewModel;->lambda$seatDetailClick$61$MainViewModel(I[Ljava/lang/Object;)V

    return-void
.end method
