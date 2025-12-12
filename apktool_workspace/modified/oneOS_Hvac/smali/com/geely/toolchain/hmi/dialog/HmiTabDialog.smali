.class public Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.source "HmiTabDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiTabDialog$SelectionListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiTabDialog"


# instance fields
.field private indexTag:I

.field private mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewGroup:Landroid/widget/LinearLayout;

.field private mHeight:I

.field private mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mTabRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTitleText:Ljava/lang/String;

.field private mWidth:I

.field private maxSize:I

.field private selectionListener:Lcom/geely/toolchain/hmi/dialog/HmiTabDialog$SelectionListener;

.field private tabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    const-string p1, ""

    .line 37
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTitleText:Ljava/lang/String;

    const/4 p1, 0x5

    .line 39
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->maxSize:I

    const/4 p1, -0x1

    .line 44
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->indexTag:I

    const/16 p1, 0x5b0

    .line 47
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mWidth:I

    const/16 p1, 0x2d0

    .line 48
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mHeight:I

    return-void
.end method

.method private initData()V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mCustomViewGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    new-instance v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;-><init>(Landroid/content/Context;)V

    .line 112
    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->maxSize:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->setMaxSize(I)V

    .line 113
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->tabs:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->setData(Ljava/util/List;)V

    .line 114
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTabRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 115
    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabDialog$_NVC7SG8l2FV5iSPFjvicOFO0ew;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabDialog$_NVC7SG8l2FV5iSPFjvicOFO0ew;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->setSelectionListener(Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$SelectionListener;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mCustomViewGroup:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 132
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 134
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mCustomViewGroup:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    const-string v0, "HmiTabDialog"

    const-string v1, "initData: hmiView  is null"

    .line 138
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private initView(Landroid/view/Window;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "window"
        }
    .end annotation

    .line 99
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tabRecyclerView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTabRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 100
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 101
    sget v0, Lcom/geely/toolchain/hmi/R$id;->customViewGroup:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mCustomViewGroup:Landroid/widget/LinearLayout;

    .line 102
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 103
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 104
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabDialog$sQCStFTQaxuS8tprXBmdJyHyq4c;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabDialog$sQCStFTQaxuS8tprXBmdJyHyq4c;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hmiConfigChange(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uiMode ===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiTabDialog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hmiConfigChange: context = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    .line 84
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    goto :goto_0

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    .line 87
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 89
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mRootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    sget v1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_not_title_content_color:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 92
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 93
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTitleText:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTabRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$initData$1$HmiTabDialog(I)V
    .locals 2

    .line 117
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->indexTag:I

    if-ne v0, p1, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->selectionListener:Lcom/geely/toolchain/hmi/dialog/HmiTabDialog$SelectionListener;

    if-eqz v0, :cond_1

    .line 121
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->indexTag:I

    .line 122
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mCustomViewGroup:Landroid/widget/LinearLayout;

    invoke-interface {v0, p1, v1}, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog$SelectionListener;->selectTab(ILandroid/widget/LinearLayout;)V

    goto :goto_0

    :cond_1
    const-string p1, "HmiTabDialog"

    const-string v0, "selectionListener is null"

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$initView$0$HmiTabDialog(Landroid/view/View;)V
    .locals 0

    .line 104
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->dismiss()V

    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 64
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mWidth:I

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    .line 65
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->initView(Landroid/view/Window;)V

    .line 67
    :cond_0
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->initData()V

    return-void
.end method

.method public setDialogSize(II)Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 192
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mWidth:I

    .line 193
    iput p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mHeight:I

    return-object p0
.end method

.method public setHmiCustomView(Landroid/view/View;)Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mCustomView:Landroid/view/View;

    return-object p0
.end method

.method public setHmiTabs(Ljava/util/List;)Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tabs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->tabs:Ljava/util/List;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 56
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_tab_dialog:I

    return v0
.end method

.method public setSelectionListener(Lcom/geely/toolchain/hmi/dialog/HmiTabDialog$SelectionListener;)Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectionListener"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->selectionListener:Lcom/geely/toolchain/hmi/dialog/HmiTabDialog$SelectionListener;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titleText"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabDialog;->mTitleText:Ljava/lang/String;

    return-object p0
.end method
