.class public abstract Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;
.super Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;
.source "MusicQueryCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback<",
        "Lcom/geely/lib/oneosapi/mediacenter/callback/IMusicQueryCallback;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;-><init>()V

    .line 2
    new-instance v0, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;

    invoke-direct {v0, p0}, Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback$1;-><init>(Lcom/geely/lib/oneosapi/mediacenter/callback/MusicQueryCallback;)V

    invoke-virtual {p0, v0}, Lcom/geely/lib/oneosapi/mediacenter/base/BaseCallback;->setCallbackImpl(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public abstract onError(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation
.end method

.method public abstract onSuccess(ILjava/lang/String;)V
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
.end method
