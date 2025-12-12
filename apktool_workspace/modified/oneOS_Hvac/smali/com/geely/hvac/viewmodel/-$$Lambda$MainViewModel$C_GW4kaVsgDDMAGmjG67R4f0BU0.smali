.class public final synthetic Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroidx/databinding/ObservableInt;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/viewmodel/MainViewModel;IIILandroidx/databinding/ObservableInt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iput p2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;->f$1:I

    iput p3, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;->f$2:I

    iput p4, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;->f$3:I

    iput-object p5, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;->f$4:Landroidx/databinding/ObservableInt;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;->f$0:Lcom/geely/hvac/viewmodel/MainViewModel;

    iget v1, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;->f$1:I

    iget v2, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;->f$2:I

    iget v3, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;->f$3:I

    iget-object v4, p0, Lcom/geely/hvac/viewmodel/-$$Lambda$MainViewModel$C_GW4kaVsgDDMAGmjG67R4f0BU0;->f$4:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/geely/hvac/viewmodel/MainViewModel;->lambda$setIntProperty$44$MainViewModel(IIILandroidx/databinding/ObservableInt;)V

    return-void
.end method
