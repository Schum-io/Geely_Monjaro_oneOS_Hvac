.class Lcom/geely/toolchain/hmi/search/HmiCompatEditText$5;
.super Ljava/lang/Object;
.source "HmiCompatEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/search/HmiCompatEditText;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$5;->this$0:Lcom/geely/toolchain/hmi/search/HmiCompatEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiCompatEditText$5;->this$0:Lcom/geely/toolchain/hmi/search/HmiCompatEditText;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/search/HmiCompatEditText;->access$400(Lcom/geely/toolchain/hmi/search/HmiCompatEditText;)Lcom/geely/toolchain/hmi/search/FocusEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/search/FocusEditText;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
