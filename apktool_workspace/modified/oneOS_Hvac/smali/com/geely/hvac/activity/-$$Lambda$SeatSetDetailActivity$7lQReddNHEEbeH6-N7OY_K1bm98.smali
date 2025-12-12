.class public final synthetic Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$7lQReddNHEEbeH6-N7OY_K1bm98;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/activity/SeatSetDetailActivity;

.field public final synthetic f$1:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/activity/SeatSetDetailActivity;Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$7lQReddNHEEbeH6-N7OY_K1bm98;->f$0:Lcom/geely/hvac/activity/SeatSetDetailActivity;

    iput-object p2, p0, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$7lQReddNHEEbeH6-N7OY_K1bm98;->f$1:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$7lQReddNHEEbeH6-N7OY_K1bm98;->f$0:Lcom/geely/hvac/activity/SeatSetDetailActivity;

    iget-object v1, p0, Lcom/geely/hvac/activity/-$$Lambda$SeatSetDetailActivity$7lQReddNHEEbeH6-N7OY_K1bm98;->f$1:Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, v1, p1}, Lcom/geely/hvac/activity/SeatSetDetailActivity;->lambda$getKey$1$SeatSetDetailActivity(Lcom/geely/hvac/databinding/LayoutSeatSetDetailBinding;Ljava/util/Map;)V

    return-void
.end method
