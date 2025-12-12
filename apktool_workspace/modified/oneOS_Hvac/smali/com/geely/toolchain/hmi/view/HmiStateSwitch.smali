.class public Lcom/geely/toolchain/hmi/view/HmiStateSwitch;
.super Lcom/geely/toolchain/hmi/view/HmiSwitch;
.source "HmiStateSwitch.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiSwitch;-><init>(Landroid/content/Context;)V

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

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected initDrawable(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 36
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiSwitch;->initDrawable(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateSwitch;->updateView()V

    return-void
.end method

.method public updateView()V
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_state_switch_track:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiStateSwitch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiStateSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_state_switch_thumb:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiStateSwitch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
