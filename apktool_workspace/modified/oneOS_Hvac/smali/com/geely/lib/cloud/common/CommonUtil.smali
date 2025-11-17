.class public Lcom/geely/lib/cloud/common/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataCallBack(Lcom/geely/lib/cloud/listener/OperationListener;)Lcom/geely/lib/cloud/ICloudCallback;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    new-instance v0, Lcom/geely/lib/cloud/common/CommonUtil$1;

    invoke-direct {v0, p0}, Lcom/geely/lib/cloud/common/CommonUtil$1;-><init>(Lcom/geely/lib/cloud/listener/OperationListener;)V

    return-object v0
.end method
