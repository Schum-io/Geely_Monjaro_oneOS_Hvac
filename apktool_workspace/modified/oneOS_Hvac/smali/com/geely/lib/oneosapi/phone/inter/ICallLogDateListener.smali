.class public interface abstract Lcom/geely/lib/oneosapi/phone/inter/ICallLogDateListener;
.super Ljava/lang/Object;
.source "ICallLogDateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/phone/inter/ICallLogDateListener$Stub;,
        Lcom/geely/lib/oneosapi/phone/inter/ICallLogDateListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCallLogDate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callLogList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/lib/oneosapi/phone/telecom/GlyCallLogInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
