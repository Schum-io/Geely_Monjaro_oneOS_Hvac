.class public interface abstract Lcom/geely/lib/oneosapi/wechat/IWeChatManager;
.super Ljava/lang/Object;
.source "IWeChatManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/wechat/IWeChatManager$Stub;,
        Lcom/geely/lib/oneosapi/wechat/IWeChatManager$Default;
    }
.end annotation


# virtual methods
.method public abstract getWeChatVoipState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
