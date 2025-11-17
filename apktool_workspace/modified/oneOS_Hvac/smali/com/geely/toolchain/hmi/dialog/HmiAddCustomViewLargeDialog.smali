.class public Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiAddCustomViewLargeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiConfigChangeListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiSelectTitleListener;
    }
.end annotation


# instance fields
.field private flagSelectIndex:I

.field private hmiCloseResourceId:I

.field private hmiTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hmiView:Landroid/view/View;

.field private mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mCustomView:Landroid/widget/LinearLayout;

.field private mHeight:I

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mHmiConfigChangeListener:Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiConfigChangeListener;

.field private mHmiSelectTitleListener:Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiSelectTitleListener;

.field private mHmiTitle:Ljava/lang/String;

.field private mIndicators:[Landroid/view/View;

.field private mIsShowIndicators:Z

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTitles:[Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mWidth:I

.field private maxItems:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    .line 33
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiCloseResourceId:I

    const/4 v0, 0x3

    .line 39
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->maxItems:I

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->flagSelectIndex:I

    const/16 v0, 0x5d0

    .line 48
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mWidth:I

    const/16 v0, 0x2a8

    .line 49
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHeight:I

    return-void
.end method

.method private hmiConfigChange()V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->flagSelectIndex:I

    invoke-virtual {p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->setTitlesColor(I)V

    .line 167
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiCloseResourceId:I

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 168
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    return-void
.end method

.method private initData()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v1, "initData: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitles:[Lcom/geely/toolchain/hmi/view/HmiTextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 127
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mCustomView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v1, "initData: hmiView  is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitles:[Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$id;->title1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 75
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitles:[Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$id;->title2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 76
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitles:[Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v1, Lcom/geely/toolchain/hmi/R$id;->title3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 77
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mIndicators:[Landroid/view/View;

    sget v1, Lcom/geely/toolchain/hmi/R$id;->indicator1:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v2

    .line 78
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mIndicators:[Landroid/view/View;

    sget v1, Lcom/geely/toolchain/hmi/R$id;->indicator2:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    .line 79
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mIndicators:[Landroid/view/View;

    sget v1, Lcom/geely/toolchain/hmi/R$id;->indicator3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v4

    .line 80
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 81
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 82
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 83
    sget v0, Lcom/geely/toolchain/hmi/R$id;->customView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mCustomView:Landroid/widget/LinearLayout;

    .line 84
    iget p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->flagSelectIndex:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->setTitlesColor(I)V

    .line 85
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mCloseIcon:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewLargeDialog$UGhacFFcK5Zkt9wrHUtrT61M_sA;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewLargeDialog$UGhacFFcK5Zkt9wrHUtrT61M_sA;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitles:[Lcom/geely/toolchain/hmi/view/HmiTextView;

    aget-object v0, v0, p1

    invoke-virtual {v0, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    .line 103
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitles:[Lcom/geely/toolchain/hmi/view/HmiTextView;

    aget-object v0, v0, p1

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewLargeDialog$4bvcCkxAX8ASX6SozpqizaEWTiY;

    invoke-direct {v1, p0, p1}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiAddCustomViewLargeDialog$4bvcCkxAX8ASX6SozpqizaEWTiY;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;I)V

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$0$HmiAddCustomViewLargeDialog(Landroid/view/View;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v1, "initView: mHmiCloseListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->dismiss()V

    .line 92
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiAddCustomViewLargeDialog(ILandroid/view/View;)V
    .locals 1

    .line 104
    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->setTitlesColor(I)V

    .line 105
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->flagSelectIndex:I

    if-ne v0, p1, :cond_0

    .line 106
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v0, "initView: \u6807\u9898\u4e0d\u53ef\u91cd\u590d\u70b9\u51fb"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void

    .line 109
    :cond_0
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->flagSelectIndex:I

    .line 110
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiSelectTitleListener:Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiSelectTitleListener;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiSelectTitleListener;->selectTab(I)V

    goto :goto_0

    .line 113
    :cond_1
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v0, "onClick: mHmiSelectTitleListener is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 201
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 202
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiConfigChange()V

    .line 204
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiConfigChangeListener:Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiConfigChangeListener;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0, p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiConfigChangeListener;->configChange(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 211
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 212
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSaveInstanceState run"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    const-string v1, "hmiTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 214
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->flagSelectIndex:I

    const-string v1, "flagSelectIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiTitle:Ljava/lang/String;

    const-string v1, "singleTitle"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 140
    invoke-super {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onStart()V

    .line 141
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mWidth:I

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart: run mWidth:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 59
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    const-string v0, "hmiTitle"

    .line 61
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    .line 62
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiCloseResourceId:I

    .line 63
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->flagSelectIndex:I

    const-string v1, "flagSelectIndex"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->flagSelectIndex:I

    const-string v0, "singleTitle"

    .line 64
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiTitle:Ljava/lang/String;

    .line 66
    :cond_0
    iget p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->maxItems:I

    new-array v0, p2, [Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitles:[Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 67
    new-array p2, p2, [Landroid/view/View;

    iput-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mIndicators:[Landroid/view/View;

    .line 68
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->initView(Landroid/view/View;)V

    .line 69
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->initData()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 221
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 222
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v1, "onViewStateRestored: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v0, "onViewStateRestored: savedInstanceState is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "hmiTitle"

    .line 227
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    .line 228
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiCloseResourceId:I

    const-string v1, "hmiCloseResourceId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiCloseResourceId:I

    .line 229
    iget v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->flagSelectIndex:I

    const-string v1, "flagSelectIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->flagSelectIndex:I

    const-string v0, "singleTitle"

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiTitle:Ljava/lang/String;

    return-void
.end method

.method public setDialogSize(II)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;
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

    .line 240
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mWidth:I

    .line 241
    iput p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHeight:I

    return-object p0
.end method

.method public setHmiAddView(Landroid/view/View;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiAddView: view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiView:Landroid/view/View;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiCloseListener: hmiCloseListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-object p0
.end method

.method public setHmiCloseResourceId(I)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeResourceId"
        }
    .end annotation

    .line 299
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiCloseResourceId: closeResourceId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiCloseResourceId:I

    return-object p0
.end method

.method public setHmiConfigChangeListener(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiConfigChangeListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiConfigChangeListener"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiSelectTitleListener: hmiSelectTitleListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiConfigChangeListener:Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiConfigChangeListener;

    return-object p0
.end method

.method public setHmiSelectTitleListener(Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiSelectTitleListener;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiSelectTitleListener"
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiSelectTitleListener: hmiSelectTitleListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiSelectTitleListener:Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog$HmiSelectTitleListener;

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titles"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiTitle: title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mHmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiTitles(Ljava/util/ArrayList;)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "titles"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHmiTitle: title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    return-object p0
.end method

.method public setIndicatorsVisibility(Z)Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isShowIndicators"
        }
    .end annotation

    .line 154
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mIsShowIndicators:Z

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 53
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_add_custom_view_large_dialog:I

    return v0
.end method

.method public setTitlesColor(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "select"
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 179
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->TAG:Ljava/lang/String;

    const-string v0, "hmiConfigChange: context is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    move v2, v1

    .line 183
    :goto_0
    iget-object v3, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/16 v3, 0x8

    if-ne p1, v2, :cond_2

    .line 185
    iget-object v4, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitles:[Lcom/geely/toolchain/hmi/view/HmiTextView;

    aget-object v4, v4, v2

    sget v5, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 186
    iget-boolean v4, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mIsShowIndicators:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->hmiTitles:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 187
    iget-object v3, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mIndicators:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 189
    :cond_1
    iget-object v4, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mIndicators:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 192
    :cond_2
    iget-object v4, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mTitles:[Lcom/geely/toolchain/hmi/view/HmiTextView;

    aget-object v4, v4, v2

    sget v5, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_un_select_title_color:I

    invoke-static {v0, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 193
    iget-object v4, p0, Lcom/geely/toolchain/hmi/dialog/HmiAddCustomViewLargeDialog;->mIndicators:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
