.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$OTzi_5TxlV0se0kizVcDAS8MGds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/viewmodel/MainViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$OTzi_5TxlV0se0kizVcDAS8MGds;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$OTzi_5TxlV0se0kizVcDAS8MGds;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    invoke-virtual {v0}, Lcom/geely/hvac/viewmodel/MainViewModel;->lambda$setBehindWindState$55$MainViewModel()V

    return-void
.end method
