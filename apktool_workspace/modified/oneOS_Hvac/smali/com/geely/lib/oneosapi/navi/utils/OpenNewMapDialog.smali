.class public Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;
.super Landroid/app/Dialog;
.source "OpenNewMapDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnCancelClickListener;,
        Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnConfirmClickListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnConfirm:Landroid/widget/Button;

.field private cancel:Ljava/lang/String;

.field private confirm:Ljava/lang/String;

.field private onCancelClickListener:Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnCancelClickListener;

.field private onConfirmClickListener:Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnConfirmClickListener;

.field private title:Ljava/lang/String;

.field private tvTitle:Landroid/widget/TextView;


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

    .line 1
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "themeResId"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$000(Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;)Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnConfirmClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->onConfirmClickListener:Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnConfirmClickListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;)Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnCancelClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->onCancelClickListener:Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnCancelClickListener;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->btnConfirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->confirm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->btnCancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->cancel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->btnConfirm:Landroid/widget/Button;

    new-instance v1, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$1;

    invoke-direct {v1, p0}, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$1;-><init>(Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$2;

    invoke-direct {v1, p0}, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$2;-><init>(Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initView()V
    .locals 1

    .line 1
    sget v0, Lcom/geely/lib/oneosapi/R$id;->tv_title:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->tvTitle:Landroid/widget/TextView;

    .line 2
    sget v0, Lcom/geely/lib/oneosapi/R$id;->btn_confirm:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->btnConfirm:Landroid/widget/Button;

    .line 3
    sget v0, Lcom/geely/lib/oneosapi/R$id;->btn_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->btnCancel:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/geely/lib/oneosapi/R$layout;->dialog_open_new_map:I

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 4
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->initView()V

    .line 7
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->initData()V

    .line 10
    invoke-direct {p0}, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->initEvent()V

    return-void
.end method

.method public setCancelClickListener(Ljava/lang/String;Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnCancelClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cancel",
            "onCancelClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->cancel:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->onCancelClickListener:Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnCancelClickListener;

    return-void
.end method

.method public setConfirmClickListener(Ljava/lang/String;Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnConfirmClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "confirm",
            "onConfirmClickListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->confirm:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->onConfirmClickListener:Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog$OnConfirmClickListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/geely/lib/oneosapi/navi/utils/OpenNewMapDialog;->title:Ljava/lang/String;

    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7f6

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 2
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
