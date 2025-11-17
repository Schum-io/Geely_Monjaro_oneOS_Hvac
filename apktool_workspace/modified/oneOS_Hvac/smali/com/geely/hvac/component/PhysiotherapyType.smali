.class public Lcom/geely/hvac/component/PhysiotherapyType;
.super Lcom/geely/hvac/component/FlowLayout;
.source "PhysiotherapyType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhysiotherapyType"


# instance fields
.field private mActiveIndex:I

.field private final mItemClickListener:Landroid/view/View$OnClickListener;

.field private mListener:Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;

.field private mType:I

.field private mTypes:[I


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

    .line 90
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 19
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mTypes:[I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mType:I

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mListener:Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;

    .line 33
    iput p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mActiveIndex:I

    .line 34
    new-instance p1, Lcom/geely/hvac/component/-$$Lambda$PhysiotherapyType$B1M90awU8iu1x7srLVxrqS3J-LY;

    invoke-direct {p1, p0}, Lcom/geely/hvac/component/-$$Lambda$PhysiotherapyType$B1M90awU8iu1x7srLVxrqS3J-LY;-><init>(Lcom/geely/hvac/component/PhysiotherapyType;)V

    iput-object p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x2d500206
        0x2d500208
        0x2d500207
        0x2d500204
        0x2d500205
        0x2d500202
    .end array-data
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

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 19
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mTypes:[I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mType:I

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mListener:Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;

    .line 33
    iput p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mActiveIndex:I

    .line 34
    new-instance p1, Lcom/geely/hvac/component/-$$Lambda$PhysiotherapyType$B1M90awU8iu1x7srLVxrqS3J-LY;

    invoke-direct {p1, p0}, Lcom/geely/hvac/component/-$$Lambda$PhysiotherapyType$B1M90awU8iu1x7srLVxrqS3J-LY;-><init>(Lcom/geely/hvac/component/PhysiotherapyType;)V

    iput-object p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x2d500206
        0x2d500208
        0x2d500207
        0x2d500204
        0x2d500205
        0x2d500202
    .end array-data
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

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 19
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mTypes:[I

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mType:I

    const/4 p2, 0x0

    .line 32
    iput-object p2, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mListener:Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;

    .line 33
    iput p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mActiveIndex:I

    .line 34
    new-instance p1, Lcom/geely/hvac/component/-$$Lambda$PhysiotherapyType$B1M90awU8iu1x7srLVxrqS3J-LY;

    invoke-direct {p1, p0}, Lcom/geely/hvac/component/-$$Lambda$PhysiotherapyType$B1M90awU8iu1x7srLVxrqS3J-LY;-><init>(Lcom/geely/hvac/component/PhysiotherapyType;)V

    iput-object p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x2d500206
        0x2d500208
        0x2d500207
        0x2d500204
        0x2d500205
        0x2d500202
    .end array-data
.end method

.method public static bind(Lcom/geely/hvac/component/PhysiotherapyType;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "type"
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/geely/hvac/component/PhysiotherapyType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindPhysiotherapyType v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/PhysiotherapyType;->setPhysiotherapyType(I)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/PhysiotherapyType;Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "listener"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mListener:Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/PhysiotherapyType;[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "types"
        }
    .end annotation

    const-string v0, "bindPhysiotherapyTypes v:"

    if-eqz p1, :cond_0

    .line 51
    sget-object v1, Lcom/geely/hvac/component/PhysiotherapyType;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", types:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/PhysiotherapyType;->setTypes([I)V

    .line 53
    iget p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mType:I

    invoke-direct {p0, p1}, Lcom/geely/hvac/component/PhysiotherapyType;->setPhysiotherapyType(I)V

    goto :goto_0

    .line 55
    :cond_0
    sget-object p1, Lcom/geely/hvac/component/PhysiotherapyType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", types null"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setPhysiotherapyType(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 76
    iput p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mType:I

    const/4 v0, 0x0

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mTypes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 78
    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-gez v0, :cond_2

    return-void

    .line 86
    :cond_2
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/PhysiotherapyType;->setActiveIndex(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PhysiotherapyType(Landroid/view/View;)V
    .locals 3

    .line 36
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 37
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/PhysiotherapyType;->setActiveIndex(I)V

    .line 38
    iget-object v1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mListener:Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;

    if-eqz v1, :cond_0

    .line 39
    iget-object v2, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mTypes:[I

    aget v0, v2, v0

    invoke-interface {v1, p0, v0}, Lcom/geely/hvac/component/intf/PhysiotherapyTypeChangeListener;->onTypeChange(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public setActiveIndex(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lcom/geely/hvac/component/PhysiotherapyType;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 105
    invoke-virtual {p0, v2}, Lcom/geely/hvac/component/PhysiotherapyType;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/geely/hvac/component/PhysiotherapyTypeItem;

    if-ne p1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 106
    :goto_1
    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/PhysiotherapyTypeItem;->setActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTypes([I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mTypes:[I

    .line 112
    invoke-virtual {p0}, Lcom/geely/hvac/component/PhysiotherapyType;->removeAllViews()V

    .line 113
    invoke-virtual {p0}, Lcom/geely/hvac/component/PhysiotherapyType;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/geely/hvac/component/PhysiotherapyType;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 115
    invoke-virtual {p0}, Lcom/geely/hvac/component/PhysiotherapyType;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    .line 116
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_5

    const/4 v5, 0x5

    if-le v4, v5, :cond_0

    goto :goto_5

    .line 120
    :cond_0
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x3

    if-eqz v4, :cond_2

    if-eq v4, v6, :cond_2

    const/4 v7, 0x6

    if-ne v4, v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v3

    .line 121
    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    if-lt v4, v6, :cond_3

    move v6, v2

    goto :goto_3

    :cond_3
    move v6, v3

    .line 122
    :goto_3
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 123
    new-instance v6, Lcom/geely/hvac/component/PhysiotherapyTypeItem;

    invoke-virtual {p0}, Lcom/geely/hvac/component/PhysiotherapyType;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/geely/hvac/component/PhysiotherapyTypeItem;-><init>(Landroid/content/Context;)V

    .line 124
    iget v7, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mActiveIndex:I

    if-ne v4, v7, :cond_4

    const/4 v7, 0x1

    .line 125
    invoke-virtual {v6, v7}, Lcom/geely/hvac/component/PhysiotherapyTypeItem;->setActive(Z)V

    goto :goto_4

    .line 127
    :cond_4
    invoke-virtual {v6, v3}, Lcom/geely/hvac/component/PhysiotherapyTypeItem;->setActive(Z)V

    .line 129
    :goto_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/geely/hvac/component/PhysiotherapyTypeItem;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v7, p0, Lcom/geely/hvac/component/PhysiotherapyType;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/geely/hvac/component/PhysiotherapyTypeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    aget v7, p1, v4

    invoke-virtual {v6, v7}, Lcom/geely/hvac/component/PhysiotherapyTypeItem;->setType(I)V

    .line 132
    invoke-virtual {p0, v6, v5}, Lcom/geely/hvac/component/PhysiotherapyType;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    return-void
.end method
