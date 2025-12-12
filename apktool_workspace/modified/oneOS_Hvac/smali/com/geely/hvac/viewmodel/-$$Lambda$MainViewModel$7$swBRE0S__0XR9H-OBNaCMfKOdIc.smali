.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$7$swBRE0S__0XR9H-OBNaCMfKOdIc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/viewmodel/MainViewModel$7;

.field public final synthetic f$1:Landroidx/databinding/ObservableInt;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel$7;Landroidx/databinding/ObservableInt;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$7$swBRE0S__0XR9H-OBNaCMfKOdIc;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel$7;

    iput-object p2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$7$swBRE0S__0XR9H-OBNaCMfKOdIc;->f$1:Landroidx/databinding/ObservableInt;

    iput p3, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$7$swBRE0S__0XR9H-OBNaCMfKOdIc;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$7$swBRE0S__0XR9H-OBNaCMfKOdIc;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel$7;

    iget-object v1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$7$swBRE0S__0XR9H-OBNaCMfKOdIc;->f$1:Landroidx/databinding/ObservableInt;

    iget v2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$7$swBRE0S__0XR9H-OBNaCMfKOdIc;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/geely/hvac/viewmodel/MainViewModel$7;->lambda$onUp$0$MainViewModel$7(Landroidx/databinding/ObservableInt;I)V

    return-void
.end method
