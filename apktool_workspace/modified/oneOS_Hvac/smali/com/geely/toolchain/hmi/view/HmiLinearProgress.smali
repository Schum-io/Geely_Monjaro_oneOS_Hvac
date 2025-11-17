.class public Lcom/geely/toolchain/hmi/view/HmiLinearProgress;
.super Landroid/widget/ProgressBar;
.source "HmiLinearProgress.java"


# static fields
.field private static final MIN_HEIGHT:I = 0x10


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiLinearProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    const v0, 0x1010078

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiLinearProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    const v0, 0x1010078

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/geely/toolchain/hmi/view/HmiLinearProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    sget p2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_linear_progress_bg:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiLinearProgress;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x2

    const/16 p3, 0x10

    invoke-direct {p1, p2, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiLinearProgress;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
