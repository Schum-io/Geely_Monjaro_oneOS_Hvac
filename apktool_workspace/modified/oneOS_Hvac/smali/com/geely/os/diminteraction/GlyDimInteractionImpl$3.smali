.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/geely/os/diminteraction/IGlyContactsInteraction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->getContactsInteraction()Lcom/geely/os/diminteraction/IGlyContactsInteraction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerContactsInteractionCallback(Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;->registerContactsInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterContactsInteractionCallback(Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;

    move-result-object p1

    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$200(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;->registerContactsInteractionCallback(Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;)V

    :cond_0
    return-void
.end method

.method public updateCallLogList(Ljava/util/List;)V
    .locals 3
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

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/os/diminteraction/IGlyCallLog;

    .line 110
    new-instance v2, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;

    invoke-direct {v2, p0, v1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$1;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;Lcom/geely/os/diminteraction/IGlyCallLog;)V

    .line 141
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;->updateCallLogList(Ljava/util/List;)V

    return-void
.end method

.method public updateContacts(ILjava/util/List;)V
    .locals 3
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

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 151
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/os/diminteraction/IGlyContact;

    .line 152
    new-instance v2, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$2;

    invoke-direct {v2, p0, v1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$2;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;Lcom/geely/os/diminteraction/IGlyContact;)V

    .line 174
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p2}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;->updateContacts(ILjava/util/List;)V

    return-void
.end method

.method public updateSearchContacts(ILjava/util/List;Ljava/lang/String;)V
    .locals 3
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

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    .line 184
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/os/diminteraction/IGlyContact;

    .line 185
    new-instance v2, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$3;

    invoke-direct {v2, p0, v1}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3$3;-><init>(Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;Lcom/geely/os/diminteraction/IGlyContact;)V

    .line 207
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_0
    iget-object p2, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$3;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {p2}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$300(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;

    move-result-object p2

    invoke-interface {p2, p1, v0, p3}, Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction;->updateSearchContacts(ILjava/util/List;Ljava/lang/String;)V

    return-void
.end method
