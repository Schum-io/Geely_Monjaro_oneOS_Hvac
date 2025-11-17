.class Lcom/geely/hvac/activity/GlyMainActivity$1;
.super Ljava/lang/Object;
.source "GlyMainActivity.java"

# interfaces
.implements Lcom/geely/hvac/provider/AcVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/activity/GlyMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/activity/GlyMainActivity;


# direct methods
.method constructor <init>(Lcom/geely/hvac/activity/GlyMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity$1;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInVisible(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity$1;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-static {p1}, Lcom/geely/hvac/activity/GlyMainActivity;->access$000(Lcom/geely/hvac/activity/GlyMainActivity;)V

    return-void
.end method

.method public onVisible(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .line 65
    iget-object p1, p0, Lcom/geely/hvac/activity/GlyMainActivity$1;->this$0:Lcom/geely/hvac/activity/GlyMainActivity;

    invoke-virtual {p1}, Lcom/geely/hvac/activity/GlyMainActivity;->resetHideRunnable()V

    return-void
.end method
