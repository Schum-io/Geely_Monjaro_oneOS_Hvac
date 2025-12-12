.class Lcom/geely/os/diminteraction/GlyDimInteractionImpl$2;
.super Ljava/lang/Object;
.source "GlyDimInteractionImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/diminteraction/IContactsInteraction$IContactsInteractionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/diminteraction/GlyDimInteractionImpl;
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

    .line 51
    iput-object p1, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$2;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onDoContactInteractionAction$0(ILjava/lang/String;Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;)V
    .locals 0

    .line 54
    invoke-interface {p2, p0, p1}, Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;->onDoContactInteractionAction(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onSearchContacts$1(ILjava/lang/String;Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;)V
    .locals 0

    .line 59
    invoke-interface {p2, p0, p1}, Lcom/geely/os/diminteraction/IGlyContactsInteractionCallback;->onSearchContacts(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDoContactInteractionAction(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "s"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$2;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$2$oOZqPh4WLwtoJbxAl2jTWrC8gTk;

    invoke-direct {v1, p1, p2}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$2$oOZqPh4WLwtoJbxAl2jTWrC8gTk;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onSearchContacts(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "s"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/geely/os/diminteraction/GlyDimInteractionImpl$2;->this$0:Lcom/geely/os/diminteraction/GlyDimInteractionImpl;

    invoke-static {v0}, Lcom/geely/os/diminteraction/GlyDimInteractionImpl;->access$100(Lcom/geely/os/diminteraction/GlyDimInteractionImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$2$gBB1bufXEAgYOGdMUhFoo8hEuds;

    invoke-direct {v1, p1, p2}, Lcom/geely/os/diminteraction/-$$Lambda$GlyDimInteractionImpl$2$gBB1bufXEAgYOGdMUhFoo8hEuds;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
