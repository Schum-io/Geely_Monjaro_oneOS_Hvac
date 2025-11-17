.class public Lcom/geely/toolchain/hmi/search/FocusEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "FocusEditText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FocusEditText"


# instance fields
.field private mClear:Z

.field private mClearFocus:Z


# direct methods
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

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/search/FocusEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 1

    .line 47
    invoke-super {p0}, Landroidx/appcompat/widget/AppCompatEditText;->clearFocus()V

    .line 48
    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/search/FocusEditText;->mClearFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_0
    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 36
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/geely/toolchain/hmi/search/FocusEditText;->mClear:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/search/FocusEditText;->clearFocus()V

    return v1

    .line 42
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setTextClearOnBackPressed(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clear"
        }
    .end annotation

    .line 54
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/search/FocusEditText;->mClear:Z

    return-void
.end method

.method public setTextClearOnClearFocus(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clearFocus"
        }
    .end annotation

    .line 58
    iput-boolean p1, p0, Lcom/geely/toolchain/hmi/search/FocusEditText;->mClearFocus:Z

    return-void
.end method
