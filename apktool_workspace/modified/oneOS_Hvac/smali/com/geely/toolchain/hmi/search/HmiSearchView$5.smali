.class Lcom/geely/toolchain/hmi/search/HmiSearchView$5;
.super Ljava/lang/Object;
.source "HmiSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/search/HmiSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/search/HmiSearchView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$5;->this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView;

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

    .line 111
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$5;->this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->setTextClearOnClearFocus(Z)V

    .line 112
    iget-object v0, p0, Lcom/geely/toolchain/hmi/search/HmiSearchView$5;->this$0:Lcom/geely/toolchain/hmi/search/HmiSearchView;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/search/HmiSearchView;->access$300(Lcom/geely/toolchain/hmi/search/HmiSearchView;)Lcom/geely/toolchain/hmi/search/FocusEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->clearFocus()V

    .line 113
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method
