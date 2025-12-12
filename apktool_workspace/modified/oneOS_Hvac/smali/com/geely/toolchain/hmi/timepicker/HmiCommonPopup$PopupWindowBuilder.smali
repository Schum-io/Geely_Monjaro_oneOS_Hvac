.class public Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
.super Ljava/lang/Object;
.source "HmiCommonPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PopupWindowBuilder"
.end annotation


# instance fields
.field private mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;


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

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-direct {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    return-void
.end method


# virtual methods
.method public create()Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$1400(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;)Landroid/widget/PopupWindow;

    .line 280
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    return-object v0
.end method

.method public setAnimationStyle(I)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationStyle"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$602(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I

    return-object p0
.end method

.method public setClippingEnable(Z)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$702(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Z)Z

    return-object p0
.end method

.method public setFocusable(Z)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusable"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$202(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Z)Z

    return-object p0
.end method

.method public setHeight(I)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$102(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I

    return-object p0
.end method

.method public setIgnoreCheekPress(Z)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreCheekPress"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$802(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Z)Z

    return-object p0
.end method

.method public setInputMethodMode(I)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$902(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I

    return-object p0
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onDismissListener"
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$1002(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/widget/PopupWindow$OnDismissListener;)Landroid/widget/PopupWindow$OnDismissListener;

    return-object p0
.end method

.method public setOutsideTouchable(Z)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outsideTouchable"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$502(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Z)Z

    return-object p0
.end method

.method public setSoftInputMode(I)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "softInputMode"
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$1102(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I

    return-object p0
.end method

.method public setTouchListener(Landroid/view/View$OnTouchListener;)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchListener"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$1302(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View$OnTouchListener;)Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public setTouchable(Z)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "touchable"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$1202(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Z)Z

    return-object p0
.end method

.method public setView(I)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resLayoutId"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$302(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I

    .line 201
    iget-object p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$402(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View;)Landroid/view/View;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$402(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;Landroid/view/View;)Landroid/view/View;

    .line 207
    iget-object p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$302(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I

    return-object p0
.end method

.method public setWidth(I)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$002(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I

    return-object p0
.end method

.method public size(II)Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;
    .locals 1
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

    .line 187
    iget-object v0, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$002(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I

    .line 188
    iget-object p1, p0, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup$PopupWindowBuilder;->mHmiCommonPopup:Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;

    invoke-static {p1, p2}, Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;->access$102(Lcom/geely/toolchain/hmi/timepicker/HmiCommonPopup;I)I

    return-object p0
.end method
