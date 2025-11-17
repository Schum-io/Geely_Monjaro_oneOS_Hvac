.class public Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1$1;
.super Ljava/lang/Object;
.source "UserInfoCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1;->onUserInfoResult(IILcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1;

.field public final synthetic val$app:I

.field public final synthetic val$source:I

.field public final synthetic val$userInfo:Lcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1;IILcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$source",
            "val$app",
            "val$userInfo"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1$1;->val$source:I

    iput p3, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1$1;->val$app:I

    iput-object p4, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1$1;->val$userInfo:Lcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback;

    iget v1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1$1;->val$source:I

    .line 2
    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1$1;->val$app:I

    .line 3
    invoke-static {v2}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAppSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v2

    iget-object v3, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback$1$1;->val$userInfo:Lcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/geely/lib/oneosapi/mediacenter/callback/UserInfoCallback;->onUserInfoResult(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Lcom/geely/lib/oneosapi/mediacenter/bean/OnlineUserInfo;)V

    return-void
.end method
