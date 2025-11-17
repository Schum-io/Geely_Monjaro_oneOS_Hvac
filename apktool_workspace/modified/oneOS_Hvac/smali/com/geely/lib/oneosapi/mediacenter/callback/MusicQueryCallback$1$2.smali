.class public Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$2;
.super Ljava/lang/Object;
.source "MusicQueryCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;->onError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;

.field public final synthetic val$code:I


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$code"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$2;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;

    iput p2, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$2;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$2;->this$1:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;

    iget-object v0, v0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;

    iget v1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$2;->val$code:I

    invoke-virtual {v0, v1}, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;->onError(I)V

    return-void
.end method
