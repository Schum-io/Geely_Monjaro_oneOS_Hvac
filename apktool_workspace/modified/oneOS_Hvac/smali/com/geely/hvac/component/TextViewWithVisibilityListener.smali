.class public Lcom/geely/hvac/component/TextViewWithVisibilityListener;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "TextViewWithVisibilityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/component/TextViewWithVisibilityListener$VisibilityListener;
    }
.end annotation


# instance fields
.field private mVisibilityListener:Lcom/geely/hvac/component/TextViewWithVisibilityListener$VisibilityListener;


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

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

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

    .line 21
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/geely/hvac/component/TextViewWithVisibilityListener;->mVisibilityListener:Lcom/geely/hvac/component/TextViewWithVisibilityListener$VisibilityListener;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p1}, Lcom/geely/hvac/component/TextViewWithVisibilityListener$VisibilityListener;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setVisibilityListener(Lcom/geely/hvac/component/TextViewWithVisibilityListener$VisibilityListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibilityListener"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/geely/hvac/component/TextViewWithVisibilityListener;->mVisibilityListener:Lcom/geely/hvac/component/TextViewWithVisibilityListener$VisibilityListener;

    return-void
.end method
