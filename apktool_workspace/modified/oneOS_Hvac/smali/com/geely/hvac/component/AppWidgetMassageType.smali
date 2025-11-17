.class public Lcom/geely/hvac/component/AppWidgetMassageType;
.super Lcom/geely/hvac/component/FlowLayout;
.source "AppWidgetMassageType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppWidgetMassageType"


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

    .line 91
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 18
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mTypes:[I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mType:I

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    .line 30
    iput p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mActiveIndex:I

    .line 31
    new-instance p1, Lcom/geely/hvac/component/-$$Lambda$AppWidgetMassageType$tqfiWURaeCQDM6ZyEscrdegCoxE;

    invoke-direct {p1, p0}, Lcom/geely/hvac/component/-$$Lambda$AppWidgetMassageType$tqfiWURaeCQDM6ZyEscrdegCoxE;-><init>(Lcom/geely/hvac/component/AppWidgetMassageType;)V

    iput-object p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

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

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 18
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mTypes:[I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mType:I

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    .line 30
    iput p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mActiveIndex:I

    .line 31
    new-instance p1, Lcom/geely/hvac/component/-$$Lambda$AppWidgetMassageType$tqfiWURaeCQDM6ZyEscrdegCoxE;

    invoke-direct {p1, p0}, Lcom/geely/hvac/component/-$$Lambda$AppWidgetMassageType$tqfiWURaeCQDM6ZyEscrdegCoxE;-><init>(Lcom/geely/hvac/component/AppWidgetMassageType;)V

    iput-object p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

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

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 18
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mTypes:[I

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mType:I

    const/4 p2, 0x0

    .line 29
    iput-object p2, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    .line 30
    iput p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mActiveIndex:I

    .line 31
    new-instance p1, Lcom/geely/hvac/component/-$$Lambda$AppWidgetMassageType$tqfiWURaeCQDM6ZyEscrdegCoxE;

    invoke-direct {p1, p0}, Lcom/geely/hvac/component/-$$Lambda$AppWidgetMassageType$tqfiWURaeCQDM6ZyEscrdegCoxE;-><init>(Lcom/geely/hvac/component/AppWidgetMassageType;)V

    iput-object p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

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

.method public static bind(Lcom/geely/hvac/component/AppWidgetMassageType;I)V
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

    .line 71
    sget-object v0, Lcom/geely/hvac/component/AppWidgetMassageType;->TAG:Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AppWidgetMassageType;->setMassageType(I)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/AppWidgetMassageType;Lcom/geely/hvac/component/intf/MassageTypeChangeListener;)V
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

    .line 64
    iput-object p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/AppWidgetMassageType;[I)V
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

    .line 52
    sget-object v1, Lcom/geely/hvac/component/AppWidgetMassageType;->TAG:Ljava/lang/String;

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

    .line 53
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/AppWidgetMassageType;->setTypes([I)V

    .line 54
    iget p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mType:I

    invoke-direct {p0, p1}, Lcom/geely/hvac/component/AppWidgetMassageType;->setMassageType(I)V

    goto :goto_0

    .line 56
    :cond_0
    sget-object p1, Lcom/geely/hvac/component/AppWidgetMassageType;->TAG:Ljava/lang/String;

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

    .line 77
    iput p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mType:I

    const/4 v0, 0x0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mTypes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 79
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

    .line 87
    :cond_2
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/AppWidgetMassageType;->setActiveIndex(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$AppWidgetMassageType(Landroid/view/View;)V
    .locals 3

    .line 33
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/AppWidgetMassageType;->setActiveIndex(I)V

    .line 35
    iget-object v1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    if-eqz v1, :cond_0

    .line 36
    iget-object v2, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mTypes:[I

    aget v0, v2, v0

    invoke-interface {v1, p0, v0}, Lcom/geely/hvac/component/intf/MassageTypeChangeListener;->onTypeChange(Landroid/view/View;I)V

    .line 37
    invoke-virtual {p0}, Lcom/geely/hvac/component/AppWidgetMassageType;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/geely/hvac/activity/AppWidgetMassageDetailActivity;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/geely/hvac/component/AppWidgetMassageType;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/geely/hvac/activity/AppWidgetMassageDetailActivity;

    .line 39
    invoke-virtual {v0}, Lcom/geely/hvac/activity/AppWidgetMassageDetailActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 45
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

    .line 104
    invoke-virtual {p0}, Lcom/geely/hvac/component/AppWidgetMassageType;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 106
    invoke-virtual {p0, v2}, Lcom/geely/hvac/component/AppWidgetMassageType;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;

    if-ne p1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 107
    :goto_1
    invoke-virtual {v3, v4}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->setActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTypes([I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mTypes:[I

    .line 113
    invoke-virtual {p0}, Lcom/geely/hvac/component/AppWidgetMassageType;->removeAllViews()V

    .line 114
    invoke-virtual {p0}, Lcom/geely/hvac/component/AppWidgetMassageType;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 115
    invoke-virtual {p0}, Lcom/geely/hvac/component/AppWidgetMassageType;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 116
    invoke-virtual {p0}, Lcom/geely/hvac/component/AppWidgetMassageType;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 117
    invoke-virtual {p0}, Lcom/geely/hvac/component/AppWidgetMassageType;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06009a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 118
    invoke-virtual {p0}, Lcom/geely/hvac/component/AppWidgetMassageType;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06009b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    .line 119
    :goto_0
    array-length v7, p1

    if-ge v6, v7, :cond_5

    const/4 v7, 0x5

    if-le v6, v7, :cond_0

    goto :goto_5

    .line 123
    :cond_0
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz v6, :cond_2

    const/4 v8, 0x3

    if-eq v6, v8, :cond_2

    const/4 v8, 0x6

    if-ne v6, v8, :cond_1

    goto :goto_1

    :cond_1
    move v8, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v8, v3

    .line 124
    :goto_2
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    const/4 v8, 0x2

    if-gt v6, v8, :cond_3

    move v8, v3

    goto :goto_3

    :cond_3
    move v8, v4

    .line 125
    :goto_3
    iput v8, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 126
    new-instance v8, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;

    invoke-virtual {p0}, Lcom/geely/hvac/component/AppWidgetMassageType;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;-><init>(Landroid/content/Context;)V

    .line 127
    iget v9, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mActiveIndex:I

    if-ne v6, v9, :cond_4

    const/4 v9, 0x1

    .line 128
    invoke-virtual {v8, v9}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->setActive(Z)V

    goto :goto_4

    .line 130
    :cond_4
    invoke-virtual {v8, v5}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->setActive(Z)V

    .line 132
    :goto_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->setTag(Ljava/lang/Object;)V

    .line 133
    iget-object v9, p0, Lcom/geely/hvac/component/AppWidgetMassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    aget v9, p1, v6

    invoke-virtual {v8, v9}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->setType(I)V

    .line 135
    invoke-virtual {p0, v8, v7}, Lcom/geely/hvac/component/AppWidgetMassageType;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    return-void
.end method
