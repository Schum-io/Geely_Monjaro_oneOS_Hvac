.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$sr3aclKkEzWwmaCg-2L04epUVJ8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/databinding/ObservableInt;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel;ILandroidx/databinding/ObservableInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$sr3aclKkEzWwmaCg-2L04epUVJ8;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iput p2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$sr3aclKkEzWwmaCg-2L04epUVJ8;->f$1:I

    iput-object p3, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$sr3aclKkEzWwmaCg-2L04epUVJ8;->f$2:Landroidx/databinding/ObservableInt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$sr3aclKkEzWwmaCg-2L04epUVJ8;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget v1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$sr3aclKkEzWwmaCg-2L04epUVJ8;->f$1:I

    iget-object v2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$sr3aclKkEzWwmaCg-2L04epUVJ8;->f$2:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, v1, v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->lambda$setIntFragranceProperty$38$MainViewModel(ILandroidx/databinding/ObservableInt;)V

    return-void
.end method
