.class Lcom/geely/os/bt/GlyBtExtensionImpl$7;
.super Ljava/lang/Object;
.source "GlyBtExtensionImpl.java"

# interfaces
.implements Lcom/geely/os/bt/IGlyPbapExtension;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/bt/GlyBtExtensionImpl;->getPbapExtension()Lcom/geely/os/bt/IGlyPbapExtension;
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

    .line 432
    iput-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDecryptContactName(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "address",
            "encryptedContactName",
            "extArg"
        }
    .end annotation

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDecryptContactName :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",encryptedContactName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",extArg :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;->getDecryptContactName(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getPhoneBookContactsCount()I
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getPhoneBookContactsCount :"

    .line 444
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;->getPhoneBookContactsCount()I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public getSyncPhonebookStatus()I
    .locals 2

    const-string v0, "OneVehicleSDK_IGlyBt"

    const-string v1, "getSyncPhonebookStatus :"

    .line 453
    invoke-static {v0, v1}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;->getSyncPhonebookStatus()I

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    return v0
.end method

.method public registerPbapListener(Lcom/geely/os/bt/IGlyPbapListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerPbapListener IGlyPbapListener\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$100(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object p1

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$700(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension$IPbapListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;->registerPbapListener(Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension$IPbapListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public syncPhonebook(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "syncPhonebook  type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneVehicleSDK_IGlyBt"

    invoke-static {v1, v0}, Lcom/geely/os/car/GlyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;->syncPhonebook(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterPbapListener(Lcom/geely/os/bt/IGlyPbapListener;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$100(Lcom/geely/os/bt/GlyBtExtensionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 483
    iget-object p1, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {p1}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$400(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;

    move-result-object p1

    invoke-interface {p1}, Lcom/ecarx/xui/adaptapi/device/ext/IBtExtension;->getPbapExtension()Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/bt/GlyBtExtensionImpl$7;->this$0:Lcom/geely/os/bt/GlyBtExtensionImpl;

    invoke-static {v0}, Lcom/geely/os/bt/GlyBtExtensionImpl;->access$700(Lcom/geely/os/bt/GlyBtExtensionImpl;)Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension$IPbapListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension;->unregisterPbapListener(Lcom/ecarx/xui/adaptapi/device/ext/IPbapExtension$IPbapListener;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
