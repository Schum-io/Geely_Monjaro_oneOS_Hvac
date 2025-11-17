.class public Lcom/geely/hvac/component/MassageType;
.super Lcom/geely/hvac/component/FlowLayout;
.source "MassageType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MassageType"


# instance fields
.field private mActiveIndex:I

.field private final mItemClickListener:Landroid/view/View$OnClickListener;

.field private mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

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

    .line 89
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 20
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/component/MassageType;->mTypes:[I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/geely/hvac/component/MassageType;->mType:I

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/geely/hvac/component/MassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    .line 32
    iput p1, p0, Lcom/geely/hvac/component/MassageType;->mActiveIndex:I

    .line 33
    new-instance p1, Lcom/geely/hvac/component/-$$Lambda$MassageType$kT8wPBrL3M14Rfvuy4j7qkQ54I0;

    invoke-direct {p1, p0}, Lcom/geely/hvac/component/-$$Lambda$MassageType$kT8wPBrL3M14Rfvuy4j7qkQ54I0;-><init>(Lcom/geely/hvac/component/MassageType;)V

    iput-object p1, p0, Lcom/geely/hvac/component/MassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x10050b01
        0x10050b02
        0x10050b03
        0x10050b04
        0x10050b05
        0x10050b06
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

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 20
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/component/MassageType;->mTypes:[I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/geely/hvac/component/MassageType;->mType:I

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/geely/hvac/component/MassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    .line 32
    iput p1, p0, Lcom/geely/hvac/component/MassageType;->mActiveIndex:I

    .line 33
    new-instance p1, Lcom/geely/hvac/component/-$$Lambda$MassageType$kT8wPBrL3M14Rfvuy4j7qkQ54I0;

    invoke-direct {p1, p0}, Lcom/geely/hvac/component/-$$Lambda$MassageType$kT8wPBrL3M14Rfvuy4j7qkQ54I0;-><init>(Lcom/geely/hvac/component/MassageType;)V

    iput-object p1, p0, Lcom/geely/hvac/component/MassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x10050b01
        0x10050b02
        0x10050b03
        0x10050b04
        0x10050b05
        0x10050b06
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

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 20
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/component/MassageType;->mTypes:[I

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/geely/hvac/component/MassageType;->mType:I

    const/4 p2, 0x0

    .line 31
    iput-object p2, p0, Lcom/geely/hvac/component/MassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    .line 32
    iput p1, p0, Lcom/geely/hvac/component/MassageType;->mActiveIndex:I

    .line 33
    new-instance p1, Lcom/geely/hvac/component/-$$Lambda$MassageType$kT8wPBrL3M14Rfvuy4j7qkQ54I0;

    invoke-direct {p1, p0}, Lcom/geely/hvac/component/-$$Lambda$MassageType$kT8wPBrL3M14Rfvuy4j7qkQ54I0;-><init>(Lcom/geely/hvac/component/MassageType;)V

    iput-object p1, p0, Lcom/geely/hvac/component/MassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

    return-void

    nop

    :array_0
    .array-data 4
        0x10050b01
        0x10050b02
        0x10050b03
        0x10050b04
        0x10050b05
        0x10050b06
    .end array-data
.end method

.method public static bind(Lcom/geely/hvac/component/MassageType;I)V
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

    .line 69
    sget-object v0, Lcom/geely/hvac/component/MassageType;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindMassageType v:"

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

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/MassageType;->setMassageType(I)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/MassageType;Lcom/geely/hvac/component/intf/MassageTypeChangeListener;)V
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

    .line 62
    iput-object p1, p0, Lcom/geely/hvac/component/MassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/MassageType;[I)V
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

    const-string v0, "bindMassageTypes v:"

    if-eqz p1, :cond_0

    .line 50
    sget-object v1, Lcom/geely/hvac/component/MassageType;->TAG:Ljava/lang/String;

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

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/MassageType;->setTypes([I)V

    .line 52
    iget p1, p0, Lcom/geely/hvac/component/MassageType;->mType:I

    invoke-direct {p0, p1}, Lcom/geely/hvac/component/MassageType;->setMassageType(I)V

    goto :goto_0

    .line 54
    :cond_0
    sget-object p1, Lcom/geely/hvac/component/MassageType;->TAG:Ljava/lang/String;

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

    invoke-static {p1, p0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setMassageType(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 75
    iput p1, p0, Lcom/geely/hvac/component/MassageType;->mType:I

    const/4 v0, 0x0

    .line 76
    :goto_0
    iget-object v1, p0, Lcom/geely/hvac/component/MassageType;->mTypes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 77
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

    .line 85
    :cond_2
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/MassageType;->setActiveIndex(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$MassageType(Landroid/view/View;)V
    .locals 3

    .line 35
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/MassageType;->setActiveIndex(I)V

    .line 37
    iget-object v1, p0, Lcom/geely/hvac/component/MassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    if-eqz v1, :cond_0

    .line 38
    iget-object v2, p0, Lcom/geely/hvac/component/MassageType;->mTypes:[I

    aget v0, v2, v0

    invoke-interface {v1, p0, v0}, Lcom/geely/hvac/component/intf/MassageTypeChangeListener;->onTypeChange(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 43
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

    .line 102
    invoke-virtual {p0}, Lcom/geely/hvac/component/MassageType;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 104
    invoke-virtual {p0, v2}, Lcom/geely/hvac/component/MassageType;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/geely/hvac/component/MassageTypeItem;

    if-ne p1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 105
    :goto_1
    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/MassageTypeItem;->setActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTypes([I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .line 110
    iput-object p1, p0, Lcom/geely/hvac/component/MassageType;->mTypes:[I

    .line 111
    invoke-virtual {p0}, Lcom/geely/hvac/component/MassageType;->removeAllViews()V

    .line 112
    invoke-virtual {p0}, Lcom/geely/hvac/component/MassageType;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/geely/hvac/component/MassageType;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 114
    invoke-virtual {p0}, Lcom/geely/hvac/component/MassageType;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/geely/hvac/utils/CommonUtils;->isKX11_A2()Z

    move-result v3

    const v4, 0x7f0601b4

    if-eqz v3, :cond_0

    const v3, 0x7f0601b3

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 115
    invoke-virtual {p0}, Lcom/geely/hvac/component/MassageType;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    .line 116
    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_6

    const/4 v6, 0x5

    if-le v5, v6, :cond_1

    goto :goto_6

    .line 120
    :cond_1
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v7, 0x3

    if-eqz v5, :cond_3

    if-ne v5, v7, :cond_2

    goto :goto_2

    :cond_2
    move v8, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v8, v4

    .line 121
    :goto_3
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    if-lt v5, v7, :cond_4

    move v7, v3

    goto :goto_4

    :cond_4
    move v7, v4

    .line 122
    :goto_4
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 123
    new-instance v7, Lcom/geely/hvac/component/MassageTypeItem;

    invoke-virtual {p0}, Lcom/geely/hvac/component/MassageType;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/geely/hvac/component/MassageTypeItem;-><init>(Landroid/content/Context;)V

    .line 124
    iget v8, p0, Lcom/geely/hvac/component/MassageType;->mActiveIndex:I

    if-ne v5, v8, :cond_5

    const/4 v8, 0x1

    .line 125
    invoke-virtual {v7, v8}, Lcom/geely/hvac/component/MassageTypeItem;->setActive(Z)V

    goto :goto_5

    .line 127
    :cond_5
    invoke-virtual {v7, v4}, Lcom/geely/hvac/component/MassageTypeItem;->setActive(Z)V

    .line 129
    :goto_5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/geely/hvac/component/MassageTypeItem;->setTag(Ljava/lang/Object;)V

    .line 130
    iget-object v8, p0, Lcom/geely/hvac/component/MassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Lcom/geely/hvac/component/MassageTypeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    aget v8, p1, v5

    invoke-virtual {v7, v8}, Lcom/geely/hvac/component/MassageTypeItem;->setType(I)V

    .line 132
    invoke-virtual {p0, v7, v6}, Lcom/geely/hvac/component/MassageType;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    :goto_6
    return-void
.end method
