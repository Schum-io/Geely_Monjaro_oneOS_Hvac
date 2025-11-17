.class Lcom/geely/hvac/GlyAcInterfaceManager$1;
.super Ljava/lang/Object;
.source "GlyAcInterfaceManager.java"

# interfaces
.implements Lcom/geely/hvac/utils/ToastUtilViewCreate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/geely/hvac/GlyAcInterfaceManager;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/geely/hvac/GlyAcInterfaceManager;


# direct methods
.method constructor <init>(Lcom/geely/hvac/GlyAcInterfaceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/geely/hvac/GlyAcInterfaceManager$1;->this$0:Lcom/geely/hvac/GlyAcInterfaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeToast(Landroid/content/Context;Lcom/geely/hvac/component/Toast;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "toast",
            "msg"
        }
    .end annotation

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/hvac/databinding/LayoutToastBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutToastBinding;

    move-result-object p1

    .line 55
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutToastBinding;->toastTv:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, p3}, Lcom/geely/hvac/component/TextViewWithBg;->setText(Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p1}, Lcom/geely/hvac/databinding/LayoutToastBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/geely/hvac/component/Toast;->setView(Landroid/view/View;)V

    const/16 p1, 0x51

    const/4 p3, 0x0

    const/16 v0, 0xd2

    .line 57
    invoke-virtual {p2, p1, p3, v0}, Lcom/geely/hvac/component/Toast;->setGravity(III)V

    return-void
.end method

.method public onToast(Landroid/content/Context;Landroid/widget/Toast;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "toast",
            "msg"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/geely/hvac/databinding/LayoutToastBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutToastBinding;

    move-result-object p1

    .line 47
    iget-object v0, p1, Lcom/geely/hvac/databinding/LayoutToastBinding;->toastTv:Lcom/geely/hvac/component/TextViewWithBg;

    invoke-virtual {v0, p3}, Lcom/geely/hvac/component/TextViewWithBg;->setText(Ljava/lang/CharSequence;)V

    .line 48
    invoke-virtual {p1}, Lcom/geely/hvac/databinding/LayoutToastBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/16 p1, 0x51

    const/4 p3, 0x0

    const/16 v0, 0xd2

    .line 49
    invoke-virtual {p2, p1, p3, v0}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method
