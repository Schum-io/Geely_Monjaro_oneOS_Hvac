.class public Lcom/geely/lib/oneosapi/bean/NewsMediaBean;
.super Lcom/geely/lib/oneosapi/bean/BaseMediaBean;
.source "NewsMediaBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field public publishTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/bean/BaseMediaBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getPublishTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/bean/NewsMediaBean;->publishTime:Ljava/lang/String;

    return-object v0
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publishTime"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/bean/NewsMediaBean;->publishTime:Ljava/lang/String;

    return-void
.end method
