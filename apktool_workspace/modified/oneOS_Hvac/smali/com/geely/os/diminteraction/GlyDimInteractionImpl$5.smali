.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyDimMenuInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->getDimMenuInteraction()Lcom/geely/os/diminteraction/IGlyDimMenuInteraction;
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

    .line 255
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNaviMode()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->getNaviMode()I

    move-result v0

    return v0
.end method

.method public notifyDimControlCenterActiveType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activeType"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->notifyDimControlCenterActiveType(I)V

    return-void
.end method

.method public notifyDimEnterControlCenter(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enterControlCenterAction"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->notifyDimControlCenterActiveType(I)V

    return-void
.end method

.method public notifyDimSwitchThemeCompeted(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "completed"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->notifyDimSwitchThemeCompeted(Z)V

    return-void
.end method

.method public notifyIHUReady()V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->notifyIHUReady()V

    return-void
.end method

.method public registerDimMenuInteractionCallback(Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iDimMenuInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction$IDimMenuInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iDimMenuInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction$IDimMenuInteractionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->registerDimMenuInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction$IDimMenuInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public requestDimSwitchTabWindow(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->requestDimSwitchTabWindow(I)V

    return-void
.end method

.method public requestDimTheme()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->requestDimTheme()V

    return-void
.end method

.method public setVolume(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->setVolume(I)V

    return-void
.end method

.method public setVolume(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isMute",
            "volume"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->setVolume(ZI)V

    return-void
.end method

.method public switchNaviMode(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviMode"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->switchNaviMode(I)Z

    move-result p1

    return p1
.end method

.method public unregisterDimMenuInteractionCallback(Lcom/geely/os/diminteraction/IGlyDimMenuInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iDimMenuInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction$IDimMenuInteractionCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 317
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$400(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 318
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$500(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$5;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    iget-object v0, v0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->iDimMenuInteractionCallback:Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction$IDimMenuInteractionCallback;

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction;->unregisterDimMenuInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IDimMenuInteraction$IDimMenuInteractionCallback;)V

    :cond_0
    return-void
.end method
