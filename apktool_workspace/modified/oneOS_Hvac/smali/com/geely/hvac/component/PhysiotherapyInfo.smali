.class public Lcom/geely/hvac/component/PhysiotherapyInfo;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "PhysiotherapyInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhysiotherapyInfo"


# instance fields
.field private final mType:Landroidx/databinding/ObservableInt;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    .line 39
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/PhysiotherapyInfo;->mType:Landroidx/databinding/ObservableInt;

    .line 40
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/PhysiotherapyInfo;->init(Landroid/content/Context;)V

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

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance p2, Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p2, p0, Lcom/geely/hvac/component/PhysiotherapyInfo;->mType:Landroidx/databinding/ObservableInt;

    .line 45
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/PhysiotherapyInfo;->init(Landroid/content/Context;)V

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

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance p2, Landroidx/databinding/ObservableInt;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p2, p0, Lcom/geely/hvac/component/PhysiotherapyInfo;->mType:Landroidx/databinding/ObservableInt;

    .line 50
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/PhysiotherapyInfo;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bindType(Lcom/geely/hvac/component/PhysiotherapyInfo;I)V
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

    .line 31
    sget-object v0, Lcom/geely/hvac/component/PhysiotherapyInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindPhysiotherapyInfoType v:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    iget-object p0, p0, Lcom/geely/hvac/component/PhysiotherapyInfo;->mType:Landroidx/databinding/ObservableInt;

    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBinding;

    move-result-object p1

    .line 55
    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutSeatPhysiotherapyInfoBinding;->setParent(Lcom/geely/hvac/component/PhysiotherapyInfo;)V

    return-void
.end method


# virtual methods
.method public formatType(I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/geely/hvac/component/PhysiotherapyInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 70
    invoke-static {p1, v0}, Lcom/geely/hvac/util/PhysiotherapyUtil;->getTypeDrawableId(IZ)I

    move-result p1

    if-lez p1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/geely/hvac/component/PhysiotherapyInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    return-object p1
.end method

.method public formatTypeToString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 64
    sget-object v0, Lcom/geely/hvac/component/PhysiotherapyInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "formatTypeToString, type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    invoke-static {p1}, Lcom/geely/hvac/util/PhysiotherapyUtil;->formatType(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/geely/hvac/component/PhysiotherapyInfo;->mType:Landroidx/databinding/ObservableInt;

    return-object v0
.end method
