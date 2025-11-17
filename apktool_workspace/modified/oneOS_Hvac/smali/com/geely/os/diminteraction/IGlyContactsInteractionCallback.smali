.class public interface abstract Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;
.super Ljava/lang/Object;
.source "IGlyContactsInteractionCallback.java"


# virtual methods
.method public abstract onDoContactInteractionAction(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "action",
            "contactNumber"
        }
    .end annotation
.end method

.method public abstract onSearchContacts(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "keyword"
        }
    .end annotation
.end method
