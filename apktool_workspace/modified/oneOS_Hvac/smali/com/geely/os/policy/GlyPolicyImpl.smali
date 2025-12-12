.class Lcom/geely/os/policy/GlyPolicyImpl;
.super Ljava/lang/Object;
.source "GlyPolicyImpl.java"

# interfaces
.implements Lcom/geely/os/policy/IGlyPolicy;


# instance fields
.field private mPolicy:Lcom/ecarx/xui/adaptapi/policy/Policy;

.field private wp:Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/ecarx/xui/adaptapi/policy/Policy;->create(Landroid/content/Context;)Lcom/ecarx/xui/adaptapi/policy/Policy;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/policy/GlyPolicyImpl;->mPolicy:Lcom/ecarx/xui/adaptapi/policy/Policy;

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/ecarx/xui/adaptapi/policy/Policy;->getWindowManagerPolicy()Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/os/policy/GlyPolicyImpl;->wp:Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/geely/os/policy/GlyPolicyImpl;)Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;
    .locals 0

    .line 10
    iget-object p0, p0, Lcom/geely/os/policy/GlyPolicyImpl;->wp:Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;

    return-object p0
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/policy/IGlyPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 26
    new-instance v0, Lcom/geely/os/policy/GlyPolicyImpl;

    invoke-direct {v0, p0}, Lcom/geely/os/policy/GlyPolicyImpl;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getWindowManagerPolicy()Lcom/geely/os/policy/IGlyWindowManagerPolicy;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/geely/os/policy/GlyPolicyImpl;->wp:Lcom/ecarx/xui/adaptapi/policy/IWindowManagerPolicy;

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/geely/os/policy/GlyPolicyImpl$1;

    invoke-direct {v0, p0}, Lcom/geely/os/policy/GlyPolicyImpl$1;-><init>(Lcom/geely/os/policy/GlyPolicyImpl;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
