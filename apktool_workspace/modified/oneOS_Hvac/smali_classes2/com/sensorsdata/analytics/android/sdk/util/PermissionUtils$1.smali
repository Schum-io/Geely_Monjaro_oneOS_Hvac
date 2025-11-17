.class final Lcom/sensorsdata/analytics/android/sdk/util/PermissionUtils$1;
.super Ljava/util/HashSet;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sensorsdata/analytics/android/sdk/util/PermissionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const-string v0, "android.permission.ACCESS_WIFI_STATE"

    .line 37
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/PermissionUtils$1;->add(Ljava/lang/Object;)Z

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 38
    invoke-virtual {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/util/PermissionUtils$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
