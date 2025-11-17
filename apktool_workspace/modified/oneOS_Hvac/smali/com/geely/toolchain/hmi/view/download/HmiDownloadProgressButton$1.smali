.class Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;
.super Ljava/lang/Object;
.source "HmiDownloadProgressButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;->this$0:Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 210
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;->this$0:Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->access$100(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)F

    move-result p1

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;->this$0:Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->access$200(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;->this$0:Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->access$300(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 203
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;->this$0:Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->access$000(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)F

    move-result p1

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;->this$0:Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->access$100(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 204
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton$1;->this$0:Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->access$000(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;)F

    move-result v0

    invoke-static {p1, v0}, Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;->access$102(Lcom/geely/toolchain/hmi/view/download/HmiDownloadProgressButton;F)F

    :cond_0
    return-void
.end method
