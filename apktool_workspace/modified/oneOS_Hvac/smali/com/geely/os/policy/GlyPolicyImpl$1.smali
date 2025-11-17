.class Lcom/geely/os/policy/GlyPolicyImpl$1;
.super Ljava/lang/Object;
.source "GlyPolicyImpl.java"

# interfaces
.implements Lcom/geely/os/policy/IGlyWindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/os/policy/GlyPolicyImpl;->getWindowManagerPolicy()Lcom/geely/os/policy/IGlyWindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/os/policy/GlyPolicyImpl;


# direct methods
.method constructor <init>(Lcom/geely/os/policy/GlyPolicyImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/geely/os/policy/GlyPolicyImpl$1;->this$0:Lcom/geely/os/policy/GlyPolicyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWindowTypeByCode(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowCode"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/geely/os/policy/GlyPolicyImpl$1;->this$0:Lcom/geely/os/policy/GlyPolicyImpl;

    invoke-static {v0}, Lcom/geely/os/policy/GlyPolicyImpl;->access$000(Lcom/geely/os/policy/GlyPolicyImpl;)Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;->getWindowTypeByCode(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getWindowTypeByCode(Ljava/lang/String;Landroid/view/Display;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "windowCode",
            "display"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/geely/os/policy/GlyPolicyImpl$1;->this$0:Lcom/geely/os/policy/GlyPolicyImpl;

    invoke-static {v0}, Lcom/geely/os/policy/GlyPolicyImpl;->access$000(Lcom/geely/os/policy/GlyPolicyImpl;)Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;->getWindowTypeByCode(Ljava/lang/String;Landroid/view/Display;)I

    move-result p1

    return p1
.end method
