.class public Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;
.super Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;
.source "HmiHourPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView$OnHourSelectedListener;
    }
.end annotation


# instance fields
.field private mOnHourSelectedListener:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView$OnHourSelectedListener;


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

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->updateHour()V

    .line 27
    new-instance p1, Lcom/geely/toolchain/hmi/view/pickerview/-$$Lambda$HmiHourPickerView$0I7wMkAGJYQfz31QFK58syLni4E;

    invoke-direct {p1, p0}, Lcom/geely/toolchain/hmi/view/pickerview/-$$Lambda$HmiHourPickerView$0I7wMkAGJYQfz31QFK58syLni4E;-><init>(Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;)V

    invoke-virtual {p0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setOnItemSelectedListener(Lcom/geely/toolchain/hmi/view/pickerview/HmiWheelView$OnItemSelectedListener;)V

    return-void
.end method

.method private updateHour()V
    .locals 3

    .line 35
    new-instance v0, Lcom/geely/toolchain/hmi/view/pickerview/NumericWheelAdapter;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/geely/toolchain/hmi/view/pickerview/NumericWheelAdapter;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->setAdapter(Lcom/geely/toolchain/hmi/view/pickerview/WheelAdapter;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$HmiHourPickerView(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->mOnHourSelectedListener:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView$OnHourSelectedListener;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1}, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView$OnHourSelectedListener;->onHourSelected(I)V

    :cond_0
    return-void
.end method

.method public setOnHourSelectedListener(Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView$OnHourSelectedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onHourSelectedListener"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView;->mOnHourSelectedListener:Lcom/geely/toolchain/hmi/view/pickerview/HmiHourPickerView$OnHourSelectedListener;

    return-void
.end method
