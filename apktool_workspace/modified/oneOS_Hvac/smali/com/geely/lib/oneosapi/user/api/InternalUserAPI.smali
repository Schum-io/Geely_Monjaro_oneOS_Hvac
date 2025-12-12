.class public interface abstract Lcom/geely/lib/oneosapi/user/api/InternalUserAPI;
.super Ljava/lang/Object;
.source "InternalUserAPI.java"


# virtual methods
.method public abstract fastLogin(Lcom/geely/lib/oneosapi/user/bean/UserInfo;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInfo"
        }
    .end annotation
.end method

.method public abstract getAccessToken()Ljava/lang/String;
.end method

.method public abstract getAccountInfo()Lcom/geely/lib/oneosapi/user/bean/AccountInfo;
.end method

.method public abstract getCommonData(I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public abstract getCurrentUserProfile()Ljava/lang/String;
.end method

.method public abstract getLoginUser()Lcom/geely/lib/oneosapi/user/api/IUserInfo;
.end method

.method public abstract getPolicyContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "docType",
            "docVersion"
        }
    .end annotation
.end method

.method public abstract getSourceAccountInfo()Lcom/geely/lib/oneosapi/user/bean/SourceAccountInfo;
.end method

.method public abstract getToken()Ljava/lang/String;
.end method

.method public abstract getUserProfileName()Ljava/lang/String;
.end method

.method public abstract hasLogin()Z
.end method

.method public abstract hideBackView()Z
.end method

.method public abstract isAutoAccountAuthorized(Lcom/geely/lib/oneosapi/user/api/IAuthorizeCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract isBackShow()Z
.end method

.method public abstract isThirdAppAuthorized(Ljava/lang/String;Lcom/geely/lib/oneosapi/user/api/IThirdAppAuthCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "brandCode",
            "callback"
        }
    .end annotation
.end method

.method public abstract launchLogin()Z
.end method

.method public abstract launchLogin(Ljava/lang/String;Ljava/lang/String;Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "packageName",
            "appName",
            "isBack"
        }
    .end annotation
.end method

.method public abstract launchToLogin(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBack"
        }
    .end annotation
.end method

.method public abstract launchToUserFeedback(Z)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isBack"
        }
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation
.end method

.method public abstract logout()Ljava/lang/Boolean;
.end method

.method public abstract notifyTokenExpired()Z
.end method

.method public abstract refreshToken()Ljava/lang/String;
.end method

.method public abstract refreshUserInfo()Lcom/geely/lib/oneosapi/user/bean/UserInfo;
.end method

.method public abstract saveUserProfile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userProfile"
        }
    .end annotation
.end method

.method public abstract sendAutoAccountInfo(Lcom/geely/lib/oneosapi/user/api/IAutoAccountInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iAutoAccountInfo"
        }
    .end annotation
.end method

.method public abstract setCommonData(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "type"
        }
    .end annotation
.end method

.method public abstract setCurrentUserProfile(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentProfile"
        }
    .end annotation
.end method

.method public abstract setLoginCallback(Lcom/geely/lib/oneosapi/user/api/ILoginCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract showBackView()Z
.end method

.method public abstract unregisterLoginCallback(Lcom/geely/lib/oneosapi/user/api/ILoginCallback;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
