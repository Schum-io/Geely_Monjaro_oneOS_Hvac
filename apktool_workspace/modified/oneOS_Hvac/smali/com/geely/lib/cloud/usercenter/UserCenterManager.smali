.class public Lcom/geely/lib/cloud/usercenter/UserCenterManager;
.super Ljava/lang/Object;
.source "UserCenterManager.java"

# interfaces
.implements Lcom/geely/lib/cloud/common/ServiceBaseManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "UserCenterManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "binder"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {p2}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    return-void
.end method


# virtual methods
.method public getAgreementComparisonDetails(Lcom/geely/lib/cloud/usercenter/bean/DocParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "docParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getAgreementComparisonDetails"

    .line 902
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 905
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$26;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$26;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getAgreementComparisonDetails(Lcom/geely/lib/cloud/usercenter/bean/DocParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 922
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 925
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAgreementPrivacyRecords(Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "recordsParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getAgreementPrivacyRecords"

    .line 834
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 837
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$24;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$24;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getAgreementPrivacyRecords(Lcom/geely/lib/cloud/usercenter/bean/RecordsParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 854
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 857
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getAgreementResults(Lcom/geely/lib/cloud/usercenter/bean/DocParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "docParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getAgreementResults"

    .line 868
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 871
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$25;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$25;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getAgreementResults(Lcom/geely/lib/cloud/usercenter/bean/DocParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 888
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 891
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getDownloadUrl(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getDownloadUrl"

    .line 1292
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1294
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1295
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$38;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$38;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getDownloadUrl(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1312
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1315
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getHimaUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "thirdTypeParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getHimaUnboundAccount"

    .line 1145
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1148
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$33;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$33;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getHimaUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1165
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1168
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getNeteaseBindQrcode(Lcom/geely/lib/cloud/usercenter/bean/TokenParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "tokenParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getNeteaseBindQrcode"

    .line 1075
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1078
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$31;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$31;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getNeteaseBindQrcode(Lcom/geely/lib/cloud/usercenter/bean/TokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1095
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1098
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getNeteaseUnboundAccount(Lcom/geely/lib/cloud/usercenter/bean/TokenParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "tokenParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getNeteaseUnboundAccount"

    .line 1110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1113
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$32;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$32;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getNeteaseUnboundAccount(Lcom/geely/lib/cloud/usercenter/bean/TokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1130
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1133
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getPrivacyDetail(Lcom/geely/lib/cloud/usercenter/bean/PrivacyDetailParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "privacyDetailParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getPrivacyDetail"

    .line 1264
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1267
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$37;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$37;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getPrivacyDetail(Lcom/geely/lib/cloud/usercenter/bean/PrivacyDetailParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1284
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1287
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getPrivacyHistory(Lcom/geely/lib/cloud/usercenter/bean/PrivacyHistoryParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "privacyHistoryParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getPrivacyHistory"

    .line 1236
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1239
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$36;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$36;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getPrivacyHistory(Lcom/geely/lib/cloud/usercenter/bean/PrivacyHistoryParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1256
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1259
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getPrivacyRecords(Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "privacyRecordsParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getPrivacyRecords"

    .line 1208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1211
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$35;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$35;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getPrivacyRecords(Lcom/geely/lib/cloud/usercenter/bean/PrivacyRecordsParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1228
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1231
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getThirdAccount(Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "thirdAccountParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getThirdAccount"

    .line 936
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 939
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$27;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$27;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getThirdAccount(Lcom/geely/lib/cloud/usercenter/bean/ThirdAccountParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 956
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 959
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getThirdBindAppList(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getThirdBindAppList"

    .line 969
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 972
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$28;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$28;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getThirdBindAppList(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 989
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 992
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getThirdBindStatus(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "thirdType",
            "action",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getThirdBindStatus"

    .line 1005
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1008
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$29;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$29;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getThirdBindStatus(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1025
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1028
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getThirdSwitchStatus(Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "switchParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getThirdSwitchStatus"

    .line 1180
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1183
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$34;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$34;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getThirdSwitchStatus(Lcom/geely/lib/cloud/usercenter/bean/SwitchParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1200
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1203
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getTodayRadioUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "thirdTypeParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getTodayRadioUnboundAccount"

    .line 1040
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1043
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$30;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$30;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getTodayRadioUnboundAccount(Lcom/geely/lib/cloud/trilateral/bean/ThirdTypeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1060
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1063
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserAPPOwnerQrcode(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserAPPOwnerQrcode"

    .line 396
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 399
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$11;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$11;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserAPPOwnerQrcode(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 416
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 419
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserApplicationAdd(Lcom/geely/lib/cloud/usercenter/bean/ApkParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "apkparam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserApplicationAdd"

    .line 800
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 803
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$23;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$23;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserApplicationAdd(Lcom/geely/lib/cloud/usercenter/bean/ApkParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 820
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 823
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserApplicationList(Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "vehicleModel",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserApplicationList"

    .line 766
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 769
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$22;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$22;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserApplicationList(Lcom/geely/lib/cloud/usercenter/bean/VehicleModelParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 786
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 789
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserHabitVehicleDownload(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserHabitVehicleDownload"

    .line 463
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 466
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$13;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$13;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserHabitVehicleDownload(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 483
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 486
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserHabitVehicleUpload(Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "profileParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserHabitVehicleUpload"

    .line 430
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 433
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$12;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$12;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserHabitVehicleUpload(Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 450
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 453
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserInfo(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserInfo"

    .line 496
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 499
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$14;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$14;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserInfo(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 516
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 519
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserLoginConfirm(Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "terminalId",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserLoginConfirm"

    .line 127
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 130
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$3;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$3;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginConfirm(Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 147
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 150
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserLoginLogout(Lcom/geely/lib/cloud/usercenter/bean/UserLogoutParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "userLogoutParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserLoginLogout"

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 232
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$6;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$6;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginLogout(Lcom/geely/lib/cloud/usercenter/bean/UserLogoutParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 249
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserLoginQrcode(Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "getQrCodeParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserLoginQrcode"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$1;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$1;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginQrcode(Lcom/geely/lib/cloud/usercenter/bean/GetQrCodeParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 79
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserLoginQrcodeStatus(Lcom/geely/lib/cloud/usercenter/bean/QrCodeStatusParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "qrCodeStatusParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserLoginQrcodeStatus"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 96
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$2;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$2;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginQrcodeStatus(Lcom/geely/lib/cloud/usercenter/bean/QrCodeStatusParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserLoginRefresh(Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "refreshTokenParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserLoginRefresh"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 198
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$5;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$5;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginRefresh(Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 215
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 218
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserLoginSync(Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam1;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "refreshToken",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserLoginSync"

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 366
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$10;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$10;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginSync(Lcom/geely/lib/cloud/usercenter/bean/RefreshTokenParam1;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 383
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 386
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserLoginUserInfo(Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "terminalId",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserLoginUserInfo"

    .line 161
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 164
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$4;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$4;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserLoginUserInfo(Lcom/geely/lib/cloud/usercenter/bean/TerminalIdParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 181
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 184
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserMessageSend(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserMessageSend"

    .line 698
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 701
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$20;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$20;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserMessageSend(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 718
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 721
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserMessageVerify(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "verificationCode",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserMessageVerify"

    .line 732
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 735
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$21;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$21;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserMessageVerify(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 752
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 755
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserPhone(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserPhone"

    .line 665
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 668
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$19;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$19;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserPhone(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 685
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 688
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserRelationAdd(Lcom/geely/lib/cloud/usercenter/bean/PhoneParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "phone",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getWeatherCitys"

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 299
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$8;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$8;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserRelationAdd(Lcom/geely/lib/cloud/usercenter/bean/PhoneParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 316
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 319
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserRelationDelete(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "userId",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserRelationDelete"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 332
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$9;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$9;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserRelationDelete(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 349
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 352
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserRelationList(Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserRelationList"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 265
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$7;

    invoke-direct {v0, p0, p1}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$7;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserRelationList(Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 282
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 285
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserScopeConfirm(Lcom/geely/lib/cloud/usercenter/bean/ScopeConfirmParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "scopeConfirmParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserScopeConfirm"

    .line 632
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 635
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$18;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$18;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserScopeConfirm(Lcom/geely/lib/cloud/usercenter/bean/ScopeConfirmParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 652
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 655
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserScopeInfo(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "scope",
            "brandCode",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserScopeInfo"

    .line 598
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 601
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$17;

    invoke-direct {v0, p0, p3}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$17;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, p2, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserScopeInfo(Ljava/lang/String;Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 618
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 621
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserSettingsDownload(Ljava/lang/String;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "model",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserSettingsDownload"

    .line 563
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 566
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$16;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$16;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserSettingsDownload(Ljava/lang/String;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 583
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 586
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getUserSettingsUpload(Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "profileParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "getUserSettingsUpload"

    .line 530
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 533
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$15;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$15;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->getUserSettingsUpload(Lcom/geely/lib/cloud/usercenter/bean/ProfileParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 550
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 553
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public postRegisterAdd(Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;Lcom/geely/lib/cloud/listener/OperationListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "postDeviceAddParam",
            "callback"
        }
    .end annotation

    const-string v0, "UserCenterManager"

    const-string v1, "postRegisterAdd"

    .line 1321
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    if-eqz v1, :cond_0

    .line 1324
    new-instance v0, Lcom/geely/lib/cloud/usercenter/UserCenterManager$39;

    invoke-direct {v0, p0, p2}, Lcom/geely/lib/cloud/usercenter/UserCenterManager$39;-><init>(Lcom/geely/lib/cloud/usercenter/UserCenterManager;Lcom/geely/lib/cloud/listener/OperationListener;)V

    invoke-interface {v1, p1, v0}, Lcom/geely/lib/cloud/usercenter/IUserCenter;->postRegisterAdd(Lcom/geely/lib/cloud/usercenter/bean/PostDeviceAddParam;Lcom/geely/lib/cloud/ICloudCallback;)V

    goto :goto_0

    :cond_0
    const-string p1, "service is null"

    .line 1341
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1344
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "binder"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 48
    invoke-static {p1}, Lcom/geely/lib/cloud/usercenter/IUserCenter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/geely/lib/cloud/usercenter/IUserCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/lib/cloud/usercenter/UserCenterManager;->mService:Lcom/geely/lib/cloud/usercenter/IUserCenter;

    :cond_0
    return-void
.end method
