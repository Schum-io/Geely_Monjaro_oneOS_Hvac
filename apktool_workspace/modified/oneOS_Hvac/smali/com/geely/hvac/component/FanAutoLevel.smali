.class public Lcom/geely/hvac/component/FanAutoLevel;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FanAutoLevel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/FanAutoLevel$OnFanAutoLevelChanged;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private listener:Lcom/geely/hvac/component/FanAutoLevel$OnFanAutoLevelChanged;

.field private mBinding:Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;

.field private final mEnable:Landroidx/databinding/ObservableBoolean;

.field private final mFanAutoLevel:Landroidx/databinding/ObservableInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/geely/hvac/component/FanLevel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geely/hvac/component/FanAutoLevel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
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
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mFanAutoLevel:Landroidx/databinding/ObservableInt;

    .line 22
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;

    .line 25
    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->listener:Lcom/geely/hvac/component/FanAutoLevel$OnFanAutoLevelChanged;

    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v1}, Lcom/geely/hvac/component/FanAutoLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 33
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mFanAutoLevel:Landroidx/databinding/ObservableInt;

    .line 22
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;

    .line 25
    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->listener:Lcom/geely/hvac/component/FanAutoLevel$OnFanAutoLevelChanged;

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/hvac/component/FanAutoLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
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
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mFanAutoLevel:Landroidx/databinding/ObservableInt;

    .line 22
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;

    .line 25
    iput-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->listener:Lcom/geely/hvac/component/FanAutoLevel$OnFanAutoLevelChanged;

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/FanAutoLevel;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/geely/hvac/component/FanAutoLevel;I)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FanAutoLevel;->select(I)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/FanAutoLevel;ILcom/geely/hvac/component/FanAutoLevel$OnFanAutoLevelChanged;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fanAutoLevel",
            "autoLevel",
            "listener"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FanAutoLevel;->setFanAutoLevel(I)V

    .line 72
    iput-object p2, p0, Lcom/geely/hvac/component/FanAutoLevel;->listener:Lcom/geely/hvac/component/FanAutoLevel$OnFanAutoLevelChanged;

    return-void
.end method

.method public static bindEnable(Lcom/geely/hvac/component/FanAutoLevel;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "enable"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FanAutoLevel;->setEnable(Z)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/FanAutoLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;

    .line 44
    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;->setView(Lcom/geely/hvac/component/FanAutoLevel;)V

    .line 45
    iget-object p1, p0, Lcom/geely/hvac/component/FanAutoLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;->softLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    new-instance p2, Lcom/geely/hvac/component/FanAutoLevel$1;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/FanAutoLevel$1;-><init>(Lcom/geely/hvac/component/FanAutoLevel;)V

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/geely/hvac/component/FanAutoLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;->comfortLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    new-instance p2, Lcom/geely/hvac/component/FanAutoLevel$2;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/FanAutoLevel$2;-><init>(Lcom/geely/hvac/component/FanAutoLevel;)V

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/geely/hvac/component/FanAutoLevel;->mBinding:Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFanAutoLevelBinding;->powerfulLevel:Lcom/geely/toolchain/hmi/view/HmiTextView;

    new-instance p2, Lcom/geely/hvac/component/FanAutoLevel$3;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/FanAutoLevel$3;-><init>(Lcom/geely/hvac/component/FanAutoLevel;)V

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private select(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/geely/hvac/component/FanAutoLevel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "select, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->listener:Lcom/geely/hvac/component/FanAutoLevel$OnFanAutoLevelChanged;

    invoke-interface {v0, p1}, Lcom/geely/hvac/component/FanAutoLevel$OnFanAutoLevelChanged;->onChanged(I)V

    .line 85
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FanAutoLevel;->setFanAutoLevel(I)V

    return-void
.end method

.method private setEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method private setFanAutoLevel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoLevel"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mFanAutoLevel:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method


# virtual methods
.method public getEnable()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mEnable:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getFanAutoLevel()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/geely/hvac/component/FanAutoLevel;->mFanAutoLevel:Landroidx/databinding/ObservableInt;

    return-object v0
.end method
