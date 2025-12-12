.class public final synthetic Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$83VG2LmKmeFgVNd71EADz4_QEHk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/geely/hvac/component/Temperature$OnScrollTemperatureChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/adapter/AirConditionViewHolder;

.field public final synthetic f$1:Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;

.field public final synthetic f$2:Landroid/graphics/drawable/GradientDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/adapter/AirConditionViewHolder;Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$83VG2LmKmeFgVNd71EADz4_QEHk;->f$0:Lcom/geely/hvac/adapter/AirConditionViewHolder;

    iput-object p2, p0, Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$83VG2LmKmeFgVNd71EADz4_QEHk;->f$1:Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;

    iput-object p3, p0, Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$83VG2LmKmeFgVNd71EADz4_QEHk;->f$2:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method


# virtual methods
.method public final onChange(FZ)V
    .locals 3

    iget-object v0, p0, Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$83VG2LmKmeFgVNd71EADz4_QEHk;->f$0:Lcom/geely/hvac/adapter/AirConditionViewHolder;

    iget-object v1, p0, Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$83VG2LmKmeFgVNd71EADz4_QEHk;->f$1:Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;

    iget-object v2, p0, Lcom/geely/hvac/adapter/-$$Lambda$AirConditionViewHolder$83VG2LmKmeFgVNd71EADz4_QEHk;->f$2:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/geely/hvac/adapter/AirConditionViewHolder;->lambda$addTemperatureChangeListener$0$AirConditionViewHolder(Lcom/geely/hvac/databinding/PagerItemAirconditionBinding;Landroid/graphics/drawable/GradientDrawable;FZ)V

    return-void
.end method
