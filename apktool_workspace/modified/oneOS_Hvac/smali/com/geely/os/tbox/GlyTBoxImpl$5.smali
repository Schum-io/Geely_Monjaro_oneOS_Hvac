.class Lcom/geely/os/tbox/GlyTBoxImpl$5;
.super Ljava/lang/Object;
.source "GlyTBoxImpl.java"

# interfaces
.implements Lcom/geely/os/tbox/IGlyBoxMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/tbox/GlyTBoxImpl;->getTBoxMessage()Lcom/geely/os/tbox/IGlyBoxMessage;
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

    .line 242
    iput-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNaviInfo()Lcom/geely/os/tbox/IGlyNaviInfoFromTBox;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$600(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxMessager()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;->getNaviInfo()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/INaviInfoFromTBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    new-instance v0, Lcom/geely/os/tbox/GlyTBoxImpl$5$1;

    invoke-direct {v0, p0}, Lcom/geely/os/tbox/GlyTBoxImpl$5$1;-><init>(Lcom/geely/os/tbox/GlyTBoxImpl$5;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTBoxMsgType()I
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$600(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxMessager()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;

    move-result-object v0

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;->getTBoxMsgType()I

    move-result v0

    return v0
.end method

.method public setTBoxMessageCallback(Lcom/geely/os/tbox/GlyTBoxMessageCallback;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tBoxMessageCallback",
            "messageType"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$200(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {p1}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$600(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxMessager()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$700(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager$TBoxMessageCallback;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;->setTBoxMessageCallback(Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager$TBoxMessageCallback;I)V

    return-void
.end method

.method public unsetTBoxMessageCallback(Lcom/geely/os/tbox/GlyTBoxMessageCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tBoxMessageCallback"
        }
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$200(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 292
    iget-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {p1}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$600(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/TBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/tbox/TBox;->getTBoxMessager()Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$5;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$700(Lcom/geely/os/tbox/GlyTBoxImpl;)Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager$TBoxMessageCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager;->unsetTBoxMessageCallback(Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager$TBoxMessageCallback;)V

    return-void
.end method
