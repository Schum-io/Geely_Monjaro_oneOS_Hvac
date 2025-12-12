.class public Lcom/geely/os/uiinteraction/InterceptMode;
.super Ljava/lang/Object;
.source "InterceptMode.java"


# instance fields
.field INTERCEPT_MODE_DISPATCH:I

.field INTERCEPT_MODE_INTERCEPT:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/geely/os/uiinteraction/InterceptMode;->INTERCEPT_MODE_DISPATCH:I

    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/geely/os/uiinteraction/InterceptMode;->INTERCEPT_MODE_INTERCEPT:I

    return-void
.end method
