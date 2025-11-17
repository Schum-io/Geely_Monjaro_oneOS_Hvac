.class public Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;
.super Ljava/lang/Object;
.source "SADeepLinkObject.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAppAwakePassedTime:J

.field private mChannels:Ljava/lang/String;

.field private mCustomParams:Lorg/json/JSONObject;

.field private mParams:Ljava/lang/String;

.field private success:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;ZJ)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;->mParams:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;->mChannels:Ljava/lang/String;

    .line 49
    iput-boolean p4, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;->success:Z

    .line 50
    iput-object p2, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;->mCustomParams:Lorg/json/JSONObject;

    .line 51
    iput-wide p5, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;->mAppAwakePassedTime:J

    return-void
.end method


# virtual methods
.method public getAppAwakePassedTime()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;->mAppAwakePassedTime:J

    return-wide v0
.end method

.method public getChannels()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;->mChannels:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomParams()Lorg/json/JSONObject;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;->mCustomParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getParams()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;->mParams:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/sensorsdata/analytics/android/sdk/deeplink/SADeepLinkObject;->success:Z

    return v0
.end method
