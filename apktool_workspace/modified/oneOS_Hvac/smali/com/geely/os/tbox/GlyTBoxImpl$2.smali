.class Lcom/geely/os/tbox/GlyTBoxImpl$2;
.super Ljava/lang/Object;
.source "GlyTBoxImpl.java"

# interfaces
.implements Lcom/ecarx/xui/adaptapi/tbox/ITBoxSettings$IKeylockCallback;


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

    .line 29
    iput-object p1, p0, Lcom/geely/os/tbox/GlyTBoxImpl$2;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onKeylockEnabled$0(ZLcom/geely/os/tbox/IGlyKeyLockCallback;)V
    .locals 0

    .line 32
    invoke-interface {p1, p0}, Lcom/geely/os/tbox/IGlyKeyLockCallback;->onKeylockEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onKeylockEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "b"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/geely/os/tbox/GlyTBoxImpl$2;->this$0:Lcom/geely/os/tbox/GlyTBoxImpl;

    invoke-static {v0}, Lcom/geely/os/tbox/GlyTBoxImpl;->access$100(Lcom/geely/os/tbox/GlyTBoxImpl;)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$2$YTxrJms--IvYG84-hbQUIcdsMXM;

    invoke-direct {v1, p1}, Lcom/geely/os/tbox/-$$Lambda$GlyTBoxImpl$2$YTxrJms--IvYG84-hbQUIcdsMXM;-><init>(Z)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method
