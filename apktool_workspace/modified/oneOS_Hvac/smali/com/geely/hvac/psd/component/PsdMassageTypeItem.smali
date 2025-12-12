.class public Lcom/geely/hvac/psd/component/PsdMassageTypeItem;
.super Lcom/geely/hvac/trackballview/TrackballConstraintLayout;
.source "PsdMassageTypeItem.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mActive:Landroidx/databinding/ObservableBoolean;

.field private mBinding:Lcom/geely/hvac/databinding/LayoutPsdMassageTypeItemBinding;

.field private mType:I

.field trackballHelper:Lcom/geely/hvac/util/TrackballHelper;


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

    .line 27
    invoke-direct {p0, p1}, Lcom/geely/hvac/trackballview/TrackballConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    .line 23
    new-instance v0, Lcom/geely/hvac/util/TrackballHelper;

    invoke-direct {v0}, Lcom/geely/hvac/util/TrackballHelper;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->trackballHelper:Lcom/geely/hvac/util/TrackballHelper;

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/trackballview/TrackballConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    .line 23
    new-instance v0, Lcom/geely/hvac/util/TrackballHelper;

    invoke-direct {v0}, Lcom/geely/hvac/util/TrackballHelper;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->trackballHelper:Lcom/geely/hvac/util/TrackballHelper;

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/trackballview/TrackballConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    .line 23
    new-instance v0, Lcom/geely/hvac/util/TrackballHelper;

    invoke-direct {v0}, Lcom/geely/hvac/util/TrackballHelper;-><init>()V

    iput-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->trackballHelper:Lcom/geely/hvac/util/TrackballHelper;

    .line 38
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/geely/hvac/util/TrackballHelper;->resolveAttrs(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 43
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/geely/hvac/databinding/LayoutPsdMassageTypeItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutPsdMassageTypeItemBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mBinding:Lcom/geely/hvac/databinding/LayoutPsdMassageTypeItemBinding;

    .line 44
    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutPsdMassageTypeItemBinding;->setView(Lcom/geely/hvac/psd/component/PsdMassageTypeItem;)V

    return-void
.end method

.method private updateIcon()V
    .locals 3

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mBinding:Lcom/geely/hvac/databinding/LayoutPsdMassageTypeItemBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutPsdMassageTypeItemBinding;->icon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mType:I

    iget-object v2, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v2}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/geely/hvac/util/MassageUtil;->getTypeDrawableId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 60
    iget-object v1, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/geely/hvac/utils/StackPrinter;->getExceptionStack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getActive()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public setActive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "active"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 53
    invoke-direct {p0}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->updateIcon()V

    return-void
.end method

.method public setType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 65
    iput p1, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mType:I

    .line 66
    iget-object v0, p0, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->mBinding:Lcom/geely/hvac/databinding/LayoutPsdMassageTypeItemBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutPsdMassageTypeItemBinding;->tv:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {p1}, Lcom/geely/hvac/util/MassageUtil;->formatType(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    invoke-direct {p0}, Lcom/geely/hvac/psd/component/PsdMassageTypeItem;->updateIcon()V

    return-void
.end method
