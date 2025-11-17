.class public Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;
.super Ljava/lang/Object;
.source "LayoutSeatTabBindingImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickListenerImpl"
.end annotation


# instance fields
.field private value:Lcom/geely/hvac/component/SeatTab;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1750
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

    .line 1758
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;->value:Lcom/geely/hvac/component/SeatTab;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/SeatTab;->itemClick(Landroid/view/View;)V

    .line 1759
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public setValue(Lcom/geely/hvac/component/SeatTab;)Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1753
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutSeatTabBindingImpl$OnClickListenerImpl;->value:Lcom/geely/hvac/component/SeatTab;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method
