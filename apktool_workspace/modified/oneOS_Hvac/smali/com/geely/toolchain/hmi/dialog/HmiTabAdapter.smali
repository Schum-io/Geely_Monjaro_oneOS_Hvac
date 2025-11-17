.class public Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "HmiTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$SelectionListener;,
        Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HmiTabAdapter"


# instance fields
.field private final context:Landroid/content/Context;

.field private index:I

.field private lists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:I

.field private selectionListener:Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$SelectionListener;


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

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x5

    .line 28
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->maxSize:I

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->index:I

    .line 34
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->lists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->maxSize:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$HmiTabAdapter(ILandroid/view/View;)V
    .locals 1

    .line 58
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->index:I

    .line 59
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->notifyDataSetChanged()V

    .line 60
    iget-object v0, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->selectionListener:Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$SelectionListener;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1}, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$SelectionListener;->selectTab(I)V

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->TAG:Ljava/lang/String;

    const-string v0, "selectionListener is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;

    iget-object v1, v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->textView:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->lists:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->textView:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 57
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabAdapter$v47m6QG3PmRNlqjg7yuLda0gH1c;

    invoke-direct {v1, p0, p2}, Lcom/geely/toolchain/hmi/dialog/-$$Lambda$HmiTabAdapter$v47m6QG3PmRNlqjg7yuLda0gH1c;-><init>(Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->index:I

    const/4 v1, 0x2

    if-ne p1, p2, :cond_1

    .line 67
    iget-object p1, v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->view:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object p1, v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->view:Landroid/view/View;

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_tab_item_indicator_shape:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object p1, v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->textView:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v2, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->context:Landroid/content/Context;

    sget v3, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_main_theme_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 70
    iget-object p1, v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->textView:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/high16 v0, 0x42100000    # 36.0f

    invoke-virtual {p1, v1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextSize(IF)V

    .line 71
    iget-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->selectionListener:Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$SelectionListener;

    if-eqz p1, :cond_0

    .line 72
    invoke-interface {p1, p2}, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$SelectionListener;->selectTab(I)V

    goto :goto_0

    .line 74
    :cond_0
    sget-object p1, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->TAG:Ljava/lang/String;

    const-string p2, "selectionListener is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 77
    :cond_1
    iget-object p1, v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->view:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object p1, v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->view:Landroid/view/View;

    iget-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/geely/toolchain/hmi/R$drawable;->oneoshmi_tab_item_indicator_shape:I

    invoke-static {p2, v2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object p1, v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->textView:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object p2, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->context:Landroid/content/Context;

    sget v2, Lcom/geely/toolchain/hmi/R$color;->oneoshmi_dialog_content_color:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 80
    iget-object p1, v0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;->textView:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/high16 p2, 0x42000000    # 32.0f

    invoke-virtual {p1, v1, p2}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/geely/toolchain/hmi/R$layout;->hmi_tab_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;

    invoke-direct {p2, p1}, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$HmiViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->lists:Ljava/util/List;

    return-void
.end method

.method public setMaxSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxSize"
        }
    .end annotation

    .line 42
    iput p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->maxSize:I

    return-void
.end method

.method public setSelectionListener(Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$SelectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectionListener"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter;->selectionListener:Lcom/geely/toolchain/hmi/dialog/HmiTabAdapter$SelectionListener;

    return-void
.end method
