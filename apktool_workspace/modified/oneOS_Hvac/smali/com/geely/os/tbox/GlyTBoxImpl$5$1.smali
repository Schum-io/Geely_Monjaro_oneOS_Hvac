.class Lcom/geely/os/tbox/GlyTBoxImpl$5$1;
.super Ljava/lang/Object;
.source "GlyTBoxImpl.java"

# interfaces
.implements Lcom/geely/os/tbox/IGlyNaviInfoFromTBox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/tbox/GlyTBoxImpl$5;->getNaviInfo()Lcom/geely/os/tbox/IGlyNaviInfoFromTBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/tbox/GlyTBoxImpl$5;


# direct methods
.method constructor <init>(Lcom/geely/os/tbox/GlyTBoxImpl$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 252
    iput-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5$1;->this$1:Lcom/geely/os/tbox/GlyTBoxImpl$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLat()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5$1;->this$1:Lcom/geely/os/tbox/GlyTBoxImpl$5;

    iget-object v0, v0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$600(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxMessager()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;->getNaviInfo()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;->getLat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLon()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5$1;->this$1:Lcom/geely/os/tbox/GlyTBoxImpl$5;

    iget-object v0, v0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$600(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxMessager()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;->getNaviInfo()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;->getLon()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5$1;->this$1:Lcom/geely/os/tbox/GlyTBoxImpl$5;

    iget-object v0, v0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$600(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxMessager()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;->getNaviInfo()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;->getMessageId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageTitle()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5$1;->this$1:Lcom/geely/os/tbox/GlyTBoxImpl$5;

    iget-object v0, v0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$600(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxMessager()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;->getNaviInfo()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;->getMessageTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSender()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5$1;->this$1:Lcom/geely/os/tbox/GlyTBoxImpl$5;

    iget-object v0, v0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$600(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxMessager()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;->getNaviInfo()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;->getSender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
