.class public final synthetic Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$kxl4tZCfFej9eXr7Q3RJUbtxZ9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$kxl4tZCfFej9eXr7Q3RJUbtxZ9k;->f$0:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$kxl4tZCfFej9eXr7Q3RJUbtxZ9k;->f$0:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->lambda$getCancel$4(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;Ljava/util/List;)V

    return-void
.end method
