.class public abstract Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback;
.super Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;
.source "UserInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback<",
        "Lcom/geely/lib/oneosapi/mediacenter/callback/IUserInfoCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;-><init>()V

    .line 2
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback;)V

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;->setCallbackImpl(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract onUserInfoResult(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Lcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "app",
            "userInfo"
        }
    .end annotation
.end method
