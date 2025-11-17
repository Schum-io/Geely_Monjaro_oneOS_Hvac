.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$c9V0MEeBXkoqCoNIj26znHarnjc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroidx/databinding/ObservableInt;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel;IILandroidx/databinding/ObservableInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$c9V0MEeBXkoqCoNIj26znHarnjc;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iput p2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$c9V0MEeBXkoqCoNIj26znHarnjc;->f$1:I

    iput p3, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$c9V0MEeBXkoqCoNIj26znHarnjc;->f$2:I

    iput-object p4, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$c9V0MEeBXkoqCoNIj26znHarnjc;->f$3:Landroidx/databinding/ObservableInt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$c9V0MEeBXkoqCoNIj26znHarnjc;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget v1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$c9V0MEeBXkoqCoNIj26znHarnjc;->f$1:I

    iget v2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$c9V0MEeBXkoqCoNIj26znHarnjc;->f$2:I

    iget-object v3, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$c9V0MEeBXkoqCoNIj26znHarnjc;->f$3:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, v1, v2, v3}, Lcom/geely/hvac/viewmodel/MainViewModel;->lambda$setIntProperty$42$MainViewModel(IILandroidx/databinding/ObservableInt;)V

    return-void
.end method
