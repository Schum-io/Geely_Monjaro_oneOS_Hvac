.class public Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1$1;
.super Ljava/lang/Object;
.source "ContentCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1;->onContentResult(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1;

.field public final synthetic val$app:I

.field public final synthetic val$content:Ljava/lang/String;

.field public final synthetic val$source:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1;IILjava/lang/String;)V
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
            "val$content"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1$1;->val$source:I

    iput p3, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1$1;->val$app:I

    iput-object p4, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback;

    iget v1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1$1;->val$source:I

    invoke-static {v1}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAudioSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;

    move-result-object v1

    iget v2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1$1;->val$app:I

    .line 2
    invoke-static {v2}, Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant;->getAppSourceEnum(I)Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;

    move-result-object v2

    iget-object v3, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback$1$1;->val$content:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Lcom/geely/lib/oneosapi/mediacenter/callback/ContentCallback;->onContentResult(Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AudioSource;Lcom/geely/lib/oneosapi/mediacenter/constant/MediaCenterConstant$AppSource;Ljava/lang/String;)V

    return-void
.end method
