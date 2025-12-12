.class public abstract Lcom/geely/toolchain/hmi/dialog/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BaseDialog"


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

    .line 26
    sget v0, Lcom/geely/toolchain/hmi/R$style;->hmi_dialog_style:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 39
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-nez p1, :cond_0

    .line 41
    sget-object p1, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->TAG:Ljava/lang/String;

    const-string v0, "onCreate: getMainView() cannot be null!!!"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/toolchain/hmi/util/UiUtil;->getHmiCurrentModelIsDark(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    sget-object p1, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->TAG:Ljava/lang/String;

    const-string v0, "current mode is dark"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 48
    :cond_1
    sget-object p1, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->TAG:Ljava/lang/String;

    const-string v0, "current mode is light"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/geely/toolchain/hmi/R$dimen;->oneoshmi_dialog_center_top:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v1, v2}, Lcom/geely/toolchain/hmi/util/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->setLayoutId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/dialog/BaseDialog;->setContentView(I)V

    return-void
.end method

.method protected abstract setLayoutId()I
.end method
