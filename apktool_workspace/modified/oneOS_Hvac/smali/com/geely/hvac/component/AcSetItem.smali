.class public Lcom/geely/hvac/component/AcSetItem;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AcSetItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AcSetItem"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;

.field private final mDesc:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mState:Landroidx/databinding/ObservableBoolean;

.field private final mTitle:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

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

    .line 28
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mTitle:Landroidx/databinding/ObservableField;

    .line 22
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mDesc:Landroidx/databinding/ObservableField;

    .line 23
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mState:Landroidx/databinding/ObservableBoolean;

    .line 24
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mListener:Landroidx/databinding/ObservableField;

    .line 29
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AcSetItem;->init(Landroid/content/Context;)V

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

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p2, Landroidx/databinding/ObservableField;

    invoke-direct {p2}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/AcSetItem;->mTitle:Landroidx/databinding/ObservableField;

    .line 22
    new-instance p2, Landroidx/databinding/ObservableField;

    invoke-direct {p2}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/AcSetItem;->mDesc:Landroidx/databinding/ObservableField;

    .line 23
    new-instance p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p2}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/AcSetItem;->mState:Landroidx/databinding/ObservableBoolean;

    .line 24
    new-instance p2, Landroidx/databinding/ObservableField;

    invoke-direct {p2}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/AcSetItem;->mListener:Landroidx/databinding/ObservableField;

    .line 34
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AcSetItem;->init(Landroid/content/Context;)V

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

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p2, Landroidx/databinding/ObservableField;

    invoke-direct {p2}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/AcSetItem;->mTitle:Landroidx/databinding/ObservableField;

    .line 22
    new-instance p2, Landroidx/databinding/ObservableField;

    invoke-direct {p2}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/AcSetItem;->mDesc:Landroidx/databinding/ObservableField;

    .line 23
    new-instance p2, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p2}, Landroidx/databinding/ObservableBoolean;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/AcSetItem;->mState:Landroidx/databinding/ObservableBoolean;

    .line 24
    new-instance p2, Landroidx/databinding/ObservableField;

    invoke-direct {p2}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p2, p0, Lcom/geely/hvac/component/AcSetItem;->mListener:Landroidx/databinding/ObservableField;

    .line 39
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AcSetItem;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/component/AcSetItem;)Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/geely/hvac/component/AcSetItem;->mBinding:Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;

    return-object p0
.end method

.method public static bind(Lcom/geely/hvac/component/AcSetItem;Ljava/lang/String;Ljava/lang/String;ZLcom/geely/hvac/component/Switch$OnSwitchChangeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "acSetItem",
            "title",
            "desc",
            "state",
            "listener"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/geely/hvac/component/AcSetItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcSetItem;->getTitle()Landroidx/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcSetItem;->getDesc()Landroidx/databinding/ObservableField;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcSetItem;->getState()Landroidx/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 80
    invoke-virtual {p0}, Lcom/geely/hvac/component/AcSetItem;->getListener()Landroidx/databinding/ObservableField;

    move-result-object p0

    invoke-virtual {p0, p4}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/AcSetItem;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "item",
            "enable"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AcSetItem;->setEnable(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    .line 43
    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/AcSetItem;->mBinding:Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;

    .line 45
    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;->setModel(Lcom/geely/hvac/component/AcSetItem;)V

    .line 46
    iget-object p1, p0, Lcom/geely/hvac/component/AcSetItem;->mBinding:Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;->switcherBottomClick:Landroid/view/View;

    new-instance v0, Lcom/geely/hvac/component/AcSetItem$1;

    invoke-direct {v0, p0}, Lcom/geely/hvac/component/AcSetItem$1;-><init>(Lcom/geely/hvac/component/AcSetItem;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setEnable(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mBinding:Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;->title:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p0}, Lcom/geely/hvac/component/AcSetItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05001f

    if-eqz p1, :cond_0

    const v3, 0x7f050020

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 92
    iget-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mBinding:Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;->desc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p0}, Lcom/geely/hvac/component/AcSetItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f05001e

    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 93
    iget-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mBinding:Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutAcSetItemBinding;->switcher:Lcom/geely/hvac/component/Switch;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/Switch;->setEnable(Z)V

    return-void
.end method


# virtual methods
.method public getDesc()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mDesc:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getListener()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Lcom/geely/hvac/component/Switch$OnSwitchChangeListener;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mListener:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getState()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mState:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getTitle()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/geely/hvac/component/AcSetItem;->mTitle:Landroidx/databinding/ObservableField;

    return-object v0
.end method
