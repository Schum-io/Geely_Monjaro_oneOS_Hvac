.class public Lcom/geely/hvac/component/FragranceType;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FragranceType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FragranceType"

.field private static mFragranceState:Ljava/lang/Boolean;


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

.field private mFragranceImages:[I

.field private mFragranceTypeIds:[I

.field private mFragranceTypes:[Ljava/lang/String;

.field private mIndex:I

.field private mLevelEnable:Landroidx/databinding/ObservableBoolean;

.field private mOnFragranceTypeChangeListener:Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;

.field private mSlotIndex:Landroidx/databinding/ObservableInt;

.field private mSlotIndexEnable:Landroidx/databinding/ObservableBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/geely/hvac/component/FragranceType;->mIndex:I

    .line 31
    new-instance v1, Landroidx/databinding/ObservableBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/geely/hvac/component/FragranceType;->mSlotIndexEnable:Landroidx/databinding/ObservableBoolean;

    .line 32
    new-instance v1, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/geely/hvac/component/FragranceType;->mLevelEnable:Landroidx/databinding/ObservableBoolean;

    .line 33
    new-instance v1, Landroidx/databinding/ObservableInt;

    invoke-direct {v1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/FragranceType;->mSlotIndex:Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/FragranceType;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
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

    .line 169
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/geely/hvac/component/FragranceType;->mIndex:I

    .line 31
    new-instance v1, Landroidx/databinding/ObservableBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/geely/hvac/component/FragranceType;->mSlotIndexEnable:Landroidx/databinding/ObservableBoolean;

    .line 32
    new-instance v1, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v1, v2}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/geely/hvac/component/FragranceType;->mLevelEnable:Landroidx/databinding/ObservableBoolean;

    .line 33
    new-instance v1, Landroidx/databinding/ObservableInt;

    invoke-direct {v1, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v1, p0, Lcom/geely/hvac/component/FragranceType;->mSlotIndex:Landroidx/databinding/ObservableInt;

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FragranceType;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 25
    iput p3, p0, Lcom/geely/hvac/component/FragranceType;->mIndex:I

    .line 31
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceType;->mSlotIndexEnable:Landroidx/databinding/ObservableBoolean;

    .line 32
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceType;->mLevelEnable:Landroidx/databinding/ObservableBoolean;

    .line 33
    new-instance v0, Landroidx/databinding/ObservableInt;

    invoke-direct {v0, p3}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/FragranceType;->mSlotIndex:Landroidx/databinding/ObservableInt;

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FragranceType;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/FragranceType;ILcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "type",
            "listener"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/geely/hvac/component/FragranceType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFragranceSlotIndex, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    invoke-static {p1}, Lcom/geely/hvac/utils/FragranceParser;->slotIndexToIndex(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FragranceType;->setIndex(I)V

    .line 54
    iput-object p2, p0, Lcom/geely/hvac/component/FragranceType;->mOnFragranceTypeChangeListener:Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/FragranceType;Z)V
    .locals 3
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

    .line 61
    sget-object v0, Lcom/geely/hvac/component/FragranceType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFragranceTypeEnable, enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/FragranceType;->setEnabled(Z)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/FragranceType;[I[Ljava/lang/String;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "fragranceTypeIds",
            "fragranceTypes",
            "fragranceImages"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/geely/hvac/component/FragranceType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFragranceTypeIds, ids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", types:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0, p2}, Lcom/geely/hvac/component/FragranceType;->setFragranceTypes([Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/FragranceType;->setFragranceTypeIds([I)V

    .line 80
    invoke-virtual {p0, p3}, Lcom/geely/hvac/component/FragranceType;->setFragranceImages([I)V

    return-void
.end method

.method public static bindFragranceLevelEnable(Lcom/geely/hvac/component/FragranceType;Z)V
    .locals 3
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

    .line 69
    sget-object v0, Lcom/geely/hvac/component/FragranceType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFragranceLevelEnable, enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/FragranceType;->setFragranceLevelEnable(Z)V

    return-void
.end method

.method public static bindFragranceState(Lcom/geely/hvac/component/FragranceType;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "state"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/geely/hvac/component/FragranceType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFragranceState, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/geely/hvac/component/FragranceType;->mFragranceState:Ljava/lang/Boolean;

    .line 45
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FragranceType;->setFragranceState(Z)V

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

    if-nez p2, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    .line 182
    invoke-static {p1, p0, p2}, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    .line 184
    iget p1, p0, Lcom/geely/hvac/component/FragranceType;->mIndex:I

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FragranceType;->setIndex(IZ)V

    .line 185
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$FragranceType$2gob4CgnZoS9nm8L1iECy1i-G-s;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$FragranceType$2gob4CgnZoS9nm8L1iECy1i-G-s;-><init>(Lcom/geely/hvac/component/FragranceType;)V

    invoke-virtual {p1, p2}, Lcom/geely/hvac/component/FragranceTypeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$FragranceType$PldEVV4b5BuDiEGgy-mpDSRkiWM;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$FragranceType$PldEVV4b5BuDiEGgy-mpDSRkiWM;-><init>(Lcom/geely/hvac/component/FragranceType;)V

    invoke-virtual {p1, p2}, Lcom/geely/hvac/component/FragranceTypeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$FragranceType$B5PCKMw5uIsKTWT_1nQtUmKGffg;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$FragranceType$B5PCKMw5uIsKTWT_1nQtUmKGffg;-><init>(Lcom/geely/hvac/component/FragranceType;)V

    invoke-virtual {p1, p2}, Lcom/geely/hvac/component/FragranceTypeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setFragranceState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/FragranceTypeItem;->setFragranceState(Z)V

    .line 249
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/FragranceTypeItem;->setFragranceState(Z)V

    .line 250
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/FragranceTypeItem;->setFragranceState(Z)V

    return-void
.end method

.method private setIndex(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/4 v0, 0x1

    .line 197
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/FragranceType;->setIndex(IZ)V

    return-void
.end method

.method private setIndex(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "checkRepeat"
        }
    .end annotation

    .line 210
    sget-object v0, Lcom/geely/hvac/component/FragranceType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , checkRepeat:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , mFragranceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/geely/hvac/component/FragranceType;->mFragranceState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceType;->mSlotIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 212
    invoke-direct {p0}, Lcom/geely/hvac/component/FragranceType;->updateItemEnable()V

    if-eqz p2, :cond_0

    .line 213
    iget p2, p0, Lcom/geely/hvac/component/FragranceType;->mIndex:I

    if-ne p2, p1, :cond_0

    sget-object p2, Lcom/geely/hvac/component/FragranceType;->mFragranceState:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object p2, p0, Lcom/geely/hvac/component/FragranceType;->mOnFragranceTypeChangeListener:Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;

    const/16 v0, 0xff

    if-eqz p2, :cond_1

    if-eq p1, v0, :cond_1

    .line 217
    invoke-static {p1}, Lcom/geely/hvac/utils/FragranceParser;->indexToSlotIndex(I)I

    move-result v1

    invoke-interface {p2, v1}, Lcom/geely/hvac/component/FragranceType$OnFragranceTypeChangeListener;->onTypeChange(I)V

    .line 219
    :cond_1
    iput p1, p0, Lcom/geely/hvac/component/FragranceType;->mIndex:I

    const/4 p2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-eq p1, p2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 238
    :cond_2
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    .line 239
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    .line 240
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    goto :goto_0

    .line 233
    :cond_3
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    .line 234
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    .line 235
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, p2}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    goto :goto_0

    .line 228
    :cond_4
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    .line 229
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, p2}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    .line 230
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    goto :goto_0

    .line 223
    :cond_5
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, p2}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    .line 224
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    .line 225
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    invoke-virtual {p1, v1}, Lcom/geely/hvac/component/FragranceTypeItem;->setActive(Z)V

    :goto_0
    return-void
.end method

.method private typeClick(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 201
    invoke-static {}, Lcom/geely/hvac/util/ClickUtils;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    sget-object v0, Lcom/geely/hvac/component/FragranceType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "typeClick fast click, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/geely/hvac/component/FragranceType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "typeClick, index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FragranceType;->setIndex(I)V

    return-void
.end method

.method private updateItemEnable()V
    .locals 7

    .line 95
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceType;->mSlotIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/geely/hvac/component/FragranceType;->mLevelEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v1}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v1

    .line 97
    iget-object v2, p0, Lcom/geely/hvac/component/FragranceType;->mSlotIndexEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v2}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v2

    .line 98
    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    invoke-virtual {v3, v6}, Lcom/geely/hvac/component/FragranceTypeItem;->setEnabled(Z)V

    .line 99
    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    if-ne v0, v5, :cond_3

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    invoke-virtual {v3, v6}, Lcom/geely/hvac/component/FragranceTypeItem;->setEnabled(Z)V

    .line 100
    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    const/4 v6, 0x2

    if-ne v0, v6, :cond_5

    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_2

    :cond_4
    move v2, v4

    :cond_5
    :goto_2
    invoke-virtual {v3, v2}, Lcom/geely/hvac/component/FragranceTypeItem;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$0$FragranceType(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 186
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/FragranceType;->typeClick(I)V

    .line 187
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$init$1$FragranceType(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 189
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/FragranceType;->typeClick(I)V

    .line 190
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$init$2$FragranceType(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x2

    .line 192
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/FragranceType;->typeClick(I)V

    .line 193
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

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

    .line 85
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceType;->mSlotIndexEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 86
    invoke-direct {p0}, Lcom/geely/hvac/component/FragranceType;->updateItemEnable()V

    return-void
.end method

.method public setFragranceImages([I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragranceImages"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mFragranceImages:[I

    if-eqz p1, :cond_4

    .line 145
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 148
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    iget-object v4, p0, Lcom/geely/hvac/component/FragranceType;->mFragranceImages:[I

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Lcom/geely/hvac/component/FragranceTypeItem;->setTypeImage(I)V

    goto :goto_1

    .line 154
    :cond_2
    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    iget-object v4, p0, Lcom/geely/hvac/component/FragranceType;->mFragranceImages:[I

    aget v2, v4, v2

    invoke-virtual {v3, v2}, Lcom/geely/hvac/component/FragranceTypeItem;->setTypeImage(I)V

    goto :goto_1

    .line 151
    :cond_3
    iget-object v2, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mFragranceImages:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/geely/hvac/component/FragranceTypeItem;->setTypeImage(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public setFragranceLevelEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceType;->mLevelEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 91
    invoke-direct {p0}, Lcom/geely/hvac/component/FragranceType;->updateItemEnable()V

    return-void
.end method

.method public setFragranceTypeIds([I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragranceTypeIds"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mFragranceTypeIds:[I

    if-eqz p1, :cond_4

    .line 105
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 108
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 117
    :cond_1
    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    aget v2, p1, v2

    invoke-virtual {v3, v2}, Lcom/geely/hvac/component/FragranceTypeItem;->setTypeId(I)V

    goto :goto_1

    .line 114
    :cond_2
    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    aget v2, p1, v2

    invoke-virtual {v3, v2}, Lcom/geely/hvac/component/FragranceTypeItem;->setTypeId(I)V

    goto :goto_1

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Lcom/geely/hvac/component/FragranceTypeItem;->setTypeId(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public setFragranceTypes([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragranceTypes"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/geely/hvac/component/FragranceType;->mFragranceTypes:[Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 125
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 128
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 137
    :cond_1
    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type3:Lcom/geely/hvac/component/FragranceTypeItem;

    iget-object v4, p0, Lcom/geely/hvac/component/FragranceType;->mFragranceTypes:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Lcom/geely/hvac/component/FragranceTypeItem;->setTypeName(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v3, v3, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type2:Lcom/geely/hvac/component/FragranceTypeItem;

    iget-object v4, p0, Lcom/geely/hvac/component/FragranceType;->mFragranceTypes:[Ljava/lang/String;

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Lcom/geely/hvac/component/FragranceTypeItem;->setTypeName(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/geely/hvac/component/FragranceType;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutFragranceTypeBinding;->type1:Lcom/geely/hvac/component/FragranceTypeItem;

    iget-object v3, p0, Lcom/geely/hvac/component/FragranceType;->mFragranceTypes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/geely/hvac/component/FragranceTypeItem;->setTypeName(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method
