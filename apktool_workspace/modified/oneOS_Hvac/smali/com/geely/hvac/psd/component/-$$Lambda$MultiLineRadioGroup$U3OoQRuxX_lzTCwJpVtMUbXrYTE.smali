.class public final synthetic Lcom/geely/hvac/psd/component/-$$Lambda$MultiLineRadioGroup$U3OoQRuxX_lzTCwJpVtMUbXrYTE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/geely/hvac/psd/component/MultiLineRadioGroup;

.field public final synthetic f$1:Landroid/widget/RadioButton;


# direct methods
.method public synthetic constructor <init>(Lcom/geely/hvac/psd/component/MultiLineRadioGroup;Landroid/widget/RadioButton;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/geely/hvac/psd/component/-$$Lambda$MultiLineRadioGroup$U3OoQRuxX_lzTCwJpVtMUbXrYTE;->f$0:Lcom/geely/hvac/psd/component/MultiLineRadioGroup;

    iput-object p2, p0, Lcom/geely/hvac/psd/component/-$$Lambda$MultiLineRadioGroup$U3OoQRuxX_lzTCwJpVtMUbXrYTE;->f$1:Landroid/widget/RadioButton;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/geely/hvac/psd/component/-$$Lambda$MultiLineRadioGroup$U3OoQRuxX_lzTCwJpVtMUbXrYTE;->f$0:Lcom/geely/hvac/psd/component/MultiLineRadioGroup;

    iget-object v1, p0, Lcom/geely/hvac/psd/component/-$$Lambda$MultiLineRadioGroup$U3OoQRuxX_lzTCwJpVtMUbXrYTE;->f$1:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1, p1, p2}, Lcom/geely/hvac/psd/component/MultiLineRadioGroup;->lambda$addView$0$MultiLineRadioGroup(Landroid/widget/RadioButton;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
