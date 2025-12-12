.class public Lcom/geely/os/policy/GlyPolicy;
.super Ljava/lang/Object;
.source "GlyPolicy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/geely/os/policy/IGlyPolicy;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 9
    invoke-static {p0}, Lcom/geely/os/policy/GlyPolicyImpl;->create(Landroid/content/Context;)Lcom/geely/os/policy/IGlyPolicy;

    move-result-object p0

    return-object p0
.end method
