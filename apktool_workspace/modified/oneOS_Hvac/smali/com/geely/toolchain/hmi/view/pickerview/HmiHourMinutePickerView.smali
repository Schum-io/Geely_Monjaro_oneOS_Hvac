.class public Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;
.super Landroid/widget/LinearLayout;
.source "HmiHourMinutePickerView.java"

# interfaces
.implements Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView$OnHourSelectedListener;
.implements Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView$OnMinuteSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView$OnTimeSelectedListener;
    }
.end annotation


# instance fields
.field private mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

.field private mLastX:I

.field private mLastY:I

.field private mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

.field private mOnTimeSelectedListener:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView$OnTimeSelectedListener;

.field private mTvTimeDivide:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTvTimeHour:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTvTimeHourBefore:Lcom/geely/toolchain/hmi/view/HmiTextView;

.field private mTvTimeMinute:Lcom/geely/toolchain/hmi/view/HmiTextView;


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

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 35
    iput p2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mLastX:I

    .line 36
    iput p2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mLastY:I

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/geely/toolchain/hmi/R$layout;->hmi_layout_time:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->initChild()V

    .line 50
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private initChild()V
    .locals 2

    .line 65
    sget v0, Lcom/geely/toolchain/hmi/R$id;->hourPicker_layout_time:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    .line 66
    invoke-virtual {v0, p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setOnHourSelectedListener(Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView$OnHourSelectedListener;)V

    .line 67
    sget v0, Lcom/geely/toolchain/hmi/R$id;->minutePicker_layout_time:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    .line 68
    invoke-virtual {v0, p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setOnMinuteSelectedListener(Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView$OnMinuteSelectedListener;)V

    .line 69
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tv_time_hour_before:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHourBefore:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 70
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tv_time_hour:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHour:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 71
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tv_time_minute:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeMinute:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 72
    sget v0, Lcom/geely/toolchain/hmi/R$id;->tv_time_divide:I

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/geely/toolchain/hmi/view/HmiTextView;

    iput-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeDivide:Lcom/geely/toolchain/hmi/view/HmiTextView;

    .line 73
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHourBefore:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->getSelectedItemTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 74
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHour:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->getSelectedItemTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 75
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeMinute:Lcom/geely/toolchain/hmi/view/HmiTextView;

    iget-object v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    invoke-virtual {v1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->getSelectedItemTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    return-void
.end method

.method private onTimeSelected()V
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimeSelected: Hour = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->getHour()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Minute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->getMinute()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiHourMinutePickerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mOnTimeSelectedListener:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView$OnTimeSelectedListener;

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->getHour()I

    move-result v1

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->getMinute()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView$OnTimeSelectedListener;->onTimeSelected(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 282
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 283
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    iget v2, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mLastX:I

    sub-int v2, v0, v2

    .line 290
    iget v3, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mLastY:I

    sub-int v3, v1, v3

    .line 292
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_2

    .line 294
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 300
    :cond_2
    :goto_0
    iput v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mLastX:I

    .line 301
    iput v1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mLastY:I

    .line 302
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getHour()I
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getHourPicker()Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    return-object v0
.end method

.method public getMinute()I
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    invoke-virtual {v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getMinutePicker()Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    return-object v0
.end method

.method public getTvTimeHour()Lcom/geely/toolchain/hmi/view/HmiTextView;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHour:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-object v0
.end method

.method public getTvTimeMinute()Lcom/geely/toolchain/hmi/view/HmiTextView;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeMinute:Lcom/geely/toolchain/hmi/view/HmiTextView;

    return-object v0
.end method

.method public onHourSelected(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hour"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->onTimeSelected()V

    return-void
.end method

.method public onMinuteSelected(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "minute"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->onTimeSelected()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 118
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 119
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setBackgroundColor(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "background"
        }
    .end annotation

    .line 140
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resid"
        }
    .end annotation

    .line 129
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 130
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setBackgroundResource(I)V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public setCyclic(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cyclic"
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setCyclic(Z)V

    .line 276
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setCyclic(Z)V

    return-void
.end method

.method public setOnTimeSelectedListener(Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView$OnTimeSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onTimeSelectedListener"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mOnTimeSelectedListener:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView$OnTimeSelectedListener;

    return-void
.end method

.method public setSelectedItemTextColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selectedItemTextColor"
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setTextColorCenter(I)V

    .line 263
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setTextColorCenter(I)V

    .line 264
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHour:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 265
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeMinute:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textColor"
        }
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setTextColorOut(I)V

    .line 217
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setTextColorOut(I)V

    return-void
.end method

.method public setTextColor(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "selectedColorId",
            "colorId"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: uiMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HmiHourMinutePickerView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHourBefore:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHour:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeMinute:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz v0, :cond_2

    .line 235
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setTextColor(I)V

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    if-eqz v0, :cond_3

    .line 238
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setTextColorCenter(I)V

    .line 239
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    invoke-virtual {v0, p2}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setTextColorOut(I)V

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    if-eqz v0, :cond_4

    .line 242
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setTextColorCenter(I)V

    .line 243
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setTextColorOut(I)V

    :cond_4
    return-void
.end method

.method public setTextColors(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorId"
        }
    .end annotation

    .line 253
    invoke-virtual {p0, p1, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->setTextColor(II)V

    return-void
.end method

.method public setTime(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hour",
            "minute"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mHourPicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setCurrentItem(I)V

    .line 94
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mMinutePicker:Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;

    invoke-virtual {p1, p2}, Lcom/geely/toolchain/hmi/view/pickerview/HmiMinutePickerView;->setCurrentItem(I)V

    return-void
.end method

.method public setTimeHourBeforeText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeHourBeforeText"
        }
    .end annotation

    .line 171
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHourBefore:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHourBefore:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTimeHourText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeHourText"
        }
    .end annotation

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHour:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeHour:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setTimeMinuteText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMinuteText"
        }
    .end annotation

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeMinute:Lcom/geely/toolchain/hmi/view/HmiTextView;

    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeMinute:Lcom/geely/toolchain/hmi/view/HmiTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showTimeDivide(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showTimeDivide"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourMinutePickerView;->mTvTimeDivide:Lcom/geely/toolchain/hmi/view/HmiTextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/geely/toolchain/hmi/view/HmiTextView;->setVisibility(I)V

    return-void
.end method
