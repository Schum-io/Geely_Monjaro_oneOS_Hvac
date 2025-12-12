.class Lcom/geely/os/tbox/GlyTBoxImpl$3;
.super Ljava/lang/Object;
.source "GlyTBoxImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/tbox/tboxmessager/ITBoxMessager$TBoxMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/os/tbox/GlyTBoxImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/tbox/GlyTBoxImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/tbox/GlyTBoxImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$3;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onTBoxMessageGet$0(Ljava/lang/Object;ILcom/geely/os/tbox/GlyTBoxMessageCallback;)V
    .locals 0

    .line 39
    invoke-interface {p2, p0, p1}, Lcom/geely/os/tbox/GlyTBoxMessageCallback;->onTBoxMessageGet(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public onTBoxMessageGet(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "o",
            "i"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$3;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$200(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$3$Rrm2g8EjO0gC1pzzUbEFhvivm0k;

    invoke-direct {v1, p1, p2}, Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$3$Rrm2g8EjO0gC1pzzUbEFhvivm0k;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
