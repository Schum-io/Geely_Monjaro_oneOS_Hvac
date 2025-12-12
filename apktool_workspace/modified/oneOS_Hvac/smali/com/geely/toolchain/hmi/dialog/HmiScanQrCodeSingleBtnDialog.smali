.class public Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;
.super Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;
.source "HmiScanQrCodeSingleBtnDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiQrCodeRefreshListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiBtnListener;
    }
.end annotation


# instance fields
.field private hmiBtnText:Ljava/lang/String;

.field private hmiClause:Ljava/lang/CharSequence;

.field private hmiContent:Ljava/lang/String;

.field private hmiDesc:Ljava/lang/String;

.field private hmiTitle:Ljava/lang/String;

.field private mBox:Landroid/widget/CheckBox;

.field private mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

.field private mClause:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mClauseIcon:Landroid/widget/ImageView;

.field private mClauseIconId:I

.field private mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private final mCloseResourceId:I

.field private mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mDescLinearLayout:Landroid/widget/LinearLayout;

.field private mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiBtnListener;

.field private mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

.field private mHmiQrCodeRefreshListener:Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiQrCodeRefreshListener;

.field private mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

.field private mQrCodeBitmap:Landroid/graphics/Bitmap;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;-><init>()V

    .line 34
    sget v0, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_close_pop_big:I

    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mCloseResourceId:I

    return-void
.end method

.method static synthetic access$000(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiQrCodeRefreshListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mHmiQrCodeRefreshListener:Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiQrCodeRefreshListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;)Lcom/geely/toolchain/hmi/view/HmiTextView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;)Landroid/widget/LinearLayout;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mDescLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private initData()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mCloseResourceId:I

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClauseIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClauseIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mQrCodeBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClause:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 113
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClause:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_transparent:I

    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setHighlightColor(I)V

    .line 114
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClause:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiClause:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$2;

    invoke-direct {v1, p0}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$2;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 126
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiBtnText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 71
    sget v0, Lcom/geely/toolchain/hmi/R$id;->close:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 72
    sget v0, Lcom/geely/toolchain/hmi/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 73
    sget v0, Lcom/geely/toolchain/hmi/R$id;->content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 74
    sget v0, Lcom/geely/toolchain/hmi/R$id;->qrCode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    .line 75
    sget v0, Lcom/geely/toolchain/hmi/R$id;->desc:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 76
    sget v0, Lcom/geely/toolchain/hmi/R$id;->clause:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClause:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 77
    sget v0, Lcom/geely/toolchain/hmi/R$id;->btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiStateButton;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    .line 78
    sget v0, Lcom/geely/toolchain/hmi/R$id;->box:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mBox:Landroid/widget/CheckBox;

    .line 79
    sget v0, Lcom/geely/toolchain/hmi/R$id;->clauseIcon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClauseIcon:Landroid/widget/ImageView;

    .line 80
    sget v0, Lcom/geely/toolchain/hmi/R$id;->rootView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mRootView:Landroid/widget/FrameLayout;

    .line 81
    sget v0, Lcom/geely/toolchain/hmi/R$id;->ll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mDescLinearLayout:Landroid/widget/LinearLayout;

    .line 82
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiScanQrCodeSingleBtnDialog$iofGUM7OgCQWV48bnlG4scO2gQs;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiScanQrCodeSingleBtnDialog$iofGUM7OgCQWV48bnlG4scO2gQs;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiScanQrCodeSingleBtnDialog$P-iTYFij2azbymljgKbJv0O1ozA;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiScanQrCodeSingleBtnDialog$P-iTYFij2azbymljgKbJv0O1ozA;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    new-instance v0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$1;

    invoke-direct {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$1;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;)V

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public hmiConfigChange()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->TAG:Ljava/lang/String;

    const-string v1, "hmiConfigChange: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 138
    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uiMode ===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mRootView:Landroid/widget/FrameLayout;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_dialog_bg:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mTitle:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_title_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 141
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClose:Lcom/geely/toolchain/hmi/view/HmiImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mCloseResourceId:I

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageResource(I)V

    .line 142
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClauseIcon:Landroid/widget/ImageView;

    iget v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClauseIconId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 143
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mContent:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 144
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mDesc:Lcom/geely/toolchain/hmi/view/HmiTextView;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_desc_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 145
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_bg_color:I

    .line 146
    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_btn_radius:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 145
    invoke-virtual {v1, v2, v3}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setBtnColorAndRadius(IF)V

    .line 148
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mBtn:Lcom/geely/toolchain/hmi/view/HmiStateButton;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_single_btn_text_color:I

    invoke-static {v0, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/geely/toolchain/hmi/view/HmiStateButton;->setTextColor(I)V

    return-void
.end method

.method public synthetic lambda$initView$0$HmiScanQrCodeSingleBtnDialog(Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiBtnListener;

    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiBtnListener;->action(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;Z)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->TAG:Ljava/lang/String;

    const-string v1, "action mHmiBtnListener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$initView$1$HmiScanQrCodeSingleBtnDialog(Landroid/view/View;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0, p0}, Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;->hmiClose(Landroidx/fragment/app/DialogFragment;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->dismiss()V

    .line 95
    :goto_0
    invoke-static {p1}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 168
    invoke-super {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiConfigChange()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
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

    .line 65
    invoke-super {p0, p1, p2}, Lcom/geely/toolchain/hmi/dialog/BaseHmiDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->initView(Landroid/view/View;)V

    .line 67
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->initData()V

    return-void
.end method

.method public setClauseResourceId(I)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mDescIconId"
        }
    .end annotation

    .line 178
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mClauseIconId:I

    return-object p0
.end method

.method public setHmiBtnListener(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiBtnListener;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiBtnListener"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mHmiBtnListener:Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiBtnListener;

    return-object p0
.end method

.method public setHmiBtnText(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "btnText"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiBtnText:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiClause(Ljava/lang/CharSequence;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clause"
        }
    .end annotation

    .line 211
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiClause:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setHmiCloseListener(Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiCloseListener"
        }
    .end annotation

    .line 253
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mHmiCloseListener:Lcom/geely/toolchain/hmi/dialog/HmiCloseListener;

    return-void
.end method

.method public setHmiContent(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiContent:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiDesc(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "desc"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiDesc:Ljava/lang/String;

    return-object p0
.end method

.method public setHmiQrCodeRefreshListener(Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiQrCodeRefreshListener;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmiQrCodeRefreshListener"
        }
    .end annotation

    .line 283
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mHmiQrCodeRefreshListener:Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog$HmiQrCodeRefreshListener;

    return-object p0
.end method

.method public setHmiTitle(Ljava/lang/String;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->hmiTitle:Ljava/lang/String;

    return-object p0
.end method

.method protected setLayoutId()I
    .locals 1

    .line 60
    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_scan_qr_code_single_btn_dialog:I

    return v0
.end method

.method public setQrCodeBitmap(Landroid/graphics/Bitmap;)Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qrCodeBitmap"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQrCodeBitmap: qrCodeBitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mQrCodeBitmap:Landroid/graphics/Bitmap;

    .line 160
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiScanQrCodeSingleBtnDialog;->mQrCode:Lcom/geely/toolchain/hmi/view/HmiImageView;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-object p0
.end method
