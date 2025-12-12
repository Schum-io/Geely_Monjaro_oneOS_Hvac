.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$KaLsd2Evmq_pQg0h5KOuB-w8-J0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/databinding/ObservableBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel;IILandroidx/databinding/ObservableBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$KaLsd2Evmq_pQg0h5KOuB-w8-J0;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iput p2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$KaLsd2Evmq_pQg0h5KOuB-w8-J0;->f$1:I

    iput p3, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$KaLsd2Evmq_pQg0h5KOuB-w8-J0;->f$2:I

    iput-object p4, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$KaLsd2Evmq_pQg0h5KOuB-w8-J0;->f$3:Landroidx/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$KaLsd2Evmq_pQg0h5KOuB-w8-J0;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget v1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$KaLsd2Evmq_pQg0h5KOuB-w8-J0;->f$1:I

    iget v2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$KaLsd2Evmq_pQg0h5KOuB-w8-J0;->f$2:I

    iget-object v3, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$KaLsd2Evmq_pQg0h5KOuB-w8-J0;->f$3:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/geely/hvac/viewmodel/MainViewModel;->lambda$setBoolProperty$46$MainViewModel(IILandroidx/databinding/ObservableBoolean;)V

    return-void
.end method
