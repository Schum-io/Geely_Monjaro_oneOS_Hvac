.class public Lcom/geely/hvac/component/FragranceTypeItem;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FragranceTypeItem.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mActive:Landroidx/databinding/ObservableBoolean;

.field private mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;

.field private mContext:Landroid/content/Context;

.field private final mEnable:Landroidx/databinding/ObservableBoolean;

.field private final mFragranceState:Landroidx/databinding/ObservableBoolean;

.field private final mInstalledFragrance:Landroidx/databinding/ObservableBoolean;

.field private mTypeIcon:Landroid/graphics/drawable/Drawable;

.field private final mTypeId:Landroidx/databinding/ObservableInt;

.field private final mTypeImage:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mTypeName:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnKnowFragrance:Landroidx/databinding/ObservableBoolean;


# direct methods
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

    .line 37
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeId:Landroidx/databinding/ObservableInt;

    .line 28
    new-instance v0, Landroidx/databinding/ObservableField;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeName:Landroidx/databinding/ObservableField;

    .line 29
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeImage:Landroidx/databinding/ObservableField;

    .line 30
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    .line 31
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mEnable:Landroidx/databinding/ObservableBoolean;

    .line 32
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mInstalledFragrance:Landroidx/databinding/ObservableBoolean;

    .line 33
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mUnKnowFragrance:Landroidx/databinding/ObservableBoolean;

    .line 34
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mFragranceState:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/FragranceTypeItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeId:Landroidx/databinding/ObservableInt;

    .line 28
    new-instance v0, Landroidx/databinding/ObservableField;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeName:Landroidx/databinding/ObservableField;

    .line 29
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeImage:Landroidx/databinding/ObservableField;

    .line 30
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    .line 31
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mEnable:Landroidx/databinding/ObservableBoolean;

    .line 32
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mInstalledFragrance:Landroidx/databinding/ObservableBoolean;

    .line 33
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mUnKnowFragrance:Landroidx/databinding/ObservableBoolean;

    .line 34
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mFragranceState:Landroidx/databinding/ObservableBoolean;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FragranceTypeItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/geely/hvac/component/FragranceTypeItem;->TAG:Ljava/lang/String;

    .line 27
    new-instance p3, Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeId:Landroidx/databinding/ObservableInt;

    .line 28
    new-instance p3, Landroidx/databinding/ObservableField;

    const-string v0, ""

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeName:Landroidx/databinding/ObservableField;

    .line 29
    new-instance p3, Landroidx/databinding/ObservableField;

    invoke-direct {p3}, Landroidx/databinding/ObservableField;-><init>()V

    iput-object p3, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeImage:Landroidx/databinding/ObservableField;

    .line 30
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x1

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    .line 31
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mEnable:Landroidx/databinding/ObservableBoolean;

    .line 32
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mInstalledFragrance:Landroidx/databinding/ObservableBoolean;

    .line 33
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mUnKnowFragrance:Landroidx/databinding/ObservableBoolean;

    .line 34
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mFragranceState:Landroidx/databinding/ObservableBoolean;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FragranceTypeItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;

    .line 60
    invoke-virtual {v0, p0}, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->setView(Lcom/geely/hvac/component/FragranceTypeItem;)V

    .line 61
    sget-object v0, Lcom/geely/hvac/R$styleable;->FragranceTypeItem:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeIcon:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeItemBinding;->icon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget-object p2, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    .line 68
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    .line 69
    invoke-direct {p0}, Lcom/geely/hvac/component/FragranceTypeItem;->refreshClickable()V

    return-void
.end method

.method private refreshClickable()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshClickable, enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v2}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", installFragrance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mInstalledFragrance:Landroidx/databinding/ObservableBoolean;

    .line 121
    invoke-virtual {v2}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mInstalledFragrance:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 124
    :goto_0
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/FragranceTypeItem;->setClickable(Z)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/FragranceTypeItem;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method public getActive()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getEnable()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mEnable:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getFragranceState()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mFragranceState:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getInstalledFragrance()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mInstalledFragrance:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getTypeId()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeId:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public getTypeImage()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeImage:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getTypeName()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeName:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getUnKnowFragrance()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mUnKnowFragrance:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public setActive(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActive, active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEnabled, enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 115
    invoke-direct {p0}, Lcom/geely/hvac/component/FragranceTypeItem;->refreshClickable()V

    return-void
.end method

.method public setFragranceState(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFragranceState, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mFragranceState:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public setTypeId(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTypeId, id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mInstalledFragrance:Landroidx/databinding/ObservableBoolean;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 107
    invoke-direct {p0}, Lcom/geely/hvac/component/FragranceTypeItem;->refreshClickable()V

    .line 108
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeId:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method public setTypeImage(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "res"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTypeImage, setTypeImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeImage:Landroidx/databinding/ObservableField;

    iget-object v1, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeName"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTypeName, typeName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mTypeName:Landroidx/databinding/ObservableField;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceTypeItem;->mUnKnowFragrance:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceTypeItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f10004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method
