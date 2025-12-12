.class public interface abstract Lcom/geely/os/diminteraction/IGlyContactsInteraction;
.super Ljava/lang/Object;
.source "IGlyContactsInteraction.java"


# virtual methods
.method public abstract registerContactsInteractionCallback(Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract unregisterContactsInteractionCallback(Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract updateCallLogList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callLogs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/geely/os/diminteraction/IGlyCallLog;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateContacts(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "contacts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/geely/os/diminteraction/IGlyContact;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSearchContacts(ILjava/util/List;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "contacts",
            "keyword"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/geely/os/diminteraction/IGlyContact;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
