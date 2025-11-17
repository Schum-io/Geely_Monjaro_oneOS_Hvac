.class public Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SeatSecondTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/geely/hvac/psd/component/SeatTabEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "list",
            "preferences"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/geely/hvac/psd/component/SeatTabEntity;",
            ">;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mContext:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mList:Ljava/util/List;

    .line 35
    iput-object p3, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onBindViewHolder$0$SeatSecondTabAdapter(ILandroid/view/View;)V
    .locals 3

    .line 61
    iput p1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mSelectedIndex:I

    .line 62
    iget-object v0, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    iget v1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mSelectedIndex:I

    const-string v2, "selectedIndex"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "item onclick i :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeatSecondTabAdapter"

    invoke-static {v1, v0}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;

    if-eqz v1, :cond_0

    .line 67
    check-cast v0, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;

    invoke-virtual {v0, p1}, Lcom/geely/hvac/psd/activity/GlySettingsSeatSecondDisplayActivity;->switchFunction(I)V

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->notifyDataSetChanged()V

    .line 70
    invoke-static {p2}, Lcom/sensorsdata/analytics/android/autotrack/aop/SensorsDataAutoTrackHelper;->trackViewOnClick(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "seatSecondTabViewHolder",
            "i"
        }
    .end annotation

    .line 22
    check-cast p1, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->onBindViewHolder(Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seatSecondTabViewHolder",
            "i"
        }
    .end annotation

    .line 49
    iget-object v0, p1, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->ivIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/hvac/psd/component/SeatTabEntity;

    invoke-virtual {v1}, Lcom/geely/hvac/psd/component/SeatTabEntity;->getTabResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    iget-object v0, p1, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->tvFunctionName:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/geely/hvac/psd/component/SeatTabEntity;

    invoke-virtual {v1}, Lcom/geely/hvac/psd/component/SeatTabEntity;->getTabName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget v0, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mSelectedIndex:I

    if-ne v0, p2, :cond_0

    .line 52
    iget-object v0, p1, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0701f8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 53
    iget-object v0, p1, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->ivIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0501c0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 54
    iget-object v0, p1, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->tvFunctionName:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p1, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v0, p1, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->ivIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0501c1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 58
    iget-object v0, p1, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->tvFunctionName:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 60
    :goto_0
    iget-object p1, p1, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/geely/hvac/psd/component/-$$Lambda$SeatSecondTabAdapter$clAPw7hgy4SedoffojZsUX5Jpag;

    invoke-direct {v0, p0, p2}, Lcom/geely/hvac/psd/component/-$$Lambda$SeatSecondTabAdapter$clAPw7hgy4SedoffojZsUX5Jpag;-><init>(Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewGroup",
            "i"
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0c0099

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 42
    new-instance p2, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;

    invoke-direct {p2, p1}, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter$SeatSecondTabViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setSelectedIndex(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedIndex"
        }
    .end annotation

    .line 92
    iput p1, p0, Lcom/geely/hvac/psd/component/SeatSecondTabAdapter;->mSelectedIndex:I

    return-void
.end method
