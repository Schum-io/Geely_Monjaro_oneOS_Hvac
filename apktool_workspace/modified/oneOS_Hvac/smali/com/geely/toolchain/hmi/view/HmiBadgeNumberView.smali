.class public Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;
.super Lcom/geely/toolchain/hmi/view/HmiTextView;
.source "HmiBadgeNumberView.java"


# static fields
.field public static final DEFAULT_TEXT_SIZE:I = 0x1c

.field public static final MAX_SHOW_NUMBER:I = 0x63

.field public static final MAX_SHOW_TEXT:Ljava/lang/String; = "99+"

.field public static final TAG:Ljava/lang/String; = "HmiBadgeNumberView"


# instance fields
.field private mBadgeNumber:I


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

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 52
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 64
    :cond_0
    sget-object v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiBadgeNumberView:[I

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 67
    sget v0, Lcom/geely/toolchain/hmi/R$styleable;->HmiBadgeNumberView_hmi_badge_number:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 68
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    sget p2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_badge_view_bg:I

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x11

    .line 70
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;->setGravity(I)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;->setBadgeNumber(I)V

    return-void
.end method


# virtual methods
.method public getBadgeNumber()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;->mBadgeNumber:I

    return v0
.end method

.method public setBadgeNumber(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "badgeNumber"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBadgeNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiBadgeNumberView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iput p1, p0, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;->mBadgeNumber:I

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    const-string p1, "99+"

    .line 79
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setShowBadge(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShow"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isShowBadge: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiBadgeNumberView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 92
    :goto_0
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiBadgeNumberView;->setVisibility(I)V

    return-void
.end method
