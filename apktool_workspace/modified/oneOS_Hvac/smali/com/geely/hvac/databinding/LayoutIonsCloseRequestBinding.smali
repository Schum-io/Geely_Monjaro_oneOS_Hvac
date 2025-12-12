.class public final Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;
.super Ljava/lang/Object;
.source "LayoutIonsCloseRequestBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cancel:Lcom/geely/hvac/component/TextViewWithBg;

.field public final close:Lcom/geely/hvac/component/TextViewWithBg;

.field public final content1:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final content2:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final title:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field public final wrap:Lcom/geely/hvac/component/ConstraintLayoutWithBg;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/TextViewWithBg;Lcom/geely/hvac/component/TextViewWithBg;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/ConstraintLayoutWithBg;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rootView",
            "cancel",
            "close",
            "content1",
            "content2",
            "title",
            "wrap"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    iput-object p2, p0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->cancel:Lcom/geely/hvac/component/TextViewWithBg;

    .line 47
    iput-object p3, p0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->close:Lcom/geely/hvac/component/TextViewWithBg;

    .line 48
    iput-object p4, p0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->content1:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 49
    iput-object p5, p0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->content2:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 50
    iput-object p6, p0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->title:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 51
    iput-object p7, p0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->wrap:Lcom/geely/hvac/component/ConstraintLayoutWithBg;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    const v0, 0x7f090093

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/geely/hvac/component/TextViewWithBg;

    if-eqz v4, :cond_0

    const v0, 0x7f0900af

    .line 88
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/geely/hvac/component/TextViewWithBg;

    if-eqz v5, :cond_0

    const v0, 0x7f0900bc

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v6, :cond_0

    const v0, 0x7f0900bd

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v7, :cond_0

    const v0, 0x7f090319

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v8, :cond_0

    const v0, 0x7f09035f

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/geely/hvac/component/ConstraintLayoutWithBg;

    if-eqz v9, :cond_0

    .line 117
    new-instance v0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/geely/hvac/component/TextViewWithBg;Lcom/geely/hvac/component/TextViewWithBg;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/toolchain/hmi/view/HmiTextView;Lcom/geely/hvac/component/ConstraintLayoutWithBg;)V

    return-object v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inflater"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-static {p0, v0, v1}, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "attachToParent"
        }
    .end annotation

    const v0, 0x7f0c007d

    const/4 v1, 0x0

    .line 68
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 72
    :cond_0
    invoke-static {p0}, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->bind(Landroid/view/View;)Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/geely/hvac/databinding/LayoutIonsCloseRequestBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method
