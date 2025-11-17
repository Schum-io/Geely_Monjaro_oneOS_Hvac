.class Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;
.super Ljava/lang/Object;
.source "HmiShadowLayerBlurView.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/view/card/CardViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCardBackground:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;


# direct methods
.method constructor <init>(Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCardBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCardView()Landroid/view/View;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    return-object v0
.end method

.method public getPreventCornerOverlap()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUseCompatPadding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCardBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMinWidthHeightInternal(II)V
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

    .line 143
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    iget v0, v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mUserSetMinWidth:I

    if-le p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    invoke-static {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->access$101(Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;I)V

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    iget p1, p1, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mUserSetMinHeight:I

    if-le p2, p1, :cond_1

    .line 147
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    invoke-static {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->access$201(Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;I)V

    :cond_1
    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    iget-object v0, v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mShadowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 137
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    iget-object v1, v0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    iget-object v1, v1, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    iget-object v1, v1, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr p3, v1

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView$1;->this$0:Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;

    iget-object v1, v1, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->mContentPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p4, v1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;->access$001(Lcom/geely/toolchain/hmi/view/HmiShadowLayerBlurView;IIII)V

    return-void
.end method
