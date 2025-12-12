.class Lcom/geely/os/lighting/GlyLightingShowImpl$2;
.super Ljava/lang/Object;
.source "GlyLightingShowImpl.java"

# interfaces
.implements Lcom/geely/os/lighting/IGlyLightingShowInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/lighting/GlyLightingShowImpl;->getLightingShowInfo(I)[Lcom/geely/os/lighting/IGlyLightingShowInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/lighting/GlyLightingShowImpl;

.field final synthetic val$showInfo:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;


# direct methods
.method constructor <init>(Lcom/geely/os/lighting/GlyLightingShowImpl;Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$showInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$2;->this$0:Lcom/geely/os/lighting/GlyLightingShowImpl;

    iput-object p2, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$2;->val$showInfo:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$2;->val$showInfo:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$2;->val$showInfo:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$2;->val$showInfo:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPayType()I
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$2;->val$showInfo:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;->getPayType()I

    move-result v0

    return v0
.end method

.method public getShowMode()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$2;->val$showInfo:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;->getShowMode()I

    move-result v0

    return v0
.end method

.method public getShowType()I
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$2;->val$showInfo:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;->getShowType()I

    move-result v0

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/geely/os/lighting/GlyLightingShowImpl$2;->val$showInfo:Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;

    invoke-interface {v0}, Lcom/ecarx/xui/adaptapi/lighting/ILightingShow$ILightingShowInfo;->getUUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
