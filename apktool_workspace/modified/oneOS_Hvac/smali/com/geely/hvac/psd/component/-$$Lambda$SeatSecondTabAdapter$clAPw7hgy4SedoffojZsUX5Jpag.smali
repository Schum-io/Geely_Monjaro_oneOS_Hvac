.class public final synthetic Lcom/geely/hvac/psd/component/-$$Lambda$SeatSecondTabAdapter$clAPw7hgy4SedoffojZsUX5Jpag;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/psd/component/-$$Lambda$SeatSecondTabAdapter$clAPw7hgy4SedoffojZsUX5Jpag;->f$0:Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;

    iput p2, p0, Lcom/geely/hvac/psd/component/-$$Lambda$SeatSecondTabAdapter$clAPw7hgy4SedoffojZsUX5Jpag;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/psd/component/-$$Lambda$SeatSecondTabAdapter$clAPw7hgy4SedoffojZsUX5Jpag;->f$0:Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;

    iget v1, p0, Lcom/geely/hvac/psd/component/-$$Lambda$SeatSecondTabAdapter$clAPw7hgy4SedoffojZsUX5Jpag;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->lambda$onBindViewHolder$0$SeatSecondTabAdapter(ILandroid/view/View;)V

    return-void
.end method
