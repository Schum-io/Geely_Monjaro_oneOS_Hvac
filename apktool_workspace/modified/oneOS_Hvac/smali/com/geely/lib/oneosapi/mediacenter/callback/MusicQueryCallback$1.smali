.class public Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;
.super Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback$Stub;
.source "MusicQueryCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;


# direct methods
.method public constructor <init>(Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;)V
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
    iput-object p1, p0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;->this$0:Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;

    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$2;

    invoke-direct {v1, p0, p1}, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$2;-><init>(Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
