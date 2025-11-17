.class Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;
.super Ljava/lang/Object;
.source "GetAppDetailsResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "App"
.end annotation


# instance fields
.field private UpdateTime:Ljava/lang/String;

.field private activityCode:Ljava/lang/String;

.field private apkHash:Ljava/lang/String;

.field private apkId:Ljava/lang/String;

.field private apkPath:Ljava/lang/String;

.field private apkSize:Ljava/lang/String;

.field private appDownNumbers:Ljava/lang/String;

.field private appPackageType:Ljava/lang/String;

.field private appSign:Ljava/lang/String;

.field private bindType:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private developer:Ljava/lang/String;

.field private features:Ljava/lang/String;

.field private forceUpdate:Ljava/lang/String;

.field private hasLinkedApps:Z

.field private icon:Ljava/lang/String;

.field private isAffectDrivingSafety:Z

.field private isPopupWarmTip:Z

.field private linkedDescription:Ljava/lang/String;

.field private linkedType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private packageMetaType:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private previews:Ljava/util/List;

.field private recommendAutoUpdateDesc:Ljava/lang/String;

.field private silent:Ljava/lang/String;

.field final synthetic this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;

.field private updateInfo:Ljava/lang/String;

.field private useType:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;

.field private warmTip:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->this$0:Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityCode()Ljava/lang/String;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->activityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getApkHash()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->apkHash:Ljava/lang/String;

    return-object v0
.end method

.method public getApkId()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->apkId:Ljava/lang/String;

    return-object v0
.end method

.method public getApkPath()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method public getApkSize()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->apkSize:Ljava/lang/String;

    return-object v0
.end method

.method public getAppDownNumbers()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->appDownNumbers:Ljava/lang/String;

    return-object v0
.end method

.method public getAppPackageType()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->appPackageType:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSign()Ljava/lang/String;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->appSign:Ljava/lang/String;

    return-object v0
.end method

.method public getBindType()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->bindType:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->developer:Ljava/lang/String;

    return-object v0
.end method

.method public getFeatures()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->features:Ljava/lang/String;

    return-object v0
.end method

.method public getForceUpdate()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->forceUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedDescription()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->linkedDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkedType()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->linkedType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageMetaType()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->packageMetaType:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviews()Ljava/util/List;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->previews:Ljava/util/List;

    return-object v0
.end method

.method public getRecommendAutoUpdateDesc()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->recommendAutoUpdateDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getSilent()Ljava/lang/String;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->silent:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateInfo()Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->updateInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->UpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getUseType()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->useType:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public getWarmTip()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->warmTip:Ljava/lang/String;

    return-object v0
.end method

.method public isAffectDrivingSafety()Z
    .locals 1

    .line 108
    iget-boolean v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->isAffectDrivingSafety:Z

    return v0
.end method

.method public isHasLinkedApps()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->hasLinkedApps:Z

    return v0
.end method

.method public isPopupWarmTip()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->isPopupWarmTip:Z

    return v0
.end method

.method public setActivityCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activityCode"
        }
    .end annotation

    .line 152
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->activityCode:Ljava/lang/String;

    return-void
.end method

.method public setAffectDrivingSafety(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "affectDrivingSafety"
        }
    .end annotation

    .line 112
    iput-boolean p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->isAffectDrivingSafety:Z

    return-void
.end method

.method public setApkHash(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkHash"
        }
    .end annotation

    .line 208
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->apkHash:Ljava/lang/String;

    return-void
.end method

.method public setApkId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkId"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->apkId:Ljava/lang/String;

    return-void
.end method

.method public setApkPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkPath"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->apkPath:Ljava/lang/String;

    return-void
.end method

.method public setApkSize(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apkSize"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->apkSize:Ljava/lang/String;

    return-void
.end method

.method public setAppDownNumbers(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appDownNumbers"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->appDownNumbers:Ljava/lang/String;

    return-void
.end method

.method public setAppPackageType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appPackageType"
        }
    .end annotation

    .line 216
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->appPackageType:Ljava/lang/String;

    return-void
.end method

.method public setAppSign(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "appSign"
        }
    .end annotation

    .line 296
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->appSign:Ljava/lang/String;

    return-void
.end method

.method public setBindType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bindType"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->bindType:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 264
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->description:Ljava/lang/String;

    return-void
.end method

.method public setDeveloper(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "developer"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->developer:Ljava/lang/String;

    return-void
.end method

.method public setFeatures(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "features"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->features:Ljava/lang/String;

    return-void
.end method

.method public setForceUpdate(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "forceUpdate"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->forceUpdate:Ljava/lang/String;

    return-void
.end method

.method public setHasLinkedApps(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasLinkedApps"
        }
    .end annotation

    .line 176
    iput-boolean p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->hasLinkedApps:Z

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "icon"
        }
    .end annotation

    .line 72
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->icon:Ljava/lang/String;

    return-void
.end method

.method public setLinkedDescription(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "linkedDescription"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->linkedDescription:Ljava/lang/String;

    return-void
.end method

.method public setLinkedType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "linkedType"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->linkedType:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->name:Ljava/lang/String;

    return-void
.end method

.method public setPackageMetaType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageMetaType"
        }
    .end annotation

    .line 224
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->packageMetaType:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setPopupWarmTip(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "popupWarmTip"
        }
    .end annotation

    .line 120
    iput-boolean p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->isPopupWarmTip:Z

    return-void
.end method

.method public setPreviews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "previews"
        }
    .end annotation

    .line 240
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->previews:Ljava/util/List;

    return-void
.end method

.method public setRecommendAutoUpdateDesc(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommendAutoUpdateDesc"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->recommendAutoUpdateDesc:Ljava/lang/String;

    return-void
.end method

.method public setSilent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "silent"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->silent:Ljava/lang/String;

    return-void
.end method

.method public setUpdateInfo(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateInfo"
        }
    .end annotation

    .line 248
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->updateInfo:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateTime"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->UpdateTime:Ljava/lang/String;

    return-void
.end method

.method public setUseType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useType"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->useType:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionCode"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->versionCode:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionName"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->versionName:Ljava/lang/String;

    return-void
.end method

.method public setWarmTip(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warmTip"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/geely/lib/cloud/appstore/bean/response/GetAppDetailsResponse$App;->warmTip:Ljava/lang/String;

    return-void
.end method
