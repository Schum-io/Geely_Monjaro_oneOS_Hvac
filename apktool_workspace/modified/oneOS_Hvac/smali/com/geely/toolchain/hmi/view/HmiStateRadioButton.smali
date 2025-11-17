.class public Lcom/geely/toolchain/hmi/view/HmiStateRadioButton;
.super Lcom/geely/toolchain/hmi/view/HmiRadioButton;
.source "HmiStateRadioButton.java"


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

    .line 20
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 24
    sget v0, Landroidx/appcompat/R$attr;->radioButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiStateRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    sget p2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_state_radio_bg:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiStateRadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiRadioButton;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 36
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiStateRadioButton;->setAlpha(F)V

    return-void

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 39
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiStateRadioButton;->setAlpha(F)V

    return-void
.end method
