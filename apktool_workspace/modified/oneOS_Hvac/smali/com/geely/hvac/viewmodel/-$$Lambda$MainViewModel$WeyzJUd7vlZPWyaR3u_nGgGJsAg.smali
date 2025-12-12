.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$WeyzJUd7vlZPWyaR3u_nGgGJsAg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroidx/databinding/ObservableBoolean;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel;ILandroidx/databinding/ObservableBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$WeyzJUd7vlZPWyaR3u_nGgGJsAg;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iput p2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$WeyzJUd7vlZPWyaR3u_nGgGJsAg;->f$1:I

    iput-object p3, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$WeyzJUd7vlZPWyaR3u_nGgGJsAg;->f$2:Landroidx/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$WeyzJUd7vlZPWyaR3u_nGgGJsAg;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget v1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$WeyzJUd7vlZPWyaR3u_nGgGJsAg;->f$1:I

    iget-object v2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$WeyzJUd7vlZPWyaR3u_nGgGJsAg;->f$2:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, v1, v2}, Lcom/geely/hvac/viewmodel/MainViewModel;->lambda$setBoolProperty$39$MainViewModel(ILandroidx/databinding/ObservableBoolean;)V

    return-void
.end method
