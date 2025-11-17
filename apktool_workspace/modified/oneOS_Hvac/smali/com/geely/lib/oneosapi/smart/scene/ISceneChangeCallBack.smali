.class public interface abstract Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack;
.super Ljava/lang/Object;
.source "ISceneChangeCallBack.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack$Stub;,
        Lcom/geely/lib/oneosapi/smart/scene/ISceneChangeCallBack$Default;
    }
.end annotation


# virtual methods
.method public abstract onSceneChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/smart/bean/SceneInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
