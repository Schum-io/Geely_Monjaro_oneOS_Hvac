.class public Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;
.super Ljava/lang/Object;
.source "LayoutSeatPhysicsSaveBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickListenerImpl2"
.end annotation


# instance fields
.field private value:Lcom/geely/hvac/viewmodel/AppMainViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 686
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

    .line 694
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;->value:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/viewmodel/AppMainViewModel;->hudSeat(Landroid/view/View;)V

    .line 695
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public setValue(Lcom/geely/hvac/viewmodel/AppMainViewModel;)Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 689
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatPhysicsSaveBindingImpl$OnClickListenerImpl2;->value:Lcom/geely/hvac/viewmodel/AppMainViewModel;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method
