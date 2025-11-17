.class public Lcom/geely/lib/oneosapi/navi/NaviManager$5;
.super Ljava/lang/Object;
.source "NaviManager.java"

# interfaces
.implements Lcom/geely/lib/oneosapi/navi/INaviAPICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/navi/NaviManager;->launchMap()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/navi/NaviManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/NaviManager$5;->this$0:Lcom/geely/lib/oneosapi/navi/NaviManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/geely/lib/oneosapi/navi/model/base/NaviErrorModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviErrorModel"
        }
    .end annotation

    return-void
.end method

.method public onSuccess(Lcom/geely/lib/oneosapi/navi/model/base/NaviBaseModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "naviBaseModel"
        }
    .end annotation

    return-void
.end method
