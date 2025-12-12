.class public Lcom/geely/hvac/component/SeatPositionSaveTab;
.super Landroid/widget/LinearLayout;
.source "SeatPositionSaveTab.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SeatPositionSaveTab"


# instance fields
.field private mBinding:Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;

.field private final mCustomTagEnable:Landroidx/databinding/ObservableBoolean;

.field private mOnTabChangeListener:Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;

.field private final mTabIndex:Landroidx/databinding/ObservableInt;

.field private final mTag1:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag2:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag3:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


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

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    .line 29
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mCustomTagEnable:Landroidx/databinding/ObservableBoolean;

    .line 30
    new-instance v0, Landroidx/databinding/ObservableField;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag1:Landroidx/databinding/ObservableField;

    .line 31
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag2:Landroidx/databinding/ObservableField;

    .line 32
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag3:Landroidx/databinding/ObservableField;

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/geely/hvac/component/SeatPositionSaveTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    .line 29
    new-instance v0, Landroidx/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mCustomTagEnable:Landroidx/databinding/ObservableBoolean;

    .line 30
    new-instance v0, Landroidx/databinding/ObservableField;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag1:Landroidx/databinding/ObservableField;

    .line 31
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag2:Landroidx/databinding/ObservableField;

    .line 32
    new-instance v0, Landroidx/databinding/ObservableField;

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag3:Landroidx/databinding/ObservableField;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatPositionSaveTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance p3, Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    .line 29
    new-instance p3, Landroidx/databinding/ObservableBoolean;

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mCustomTagEnable:Landroidx/databinding/ObservableBoolean;

    .line 30
    new-instance p3, Landroidx/databinding/ObservableField;

    const-string v0, ""

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag1:Landroidx/databinding/ObservableField;

    .line 31
    new-instance p3, Landroidx/databinding/ObservableField;

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag2:Landroidx/databinding/ObservableField;

    .line 32
    new-instance p3, Landroidx/databinding/ObservableField;

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag3:Landroidx/databinding/ObservableField;

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/SeatPositionSaveTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/SeatPositionSaveTab;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tab",
            "tabIndex"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object p0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {p0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/SeatPositionSaveTab;Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tab",
            "listener"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mOnTabChangeListener:Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;

    return-void
.end method

.method public static bindSeatSaveTabTags(Lcom/geely/hvac/component/SeatPositionSaveTab;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tab",
            "tags"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/geely/hvac/component/SeatPositionSaveTab;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindSeatSaveTabTags, tags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    invoke-virtual {p0, p1}, Lcom/geely/hvac/component/SeatPositionSaveTab;->setTags([Ljava/lang/String;)V

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

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 p2, 0x1

    .line 92
    invoke-static {p1, p0, p2}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mBinding:Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;

    .line 94
    invoke-virtual {p1, p0}, Lcom/geely/hvac/databinding/LayoutSeatPositionSaveTabBinding;->setTab(Lcom/geely/hvac/component/SeatPositionSaveTab;)V

    return-void
.end method


# virtual methods
.method public getCustomTagEnable()Landroidx/databinding/ObservableBoolean;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mCustomTagEnable:Landroidx/databinding/ObservableBoolean;

    return-object v0
.end method

.method public getTabIndex()Landroidx/databinding/ObservableInt;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    return-object v0
.end method

.method public getTag1()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag1:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getTag2()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag2:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public getTag3()Landroidx/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag3:Landroidx/databinding/ObservableField;

    return-object v0
.end method

.method public itemClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    .line 135
    :goto_0
    iget-object p1, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTabIndex:Landroidx/databinding/ObservableInt;

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableInt;->set(I)V

    .line 136
    iget-object p1, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mOnTabChangeListener:Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;

    if-eqz p1, :cond_0

    .line 137
    invoke-interface {p1, v0}, Lcom/geely/hvac/component/intf/SeatPositionSaveTabChangeListener;->onChanged(I)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f09017b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTags([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tags"
        }
    .end annotation

    .line 98
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-lt v0, v2, :cond_0

    aget-object v0, p1, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mCustomTagEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, v3}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mCustomTagEnable:Landroidx/databinding/ObservableBoolean;

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableBoolean;->set(Z)V

    .line 104
    :goto_0
    array-length v0, p1

    if-lt v0, v3, :cond_1

    .line 105
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag1:Landroidx/databinding/ObservableField;

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 107
    :cond_1
    array-length v0, p1

    if-lt v0, v4, :cond_2

    .line 108
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag2:Landroidx/databinding/ObservableField;

    aget-object v1, p1, v3

    invoke-virtual {v0, v1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 110
    :cond_2
    array-length v0, p1

    if-lt v0, v2, :cond_3

    .line 111
    iget-object v0, p0, Lcom/geely/hvac/component/SeatPositionSaveTab;->mTag3:Landroidx/databinding/ObservableField;

    aget-object p1, p1, v4

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
