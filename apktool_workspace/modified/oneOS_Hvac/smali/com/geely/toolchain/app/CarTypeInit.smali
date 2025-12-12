.class public Lcom/geely/toolchain/app/CarTypeInit;
.super Ljava/lang/Object;
.source "CarTypeInit.java"


# static fields
.field public static final IS_ANDROID12:Z = false

.field private static final TAG:Ljava/lang/String; = "CarTypeInit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 2

    const-string v0, "CarTypeInit"

    const-string v1, "init() called"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
