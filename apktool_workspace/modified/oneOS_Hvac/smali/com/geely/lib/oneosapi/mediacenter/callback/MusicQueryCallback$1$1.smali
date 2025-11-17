.class public Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$1;
.super Ljava/lang/Object;
.source "MusicQueryCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;->onSuccess(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;

.field public final synthetic val$code:I

.field public final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$1",
            "val$code",
            "val$name"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$1;->val$code:I

    iput-object p3, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$1;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;

    iget v1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$1;->val$code:I

    iget-object v2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;->onSuccess(ILjava/lang/String;)V

    return-void
.end method
