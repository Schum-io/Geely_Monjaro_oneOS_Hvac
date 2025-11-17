.class public abstract Lcom/geely/lib/oneosapi/user/IUserService$Stub;
.super Landroid/os/Binder;
.source "IUserService.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/user/IUserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/oneosapi/user/IUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/user/IUserService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.geely.lib.oneosapi.user.IUserService"

.field public static final TRANSACTION_deleteHistoricalAccountInfo:I = 0x2a

.field public static final TRANSACTION_fastLogin:I = 0x13

.field public static final TRANSACTION_getAccessToken:I = 0x2

.field public static final TRANSACTION_getAccountInfo:I = 0x20

.field public static final TRANSACTION_getCommonData:I = 0x27

.field public static final TRANSACTION_getCurrentUserProfile:I = 0x1c

.field public static final TRANSACTION_getEmergencyMobile:I = 0xc

.field public static final TRANSACTION_getHistoricalAccountInfo:I = 0x11

.field public static final TRANSACTION_getLoginQrcode:I = 0x18

.field public static final TRANSACTION_getLoginUser:I = 0x5

.field public static final TRANSACTION_getPolicyContent:I = 0x17

.field public static final TRANSACTION_getSourceAccountInfo:I = 0x16

.field public static final TRANSACTION_getToken:I = 0xa

.field public static final TRANSACTION_getUserAuthorizationStatus:I = 0x29

.field public static final TRANSACTION_getUserProfileName:I = 0x1d

.field public static final TRANSACTION_hasLogin:I = 0x1

.field public static final TRANSACTION_hideBackView:I = 0x1b

.field public static final TRANSACTION_isAutoAccountAuthorized:I = 0x15

.field public static final TRANSACTION_isBackShow:I = 0x19

.field public static final TRANSACTION_isThirdAppAuthorized:I = 0x21

.field public static final TRANSACTION_launchLogin:I = 0x3

.field public static final TRANSACTION_launchLoginForResult:I = 0x28

.field public static final TRANSACTION_launchLoginWithParam:I = 0x4

.field public static final TRANSACTION_launchToFeedbackContent:I = 0x22

.field public static final TRANSACTION_launchToLogin:I = 0xe

.field public static final TRANSACTION_launchToUserFeedback:I = 0x12

.field public static final TRANSACTION_login:I = 0x8

.field public static final TRANSACTION_logout:I = 0x9

.field public static final TRANSACTION_notifyTokenExpired:I = 0x7

.field public static final TRANSACTION_refreshToken:I = 0xb

.field public static final TRANSACTION_refreshUserInfo:I = 0x10

.field public static final TRANSACTION_restartRecognition:I = 0x24

.field public static final TRANSACTION_saveUserProfile:I = 0x1f

.field public static final TRANSACTION_sendAutoAccountInfo:I = 0x14

.field public static final TRANSACTION_setCommonData:I = 0x26

.field public static final TRANSACTION_setCurrentUserProfile:I = 0x1e

.field public static final TRANSACTION_setEmergencyMobile:I = 0xd

.field public static final TRANSACTION_setLoginCallback:I = 0x6

.field public static final TRANSACTION_showBackView:I = 0x1a

.field public static final TRANSACTION_startRecognition:I = 0x23

.field public static final TRANSACTION_submitFeedback:I = 0x25

.field public static final TRANSACTION_unregisterLoginCallback:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.geely.lib.oneosapi.user.IUserService"

    .line 2
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/IUserService;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.geely.lib.oneosapi.user.IUserService"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Lcom/geely/lib/oneosapi/user/IUserService;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/geely/lib/oneosapi/user/IUserService;

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lcom/geely/lib/oneosapi/user/IUserService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/user/IUserService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/geely/lib/oneosapi/user/IUserService;
    .locals 1

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/user/IUserService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/user/IUserService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/geely/lib/oneosapi/user/IUserService;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/geely/lib/oneosapi/user/IUserService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/user/IUserService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 5
    sput-object p0, Lcom/geely/lib/oneosapi/user/IUserService$Stub$Proxy;->sDefaultImpl:Lcom/geely/lib/oneosapi/user/IUserService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.geely.lib.oneosapi.user.IUserService"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_b

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 2
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_0

    move v2, v0

    .line 7
    :cond_0
    invoke-interface {p0, p1, v2}, Lcom/geely/lib/oneosapi/user/IUserService;->deleteHistoricalAccountInfo(Ljava/lang/String;Z)Z

    move-result p1

    .line 8
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 9
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 10
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/user/IAuthorizeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/IAuthorizeCallback;

    move-result-object p2

    .line 15
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->getUserAuthorizationStatus(Ljava/lang/String;Lcom/geely/lib/oneosapi/user/IAuthorizeCallback;)Z

    move-result p1

    .line 16
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 17
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 18
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/user/ILaunchLoginResultCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/ILaunchLoginResultCallback;

    move-result-object p2

    .line 25
    invoke-interface {p0, p1, p4, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->launchLoginForResult(Ljava/lang/String;ILcom/geely/lib/oneosapi/user/ILaunchLoginResultCallback;)Z

    move-result p1

    .line 26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 27
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 28
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 31
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->getCommonData(I)Ljava/lang/String;

    move-result-object p1

    .line 32
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 33
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 34
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 39
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->setCommonData(Ljava/lang/String;I)V

    .line 40
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 41
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/user/IFeedbackListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/IFeedbackListener;

    move-result-object p1

    .line 44
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->submitFeedback(Lcom/geely/lib/oneosapi/user/IFeedbackListener;)V

    .line 45
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 46
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 47
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->restartRecognition()V

    .line 48
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 49
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->startRecognition()V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 52
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    .line 55
    :cond_1
    invoke-interface {p0, v2}, Lcom/geely/lib/oneosapi/user/IUserService;->launchToFeedbackContent(Z)Z

    move-result p1

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 58
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/user/IThirdAppAuthCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/IThirdAppAuthCallback;

    move-result-object p2

    .line 63
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->isThirdAppAuthorized(Ljava/lang/String;Lcom/geely/lib/oneosapi/user/IThirdAppAuthCallback;)Z

    move-result p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 66
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->getAccountInfo()Lcom/geely/lib/oneosapi/user/bean/AccountInfo;

    move-result-object p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 70
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    invoke-virtual {p1, p3, v0}, Lcom/geely/lib/oneosapi/user/bean/AccountInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 75
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->saveUserProfile(Ljava/lang/String;)Z

    move-result p1

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 81
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->setCurrentUserProfile(Ljava/lang/String;)Z

    move-result p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 87
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->getUserProfileName()Ljava/lang/String;

    move-result-object p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 91
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->getCurrentUserProfile()Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 95
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->hideBackView()Z

    move-result p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 99
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->showBackView()Z

    move-result p1

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 103
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->isBackShow()Z

    move-result p1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 107
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/geely/lib/oneosapi/user/IScanQRCodeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/IScanQRCodeListener;

    move-result-object p2

    .line 112
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->getLoginQrcode(Ljava/lang/String;Lcom/geely/lib/oneosapi/user/IScanQRCodeListener;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 114
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 119
    invoke-interface {p0, p1, p2}, Lcom/geely/lib/oneosapi/user/IUserService;->getPolicyContent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 122
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->getSourceAccountInfo()Lcom/geely/lib/oneosapi/user/bean/SourceAccountInfo;

    move-result-object p1

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 126
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {p1, p3, v0}, Lcom/geely/lib/oneosapi/user/bean/SourceAccountInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 131
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/user/IAuthorizeCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/IAuthorizeCallback;

    move-result-object p1

    .line 134
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->isAutoAccountAuthorized(Lcom/geely/lib/oneosapi/user/IAuthorizeCallback;)Z

    move-result p1

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 137
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/user/IAutoAccountInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/IAutoAccountInfo;

    move-result-object p1

    .line 140
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->sendAutoAccountInfo(Lcom/geely/lib/oneosapi/user/IAutoAccountInfo;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 142
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 145
    sget-object p1, Lcom/geely/lib/oneosapi/user/bean/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/geely/lib/oneosapi/user/bean/UserInfo;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 150
    :goto_2
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->fastLogin(Lcom/geely/lib/oneosapi/user/bean/UserInfo;)Z

    move-result p2

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-eqz p1, :cond_5

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    invoke-virtual {p1, p3, v0}, Lcom/geely/lib/oneosapi/user/bean/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    .line 158
    :cond_5
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v0

    .line 159
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    move v2, v0

    .line 162
    :cond_6
    invoke-interface {p0, v2}, Lcom/geely/lib/oneosapi/user/IUserService;->launchToUserFeedback(Z)Z

    move-result p1

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 165
    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->getHistoricalAccountInfo()Ljava/util/List;

    move-result-object p1

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 169
    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->refreshUserInfo()Lcom/geely/lib/oneosapi/user/bean/UserInfo;

    move-result-object p1

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 173
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    invoke-virtual {p1, p3, v0}, Lcom/geely/lib/oneosapi/user/bean/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    .line 177
    :cond_7
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    return v0

    .line 178
    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/user/ILoginCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/ILoginCallback;

    move-result-object p1

    .line 181
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->unregisterLoginCallback(Lcom/geely/lib/oneosapi/user/ILoginCallback;)Z

    move-result p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 184
    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    move v2, v0

    .line 187
    :cond_8
    invoke-interface {p0, v2}, Lcom/geely/lib/oneosapi/user/IUserService;->launchToLogin(Z)Z

    move-result p1

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 190
    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 193
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->setEmergencyMobile(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 195
    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->getEmergencyMobile()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 199
    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->refreshToken()Ljava/lang/String;

    move-result-object p1

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 203
    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->getToken()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 207
    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->logout()Z

    move-result p1

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 211
    :pswitch_22
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->login(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 217
    :pswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->notifyTokenExpired()Z

    move-result p1

    .line 219
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 221
    :pswitch_24
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/lib/oneosapi/user/ILoginCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/oneosapi/user/ILoginCallback;

    move-result-object p1

    .line 224
    invoke-interface {p0, p1}, Lcom/geely/lib/oneosapi/user/IUserService;->setLoginCallback(Lcom/geely/lib/oneosapi/user/ILoginCallback;)Z

    move-result p1

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 227
    :pswitch_25
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->getLoginUser()Lcom/geely/lib/oneosapi/user/bean/UserInfo;

    move-result-object p1

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 231
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    invoke-virtual {p1, p3, v0}, Lcom/geely/lib/oneosapi/user/bean/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    .line 235
    :cond_9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v0

    .line 236
    :pswitch_26
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_a

    move v2, v0

    .line 243
    :cond_a
    invoke-interface {p0, p1, p4, v2}, Lcom/geely/lib/oneosapi/user/IUserService;->launchLoginWithParam(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 246
    :pswitch_27
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->launchLogin()Z

    move-result p1

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 250
    :pswitch_28
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 254
    :pswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-interface {p0}, Lcom/geely/lib/oneosapi/user/IUserService;->hasLogin()Z

    move-result p1

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 258
    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
