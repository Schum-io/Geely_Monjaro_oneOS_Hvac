.class public Lcom/geely/lib/oneosapi/recommendation/manager/AnalyticsManager;
.super Ljava/lang/Object;
.source "AnalyticsManager.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/geely/lib/oneosapi/recommendation/manager/AnalyticsManager;->mContext:Landroid/content/Context;

    return-void
.end method
