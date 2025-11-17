.class public interface abstract Lcom/geely/lib/oneosapi/user/api/ILoginCallback;
.super Ljava/lang/Object;
.source "ILoginCallback.java"


# virtual methods
.method public abstract onLogin()V
.end method

.method public abstract onLogout()V
.end method

.method public abstract onTokenChanged(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation
.end method

.method public abstract onTokenRefresh(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation
.end method

.method public abstract onUserInfoChanged(Lcom/geely/lib/oneosapi/user/bean/UserInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation
.end method
