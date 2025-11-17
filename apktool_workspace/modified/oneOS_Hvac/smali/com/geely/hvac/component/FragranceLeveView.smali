.class public Lcom/geely/hvac/component/FragranceLeveView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "FragranceLeveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/FragranceLeveView$OnLevelChangedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FragranceLeveView"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

.field private mEnable:Z

.field private mFragranceTypeIds:[I

.field private mIdsEnable:Z

.field private mOnLevelChangedListener:Lcom/geely/hvac/component/FragranceLeveView$OnLevelChangedListener;

.field private mSelectIndex:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;


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

    .line 141
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mIdsEnable:Z

    .line 29
    iput-boolean v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mEnable:Z

    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/FragranceLeveView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 146
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mIdsEnable:Z

    .line 29
    iput-boolean v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mEnable:Z

    .line 147
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FragranceLeveView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 28
    iput-boolean p3, p0, Lcom/geely/hvac/component/FragranceLeveView;->mIdsEnable:Z

    .line 29
    iput-boolean p3, p0, Lcom/geely/hvac/component/FragranceLeveView;->mEnable:Z

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FragranceLeveView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/FragranceLeveView;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "level"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/geely/hvac/component/FragranceLeveView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFragranceLevel, level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    invoke-static {p1}, Lcom/geely/hvac/component/FragranceLeveView;->levelToIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/FragranceLeveView;->select(IZ)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/FragranceLeveView;Lcom/geely/hvac/component/FragranceLeveView$OnLevelChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "listener"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mOnLevelChangedListener:Lcom/geely/hvac/component/FragranceLeveView$OnLevelChangedListener;

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/FragranceLeveView;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isOn"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/geely/hvac/component/FragranceLeveView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFragranceState, on:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 41
    invoke-static {p1}, Lcom/geely/hvac/component/FragranceLeveView;->levelToIndex(I)I

    move-result p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/FragranceLeveView;->select(IZ)V

    :cond_0
    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/FragranceLeveView;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "fragranceTypeIds"
        }
    .end annotation

    .line 57
    sget-object v0, Lcom/geely/hvac/component/FragranceLeveView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindFragranceTypeIds, ids:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/FragranceLeveView;->setFragranceTypeIds([I)V

    return-void
.end method

.method public static bindEnable(Lcom/geely/hvac/component/FragranceLeveView;Z)V
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

    .line 49
    sget-object v0, Lcom/geely/hvac/component/FragranceLeveView;->TAG:Ljava/lang/String;

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

    .line 50
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/FragranceLeveView;->setEnabled(Z)V

    return-void
.end method

.method public static indexToLevel(I)I
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

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const p0, 0x100b0303

    return p0

    :cond_1
    const p0, 0x100b0302

    return p0

    :cond_2
    const p0, 0x100b0301

    return p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 272
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 271
    invoke-static {p1, p0}, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    .line 274
    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->close:Lcom/geely/toolchain/hmi/view/HmiTextView;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$FragranceLeveView$e3plFpQ9t7o_rEilEAsn6fl8PGU;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$FragranceLeveView$e3plFpQ9t7o_rEilEAsn6fl8PGU;-><init>(Lcom/geely/hvac/component/FragranceLeveView;)V

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$FragranceLeveView$Ru2cMFw2EYgCDXzr32C9yt2MNok;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$FragranceLeveView$Ru2cMFw2EYgCDXzr32C9yt2MNok;-><init>(Lcom/geely/hvac/component/FragranceLeveView;)V

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$FragranceLeveView$BeMVG3K77LWl9mjFswbzTdBEMnY;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$FragranceLeveView$BeMVG3K77LWl9mjFswbzTdBEMnY;-><init>(Lcom/geely/hvac/component/FragranceLeveView;)V

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    new-instance p2, Lcom/geely/hvac/component/-$$Lambda$FragranceLeveView$fNbcE7ktxTVRIdV8P7UupbNK8Ng;

    invoke-direct {p2, p0}, Lcom/geely/hvac/component/-$$Lambda$FragranceLeveView$fNbcE7ktxTVRIdV8P7UupbNK8Ng;-><init>(Lcom/geely/hvac/component/FragranceLeveView;)V

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object p1, p1, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p1}, Lcom/geely/hvac/component/ViewWithBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 287
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f060130

    .line 288
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iget v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mSelectIndex:I

    .line 290
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr p2, v0

    .line 291
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 292
    iget-object p2, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p2, p1}, Lcom/geely/hvac/component/ViewWithBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static levelToIndex(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x3

    return p0

    :pswitch_1
    const/4 p0, 0x2

    return p0

    :pswitch_2
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x100b0301
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private select(IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "isFromUser"
        }
    .end annotation

    .line 189
    iget v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mSelectIndex:I

    if-ne v0, p1, :cond_0

    .line 190
    sget-object p1, Lcom/geely/hvac/component/FragranceLeveView;->TAG:Ljava/lang/String;

    const-string p2, "select, return"

    invoke-static {p1, p2}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    return-void

    .line 200
    :cond_1
    iput p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mSelectIndex:I

    .line 201
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0500a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 202
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 203
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f05009a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 204
    iget-object v6, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v6, v6, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v6, v5}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->close:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 235
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 236
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 237
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v4}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->close:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 225
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 226
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v4}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 227
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    goto :goto_0

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->close:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 215
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v4}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 216
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 217
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    goto :goto_0

    .line 208
    :cond_5
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->close:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v4}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 209
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 210
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 211
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v3}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 247
    :goto_0
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mOnLevelChangedListener:Lcom/geely/hvac/component/FragranceLeveView$OnLevelChangedListener;

    if-eqz v0, :cond_6

    if-nez p2, :cond_6

    .line 248
    invoke-static {p1}, Lcom/geely/hvac/component/FragranceLeveView;->indexToLevel(I)I

    move-result p2

    invoke-interface {v0, p2}, Lcom/geely/hvac/component/FragranceLeveView$OnLevelChangedListener;->onLevelChanged(I)V

    .line 251
    :cond_6
    iget-object p2, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p2}, Lcom/geely/hvac/component/ViewWithBackground;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 252
    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getMarginStart()I

    move-result v0

    .line 253
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060130

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 255
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060134

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/2addr p1, v4

    add-int/2addr v3, p1

    .line 256
    sget-object p1, Lcom/geely/hvac/component/FragranceLeveView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "start: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " end\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 257
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 258
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    :cond_7
    new-array p1, v1, [I

    const/4 v1, 0x0

    aput v0, p1, v1

    aput v3, p1, v2

    .line 260
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 261
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 262
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/geely/hvac/component/-$$Lambda$FragranceLeveView$lt_p3FTIoQj0h-xZ82o6AkXdJ9c;

    invoke-direct {v0, p0, p2}, Lcom/geely/hvac/component/-$$Lambda$FragranceLeveView$lt_p3FTIoQj0h-xZ82o6AkXdJ9c;-><init>(Lcom/geely/hvac/component/FragranceLeveView;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 267
    iget-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setTextColor(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 82
    sget-object p1, Lcom/geely/hvac/component/FragranceLeveView;->TAG:Ljava/lang/String;

    const-string v0, "mIdsEnable=false\u8bf4\u660e\u8fd4\u56de\u9999\u6c1b\u96c6\u5408\u4e3a [0, 0, 0]=[\u672a\u5b89\u88c5\u9999\u6c1b, \u672a\u5b89\u88c5\u9999\u6c1b, \u672a\u5b89\u88c5\u9999\u6c1b] \uff0c\u5173\u95ed\u6309\u94ae\u9700\u8981\u7f6e\u7070,\u5176\u4ed6\u72b6\u6001\u6309\u94ae\u6587\u5b57\u989c\u8272\u53d8\u5316"

    invoke-static {p1, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05009b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 84
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 85
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0500ab

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 86
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->close:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 87
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 88
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 89
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    goto :goto_0

    .line 91
    :cond_0
    iget p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mSelectIndex:I

    if-nez p1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0500a9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 93
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 94
    invoke-virtual {p0}, Lcom/geely/hvac/component/FragranceLeveView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 95
    iget-object v2, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {v2, v1}, Lcom/geely/hvac/component/ViewWithBackground;->setNormalColor(I)V

    .line 96
    iget-object v1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v1, v1, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->close:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 97
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 98
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 99
    iget-object v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateEnableUi()V
    .locals 3

    .line 68
    sget-object v0, Lcom/geely/hvac/component/FragranceLeveView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEnableUi, mEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/hvac/component/FragranceLeveView;->mEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mIdsEnable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/geely/hvac/component/FragranceLeveView;->mIdsEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-boolean v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mEnable:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mIdsEnable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 70
    :goto_0
    iget-object v2, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->close:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v2, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setEnabled(Z)V

    .line 71
    iget-object v2, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v2, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setEnabled(Z)V

    .line 72
    iget-object v2, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v2, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setEnabled(Z)V

    .line 73
    iget-object v2, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object v2, v2, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->level3:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v2, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setEnabled(Z)V

    if-nez v0, :cond_1

    .line 75
    invoke-direct {p0, v1, v1}, Lcom/geely/hvac/component/FragranceLeveView;->select(IZ)V

    .line 77
    :cond_1
    invoke-direct {p0, v0}, Lcom/geely/hvac/component/FragranceLeveView;->setTextColor(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$init$1$FragranceLeveView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 275
    invoke-direct {p0, v0, v0}, Lcom/geely/hvac/component/FragranceLeveView;->select(IZ)V

    .line 276
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$init$2$FragranceLeveView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 278
    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/component/FragranceLeveView;->select(IZ)V

    .line 279
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$init$3$FragranceLeveView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/component/FragranceLeveView;->select(IZ)V

    .line 282
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$init$4$FragranceLeveView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 284
    invoke-direct {p0, v0, v1}, Lcom/geely/hvac/component/FragranceLeveView;->select(IZ)V

    .line 285
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$select$0$FragranceLeveView(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 263
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 264
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->setMarginStart(I)V

    .line 265
    iget-object p2, p0, Lcom/geely/hvac/component/FragranceLeveView;->mBinding:Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;

    iget-object p2, p2, Lcom/geely/hvac/databinding/LayoutFragranceLevelBinding;->indicator:Lcom/geely/hvac/component/ViewWithBackground;

    invoke-virtual {p2, p1}, Lcom/geely/hvac/component/ViewWithBackground;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

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

    .line 63
    iput-boolean p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mEnable:Z

    .line 64
    invoke-direct {p0}, Lcom/geely/hvac/component/FragranceLeveView;->updateEnableUi()V

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

    .line 106
    iput-object p1, p0, Lcom/geely/hvac/component/FragranceLeveView;->mFragranceTypeIds:[I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 110
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_2
    :goto_1
    iput-boolean v0, p0, Lcom/geely/hvac/component/FragranceLeveView;->mIdsEnable:Z

    .line 122
    invoke-direct {p0}, Lcom/geely/hvac/component/FragranceLeveView;->updateEnableUi()V

    return-void
.end method
