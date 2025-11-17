.class public Lcom/geely/hvac/component/AcRowToggleView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AcRowToggleView.java"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;


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

    .line 20
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/AcRowToggleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/AcRowToggleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/AcRowToggleView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bindState(Lcom/geely/hvac/component/AcRowToggleView;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isFront"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AcRowToggleView;->setIsFront(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 45
    invoke-static {p1, p0}, Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/AcRowToggleView;->mBinding:Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;

    const/4 p1, 0x1

    .line 48
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AcRowToggleView;->setIsFront(Z)V

    return-void
.end method

.method private setIsFront(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isFront"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/geely/hvac/component/AcRowToggleView;->mBinding:Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;->arrow:Lcom/geely/toolchain/hmi/view/HmiImageView;

    if-eqz p1, :cond_0

    const v1, 0x7f070061

    goto :goto_0

    :cond_0
    const v1, 0x7f070062

    :goto_0
    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 55
    iget-object v0, p0, Lcom/geely/hvac/component/AcRowToggleView;->mBinding:Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutAcRowToggleBinding;->txt:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz p1, :cond_1

    const p1, 0x7f100020

    goto :goto_1

    :cond_1
    const p1, 0x7f10001f

    :goto_1
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(I)V

    return-void
.end method
