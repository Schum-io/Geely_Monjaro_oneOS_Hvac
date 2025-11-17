.class public Lcom/geely/toolchain/hmi/view/HmiActionImage;
.super Lcom/geely/toolchain/hmi/view/HmiImageView;
.source "HmiActionImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HmiActionImage"


# instance fields
.field private mState:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;


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

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiActionImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiActionImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    if-nez p2, :cond_0

    return-void

    .line 44
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiActionImage:[I

    .line 45
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    sget p2, Lcom/geely/toolchain/hmi/R$styleable;->HmiActionImage_hmiActionState:I

    sget-object v0, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->BACK:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->getCode()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init: actionState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HmiActionImage"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->CLOSE:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->access$000(Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;)I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 50
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->CLOSE:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->setState(Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;)V

    goto :goto_0

    .line 51
    :cond_1
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->PACK_UP:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->access$000(Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;)I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 52
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->PACK_UP:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->setState(Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;)V

    goto :goto_0

    .line 53
    :cond_2
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->BACK:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-static {p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->access$000(Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;)I

    move-result p1

    if-ne p2, p1, :cond_3

    .line 54
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->BACK:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->setState(Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;)V

    goto :goto_0

    .line 56
    :cond_3
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->EXPANDE:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->setState(Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;)V

    :goto_0
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

    .line 88
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 90
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->setAlpha(F)V

    return-void

    :cond_0
    const p1, 0x3e99999a    # 0.3f

    .line 93
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->setAlpha(F)V

    return-void
.end method

.method public setState(Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "HmiActionImage"

    const-string v0, "setState: state == null"

    .line 66
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiActionImage;->mState:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    .line 70
    sget-object p1, Lcom/geely/toolchain/hmi/view/HmiActionImage$1;->$SwitchMap$com$geely$toolchain$hmi$view$HmiActionImage$ActionState:[I

    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiActionImage;->mState:Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiActionImage$ActionState;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    .line 81
    sget p1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_ic_close_black:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->setImageResource(I)V

    goto :goto_0

    .line 78
    :cond_1
    sget p1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_ic_expand:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->setImageResource(I)V

    goto :goto_0

    .line 75
    :cond_2
    sget p1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_ic_pack_up:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->setImageResource(I)V

    goto :goto_0

    .line 72
    :cond_3
    sget p1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_ic_back_black:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiActionImage;->setImageResource(I)V

    :goto_0
    return-void
.end method
