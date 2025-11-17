.class public Lcom/geely/hvac/component/AppWidgetMassageTypeItem;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "AppWidgetMassageTypeItem.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mActive:Landroidx/databinding/ObservableBoolean;

.field private mBinding:Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;

.field private mType:I


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

    .line 24
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 29
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->TAG:Ljava/lang/String;

    .line 19
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->TAG:Ljava/lang/String;

    .line 19
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p0, p2}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mBinding:Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;

    .line 40
    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;->setView(Lcom/geely/hvac/component/AppWidgetMassageTypeItem;)V

    return-void
.end method

.method private updateIcon()V
    .locals 3

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mBinding:Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;->icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mType:I

    iget-object v2, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v2}, Landroidx/databinding/ObservableBoolean;->get()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/geely/hvac/util/MassageUtil;->getTypeDrawableId(IZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 56
    iget-object v1, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/geely/hvac/utils/StackPrinter;->getExceptionStack(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getActive()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

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

    .line 48
    iget-object v0, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mActive:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 49
    invoke-direct {p0}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->updateIcon()V

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

    .line 61
    iput p1, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mType:I

    .line 62
    iget-object v0, p0, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->mBinding:Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;

    iget-object v0, v0, Lcom/geely/hvac/databinding/LayoutAppWidgetMassageTypeItemBinding;->tv:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/geely/hvac/util/MassageUtil;->formatType(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-direct {p0}, Lcom/geely/hvac/component/AppWidgetMassageTypeItem;->updateIcon()V

    return-void
.end method
