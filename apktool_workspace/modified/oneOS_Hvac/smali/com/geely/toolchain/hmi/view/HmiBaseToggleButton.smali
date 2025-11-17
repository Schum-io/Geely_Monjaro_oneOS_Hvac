.class public abstract Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;
.super Landroidx/appcompat/widget/AppCompatToggleButton;
.source "HmiBaseToggleButton.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HmiBaseToggleButton"


# instance fields
.field protected mOffIcon:Landroid/graphics/drawable/Drawable;

.field protected mOffTextColor:I

.field protected mOnIcon:Landroid/graphics/drawable/Drawable;

.field protected mOnTextColor:I


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

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const v0, 0x101004b

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->initView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
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

    if-nez p2, :cond_0

    return-void

    .line 59
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiBaseToggleButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 60
    sget v0, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_check_on_text_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 61
    sget v1, Lcom/geely/toolchain/hmi/R$styleable;->HmiBaseToggleButton_hmi_toggle_on_text_color:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOnTextColor:I

    .line 62
    sget v0, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_check_off_text_color:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 63
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiBaseToggleButton_hmi_toggle_off_text_color:I

    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOffTextColor:I

    .line 64
    sget p1, Lcom/geely/toolchain/hmi/R$styleable;->HmiBaseToggleButton_hmi_toggle_on_icon:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOnIcon:Landroid/graphics/drawable/Drawable;

    .line 65
    sget p1, Lcom/geely/toolchain/hmi/R$styleable;->HmiBaseToggleButton_hmi_toggle_off_icon:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOffIcon:Landroid/graphics/drawable/Drawable;

    .line 66
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    iget p1, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOnTextColor:I

    iget p2, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOffTextColor:I

    invoke-virtual {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->setTextColor(II)V

    .line 68
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOnIcon:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOffIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 113
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatToggleButton;->setEnabled(Z)V

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiBaseToggleButton"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 116
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->setAlpha(F)V

    return-void

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 119
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->setAlpha(F)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onIcon",
            "offIcon"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setIcon: onIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offIcon = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiBaseToggleButton"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOnIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-object p2, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOffIcon:Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->setIconDrawable()V

    .line 108
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->invalidate()V

    return-void
.end method

.method protected abstract setIconDrawable()V
.end method

.method public setTextColor(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "onColor",
            "offColor"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTextColor: onColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offColor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiBaseToggleButton"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOnTextColor:I

    .line 86
    iput p2, p0, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->mOffTextColor:I

    .line 87
    invoke-static {p1, p2}, Lcom/geely/toolchain/hmi/util/UiUtil;->createCheckColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 88
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiBaseToggleButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method
