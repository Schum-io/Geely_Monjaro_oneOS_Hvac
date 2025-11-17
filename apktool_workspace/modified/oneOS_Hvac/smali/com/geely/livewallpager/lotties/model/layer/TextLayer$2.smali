.class Lcom/geely/livewallpager/lotties/model/layer/TextLayer$2;
.super Landroid/graphics/Paint;
.source "TextLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/livewallpager/lotties/model/layer/TextLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/livewallpager/lotties/model/layer/TextLayer;


# direct methods
.method constructor <init>(Lcom/geely/livewallpager/lotties/model/layer/TextLayer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "flags"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/geely/livewallpager/lotties/model/layer/TextLayer$2;->this$0:Lcom/geely/livewallpager/lotties/model/layer/TextLayer;

    invoke-direct {p0, p2}, Landroid/graphics/Paint;-><init>(I)V

    .line 45
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/geely/livewallpager/lotties/model/layer/TextLayer$2;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method
