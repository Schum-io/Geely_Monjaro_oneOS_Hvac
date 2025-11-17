.class public abstract Lcom/geely/lib/oneosapi/wechat/BaseWeChatManager;
.super Ljava/lang/Object;
.source "BaseWeChatManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseWeChatManager"


# instance fields
.field public mService:Lcom/geely/lib/oneosapi/wechat/IWeChatManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getWeChatVoidState()I
.end method

.method public initService(Lcom/geely/lib/oneosapi/wechat/IWeChatManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/wechat/BaseWeChatManager;->mService:Lcom/geely/lib/oneosapi/wechat/IWeChatManager;

    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/wechat/BaseWeChatManager;->mService:Lcom/geely/lib/oneosapi/wechat/IWeChatManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
