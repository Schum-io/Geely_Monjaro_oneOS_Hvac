.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$3;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContact;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->updateSearchContacts(ILjava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;

.field final synthetic val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyContact;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;Lcom/geely/os/diminteraction/IGlyContact;)V
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

    .line 185
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$3;->this$1:Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;

    iput-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$3;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Landroid/net/Uri;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$3;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyContact;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyContact;->getAvatar()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$3;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyContact;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyContact;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$3;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyContact;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyContact;->getNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$3;->val$iGlyCallLog:Lcom/geely/os/diminteraction/IGlyContact;

    invoke-interface {v0}, Lcom/geely/os/diminteraction/IGlyContact;->getType()I

    move-result v0

    return v0
.end method
