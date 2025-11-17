.class Lcom/geely/hvac/GlyAcInterfaceManager$2;
.super Ljava/lang/Object;
.source "GlyAcInterfaceManager.java"

# interfaces
.implements Lcom/geely/hvac/provider/AcVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/GlyAcInterfaceManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/GlyAcInterfaceManager;


# direct methods
.method constructor <init>(Lcom/geely/hvac/GlyAcInterfaceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 66
    iput-object p1, p0, Lcom/geely/hvac/GlyAcInterfaceManager$2;->this$0:Lcom/geely/hvac/GlyAcInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInVisible(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/geely/hvac/GlyAcInterfaceManager$2;->this$0:Lcom/geely/hvac/GlyAcInterfaceManager;

    invoke-static {v0}, Lcom/geely/hvac/GlyAcInterfaceManager;->access$000(Lcom/geely/hvac/GlyAcInterfaceManager;)Lcom/geely/hvac/provider/AcVisibilityListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/geely/hvac/GlyAcInterfaceManager$2;->this$0:Lcom/geely/hvac/GlyAcInterfaceManager;

    invoke-static {v0}, Lcom/geely/hvac/GlyAcInterfaceManager;->access$000(Lcom/geely/hvac/GlyAcInterfaceManager;)Lcom/geely/hvac/provider/AcVisibilityListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/geely/hvac/provider/AcVisibilityListener;->onInVisible(Ljava/lang/String;)V

    :cond_0
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

    .line 69
    iget-object p1, p0, Lcom/geely/hvac/GlyAcInterfaceManager$2;->this$0:Lcom/geely/hvac/GlyAcInterfaceManager;

    invoke-virtual {p1}, Lcom/geely/hvac/GlyAcInterfaceManager;->show()V

    return-void
.end method
