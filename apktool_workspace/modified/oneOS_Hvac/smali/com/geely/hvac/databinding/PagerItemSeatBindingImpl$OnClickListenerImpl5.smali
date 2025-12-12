.class public Lcom/geely/hvac/databinding/PagerItemSeatBindingImpl$OnClickListenerImpl5;
.super Ljava/lang/Object;
.source "PagerItemSeatBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/databinding/PagerItemSeatBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickListenerImpl5"
.end annotation


# instance fields
.field private value:Lcom/geely/hvac/viewmodel/AppMainViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 4612
    iget-object v0, p0, Lcom/geely/hvac/databinding/PagerItemSeatBindingImpl$OnClickListenerImpl5;->value:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->seatPositionSave(Landroid/view/View;)V

    .line 4613
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/PagerItemSeatBindingImpl$OnClickListenerImpl5;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 4607
    iput-object p1, p0, Lcom/geely/hvac/databinding/PagerItemSeatBindingImpl$OnClickListenerImpl5;->value:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method
