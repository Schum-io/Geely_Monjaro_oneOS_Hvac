.class public Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;
.super Lcom/sensorsdata/analytics/android/sdk/core/event/Event;
.source "TrackEvent.java"


# instance fields
.field private mAnonymousId:Ljava/lang/String;

.field private mDistinctId:Ljava/lang/String;

.field private mEventName:Ljava/lang/String;

.field private mIdentities:Lorg/json/JSONObject;

.field private mItemId:Ljava/lang/String;

.field private mItemType:Ljava/lang/String;

.field private mLoginId:Ljava/lang/String;

.field private mOriginalId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/Event;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnonymousId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mAnonymousId:Ljava/lang/String;

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mDistinctId:Ljava/lang/String;

    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentities()Lorg/json/JSONObject;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mIdentities:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getItemId()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mItemType:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mLoginId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mOriginalId:Ljava/lang/String;

    return-object v0
.end method

.method public setAnonymousId(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mAnonymousId:Ljava/lang/String;

    return-void
.end method

.method public setDistinctId(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mDistinctId:Ljava/lang/String;

    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mEventName:Ljava/lang/String;

    return-void
.end method

.method public setIdentities(Lorg/json/JSONObject;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mIdentities:Lorg/json/JSONObject;

    return-void
.end method

.method public setItemId(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mItemId:Ljava/lang/String;

    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mItemType:Ljava/lang/String;

    return-void
.end method

.method public setLoginId(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mLoginId:Ljava/lang/String;

    return-void
.end method

.method public setOriginalId(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->mOriginalId:Ljava/lang/String;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .line 43
    :try_start_0
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getExtras()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0

    .line 46
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getTrackId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    const-string v1, "_track_id"

    .line 48
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "time"

    .line 50
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 51
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "distinct_id"

    .line 52
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getDistinctId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "anonymous_id"

    .line 53
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getAnonymousId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getIdentities()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "identities"

    .line 55
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getIdentities()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getProject()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "project"

    .line 58
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getProject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    :cond_3
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "token"

    .line 61
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    :cond_4
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "event"

    .line 64
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getEventName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    :cond_5
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "original_id"

    .line 67
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getOriginalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_6
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getLoginId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "login_id"

    .line 70
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getLoginId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    :cond_7
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getItemType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "item_type"

    .line 73
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getItemType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    :cond_8
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getItemId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "item_id"

    .line 76
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getItemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    const-string v1, "lib"

    .line 79
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getLib()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "properties"

    .line 80
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/core/event/TrackEvent;->getProperties()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method
