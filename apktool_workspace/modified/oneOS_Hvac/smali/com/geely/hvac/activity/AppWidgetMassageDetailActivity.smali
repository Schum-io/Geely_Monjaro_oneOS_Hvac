.class public Lcom/geely/hvac/activity/AppWidgetMassageDetailActivity;
.super Lcom/geely/hvac/activity/DialogActivity;
.source "AppWidgetMassageDetailActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/geely/hvac/activity/DialogActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getView()Landroid/view/View;
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AppWidgetMassageDetailActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBinding;

    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/geely/hvac/activity/AppWidgetMassageDetailActivity;->getMainViewModel()Lcom/geely/hvac/viewmodel/AppMainViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBinding;->setModel(Lcom/geely/hvac/viewmodel/AppMainViewModel;)V

    .line 12
    invoke-virtual {v0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageSetDetailBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
