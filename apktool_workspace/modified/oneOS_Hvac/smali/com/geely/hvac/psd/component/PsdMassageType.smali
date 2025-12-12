.class public Lcom/geely/hvac/psd/component/PsdMassageType;
.super Lcom/geely/hvac/component/FlowLayout;
.source "PsdMassageType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PsdMassageType"


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

    .line 85
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 18
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mTypes:[I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mType:I

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    .line 28
    iput p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mActiveIndex:I

    .line 29
    new-instance p1, Lcom/geely/hvac/psd/component/-$$Lambda$PsdMassageType$y3huO7y4gsPq2rSgJ5vHAVtz6Fc;

    invoke-direct {p1, p0}, Lcom/geely/hvac/psd/component/-$$Lambda$PsdMassageType$y3huO7y4gsPq2rSgJ5vHAVtz6Fc;-><init>(Lcom/geely/hvac/psd/component/PsdMassageType;)V

    iput-object p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

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

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 18
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mTypes:[I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mType:I

    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    .line 28
    iput p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mActiveIndex:I

    .line 29
    new-instance p1, Lcom/geely/hvac/psd/component/-$$Lambda$PsdMassageType$y3huO7y4gsPq2rSgJ5vHAVtz6Fc;

    invoke-direct {p1, p0}, Lcom/geely/hvac/psd/component/-$$Lambda$PsdMassageType$y3huO7y4gsPq2rSgJ5vHAVtz6Fc;-><init>(Lcom/geely/hvac/psd/component/PsdMassageType;)V

    iput-object p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

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

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 18
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mTypes:[I

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mType:I

    const/4 p2, 0x0

    .line 27
    iput-object p2, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    .line 28
    iput p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mActiveIndex:I

    .line 29
    new-instance p1, Lcom/geely/hvac/psd/component/-$$Lambda$PsdMassageType$y3huO7y4gsPq2rSgJ5vHAVtz6Fc;

    invoke-direct {p1, p0}, Lcom/geely/hvac/psd/component/-$$Lambda$PsdMassageType$y3huO7y4gsPq2rSgJ5vHAVtz6Fc;-><init>(Lcom/geely/hvac/psd/component/PsdMassageType;)V

    iput-object p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

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

.method public static bind(Lcom/geely/hvac/psd/component/PsdMassageType;I)V
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

    .line 65
    sget-object v0, Lcom/geely/hvac/psd/component/PsdMassageType;->TAG:Ljava/lang/String;

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

    .line 66
    invoke-direct {p0, p1}, Lcom/geely/hvac/psd/component/PsdMassageType;->setMassageType(I)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/psd/component/PsdMassageType;Lcom/geely/hvac/component/intf/MassageTypeChangeListener;)V
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

    .line 58
    iput-object p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    return-void
.end method

.method public static bind(Lcom/geely/hvac/psd/component/PsdMassageType;[I)V
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

    .line 46
    sget-object v1, Lcom/geely/hvac/psd/component/PsdMassageType;->TAG:Ljava/lang/String;

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

    .line 47
    invoke-virtual {p0, p1}, Lcom/geely/hvac/psd/component/PsdMassageType;->setTypes([I)V

    .line 48
    iget p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mType:I

    invoke-direct {p0, p1}, Lcom/geely/hvac/psd/component/PsdMassageType;->setMassageType(I)V

    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Lcom/geely/hvac/psd/component/PsdMassageType;->TAG:Ljava/lang/String;

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

    .line 71
    iput p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mType:I

    const/4 v0, 0x0

    .line 72
    :goto_0
    iget-object v1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mTypes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 73
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

    .line 81
    :cond_2
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/PsdMassageType;->setActiveIndex(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PsdMassageType(Landroid/view/View;)V
    .locals 3

    .line 31
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/geely/hvac/psd/component/PsdMassageType;->setActiveIndex(I)V

    .line 33
    iget-object v1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mListener:Lcom/geely/hvac/component/intf/MassageTypeChangeListener;

    if-eqz v1, :cond_0

    .line 34
    iget-object v2, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mTypes:[I

    aget v0, v2, v0

    invoke-interface {v1, p0, v0}, Lcom/geely/hvac/component/intf/MassageTypeChangeListener;->onTypeChange(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
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

    .line 98
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/PsdMassageType;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 100
    invoke-virtual {p0, v2}, Lcom/geely/hvac/psd/component/PsdMassageType;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;

    if-ne p1, v2, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 101
    :goto_1
    invoke-virtual {v3, v4}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->setActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTypes([I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mTypes:[I

    .line 107
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/PsdMassageType;->removeAllViews()V

    const/4 v0, 0x0

    move v1, v0

    .line 114
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    goto :goto_5

    .line 118
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v4, 0x120

    const/16 v5, 0x60

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x28

    .line 121
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 122
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    const/4 v6, 0x3

    if-eq v1, v6, :cond_2

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v4

    .line 123
    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    const/4 v2, 0x4

    if-lt v1, v2, :cond_3

    goto :goto_3

    :cond_3
    move v4, v0

    .line 124
    :goto_3
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 125
    new-instance v2, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;

    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/PsdMassageType;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;-><init>(Landroid/content/Context;)V

    .line 126
    iget v4, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mActiveIndex:I

    if-ne v1, v4, :cond_4

    .line 127
    invoke-virtual {v2, v5}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->setActive(Z)V

    goto :goto_4

    .line 129
    :cond_4
    invoke-virtual {v2, v0}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->setActive(Z)V

    .line 131
    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->setTag(Ljava/lang/Object;)V

    .line 132
    iget-object v4, p0, Lcom/geely/hvac/psd/component/PsdMassageType;->mItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    aget v4, p1, v1

    invoke-virtual {v2, v4}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->setType(I)V

    .line 134
    invoke-virtual {p0, v2, v3}, Lcom/geely/hvac/psd/component/PsdMassageType;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_5
    return-void
.end method
