.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$ICallLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->updateCallLogList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;

.field final synthetic val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyCallLog;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;Lcom/geely/os/diminteraction/IGlyCallLog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$iGlyCallLog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyCallLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Landroid/net/Uri;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyCallLog;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallLog;->getAvatar()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCallType()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyCallLog;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallLog;->getCallType()I

    move-result v0

    return v0
.end method

.method public getContactName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyCallLog;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallLog;->getContactName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactNumber()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyCallLog;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallLog;->getContactNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyCallLog;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallLog;->getCount()I

    move-result v0

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyCallLog;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyCallLog;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method
