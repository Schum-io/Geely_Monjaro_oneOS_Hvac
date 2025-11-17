.class Lcom/geely/os/bt/GlyBtExtensionImpl$6;
.super Ljava/lang/Object;
.source "GlyBtExtensionImpl.java"

# interfaces
.implements Lcom/geely/os/bt/IGlyMultiBtPbapExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/bt/GlyBtExtensionImpl;->getMultiBtPbapExtension()Lcom/geely/os/bt/IGlyMultiBtPbapExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/bt/GlyBtExtensionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneBookContactsCount(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhoneBookContactsCount address\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getMultiBtPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getMultiBtPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;->getPhoneBookContactsCount(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method public getSyncPhonebookStatus(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "address"
        }
    .end annotation

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSyncPhonebookStatus address\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getMultiBtPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getMultiBtPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;->getSyncPhonebookStatus(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public registerMultiPbapListener(Lcom/geely/os/bt/IGlyMultiPbapListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiPbapListener IGlyMultiPbapListener\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getMultiBtPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$300(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object p1

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getMultiBtPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$600(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension$IMultiPbapListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;->registerMultiPbapListener(Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension$IMultiPbapListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public syncPhonebook(Ljava/lang/String;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "address",
            "type"
        }
    .end annotation

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncPhonebook address\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getMultiBtPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getMultiBtPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;->syncPhonebook(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterMultiPbapListener(Lcom/geely/os/bt/IGlyMultiPbapListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getMultiBtPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$300(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 421
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object p1

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getMultiBtPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$6;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$600(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension$IMultiPbapListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension;->unregisterMultiPbapListener(Lcom/ecarx/xui/adaptapi/device/ext/IMultiBtPbapExtension$IMultiPbapListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
