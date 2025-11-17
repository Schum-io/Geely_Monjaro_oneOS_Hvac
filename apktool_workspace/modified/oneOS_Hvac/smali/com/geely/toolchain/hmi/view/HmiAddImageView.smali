.class public Lcom/geely/toolchain/hmi/view/HmiAddImageView;
.super Lcom/geely/toolchain/hmi/view/HmiImageView;
.source "HmiAddImageView.java"


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

    .line 18
    invoke-direct {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/geely/toolchain/hmi/view/HmiImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget p1, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_add_bt_bg:I

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/HmiAddImageView;->setImageResource(I)V

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

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/HmiImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method
