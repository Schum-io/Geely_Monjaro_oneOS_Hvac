.class public interface abstract Lcom/airbnb/lottie/animation/content/DrawingContent;
.super Ljava/lang/Object;
.source "DrawingContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/Content;


# virtual methods
.method public abstract draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "canvas",
            "parentMatrix",
            "alpha"
        }
    .end annotation
.end method

.method public abstract getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "outBounds",
            "parentMatrix",
            "applyParents"
        }
    .end annotation
.end method
