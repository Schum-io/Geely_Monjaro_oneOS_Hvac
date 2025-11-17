.class Lcom/geely/os/tbox/GlyTBoxImpl$4;
.super Ljava/lang/Object;
.source "GlyTBoxImpl.java"

# interfaces
.implements Lcom/geely/os/tbox/IGlyTBoxSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/tbox/GlyTBoxImpl;->getTBoxSettings()Lcom/geely/os/tbox/IGlyTBoxSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/tbox/GlyTBoxImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/tbox/GlyTBoxImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 77
    iput-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCarLocatorEnabled()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$300(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;->isCarLocatorEnabled()Z

    move-result v0

    return v0
.end method

.method public isCarLocatorSupported()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$300(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;->isCarLocatorSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    return v0
.end method

.method public isKeylockEnabled()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$300(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;->isKeylockEnabled()Z

    move-result v0

    return v0
.end method

.method public isKeylockSupported()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$300(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;->isKeylockSupported()Lcom/ecarx/xui/adaptapi/FunctionStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/FunctionStatus;->ordinal()I

    move-result v0

    return v0
.end method

.method public isRVDCEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCarLocatorCallback(Lcom/geely/os/tbox/IGlyCarLocatorCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$000(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {p1}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$300(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$400(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$ICarLocatorCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;->setCarLocatorCallback(Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$ICarLocatorCallback;)V

    return-void
.end method

.method public setCarLocatorEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$300(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;->setCarLocatorEnable(Z)V

    return-void
.end method

.method public setKeylockCallback(Lcom/geely/os/tbox/IGlyKeyLockCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$100(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {p1}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$300(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$500(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$IKeylockCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;->setKeylockCallback(Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$IKeylockCallback;)V

    return-void
.end method

.method public setRVDCStatus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public unsetCarLocatorCallback(Lcom/geely/os/tbox/IGlyCarLocatorCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$300(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v1}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$400(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$ICarLocatorCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;->unsetCarLocatorCallback(Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$ICarLocatorCallback;)V

    .line 113
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$000(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unsetKeylockCallback(Lcom/geely/os/tbox/IGlyKeyLockCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$300(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v1}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$500(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$IKeylockCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings;->unsetKeylockCallback(Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$IKeylockCallback;)V

    .line 130
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$4;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$100(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
