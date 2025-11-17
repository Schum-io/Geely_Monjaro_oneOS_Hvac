.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMediaInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onMediaHighlighted$0(Lcom/geely/os/diminteraction/IGlyMedia;Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;)V
    .locals 0

    .line 451
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;->onMediaHighlighted(Lcom/geely/os/diminteraction/IGlyMedia;)V

    return-void
.end method

.method static synthetic lambda$onMediaSelected$1(Lcom/geely/os/diminteraction/IGlyMedia;Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;)V
    .locals 0

    .line 530
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;->onMediaSelected(Lcom/geely/os/diminteraction/IGlyMedia;)V

    return-void
.end method

.method static synthetic lambda$onSourceSelected$2(ILcom/geely/os/diminteraction/IGlyMediaInteractionCallback;)V
    .locals 0

    .line 535
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;->onSourceSelected(I)V

    return-void
.end method

.method static synthetic lambda$onUpdateMediaStatusRequest$3(ILcom/geely/os/diminteraction/IGlyMediaInteractionCallback;)V
    .locals 0

    .line 540
    invoke-interface {p1, p0}, Lcom/geely/os/diminteraction/IGlyMediaInteractionCallback;->onUpdateMediaStatusRequest(I)V

    return-void
.end method


# virtual methods
.method public onMediaHighlighted(Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iGlyMedia"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 380
    :cond_0
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$1;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$1;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;)V

    .line 451
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$800(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object p1

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$Iw5SV7zDnrMGzFqvd438hSpr45E;

    invoke-direct {v1, v0}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$Iw5SV7zDnrMGzFqvd438hSpr45E;-><init>(Lcom/geely/os/diminteraction/IGlyMedia;)V

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onMediaSelected(Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iGlyMedia"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 459
    :cond_0
    new-instance v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;

    invoke-direct {v0, p0, p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7$2;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;Lcom/ecarx/xui/adaptapi/diminteraction/IMediaInteraction$IMedia;)V

    .line 530
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$800(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object p1

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$eg3RQoKvBcnkoKT2Ppitid84pX0;

    invoke-direct {v1, v0}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$eg3RQoKvBcnkoKT2Ppitid84pX0;-><init>(Lcom/geely/os/diminteraction/IGlyMedia;)V

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSourceSelected(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$800(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$4eXNQUKbF9BTrynDND18e9IEe_o;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$4eXNQUKbF9BTrynDND18e9IEe_o;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onUpdateMediaStatusRequest(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$7;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$800(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$i1uMPbVQ13lUkZ-MhFpU9FY9MXo;

    invoke-direct {v1, p1}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$7$i1uMPbVQ13lUkZ-MhFpU9FY9MXo;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
