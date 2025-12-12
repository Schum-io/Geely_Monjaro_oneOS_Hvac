.class public Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "HmiDragSeekBar.java"


# instance fields
.field private mContext:Landroid/content/Context;


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

    .line 19
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;)V

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

    .line 23
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;->mContext:Landroid/content/Context;

    .line 25
    sget p2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_seek_bar_drag:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    sget p2, Lcom/geely/toolchain/hmi/R$mipmap;->oneoshmi_seekbar_roound_bg:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

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

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 35
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_seek_bar_drag:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/geely/toolchain/hmi/R$mipmap;->oneoshmi_seekbar_roound_bg:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;->mContext:Landroid/content/Context;

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_seek_bar_drag:I

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 42
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiDragSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
