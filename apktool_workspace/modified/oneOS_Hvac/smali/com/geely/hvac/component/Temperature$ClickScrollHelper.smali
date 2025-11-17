.class Lcom/geely/hvac/component/Temperature$ClickScrollHelper;
.super Ljava/lang/Object;
.source "Temperature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/Temperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClickScrollHelper"
.end annotation


# instance fields
.field private mActionDownFling:Z

.field private mActionDownSetScroll:Z

.field private mPreAction:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->mActionDownFling:Z

    .line 92
    iput-boolean v0, p0, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->mActionDownSetScroll:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/geely/hvac/component/Temperature$1;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMove()Z
    .locals 2

    .line 115
    iget v0, p0, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->mPreAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActionDownFling()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->mActionDownFling:Z

    return v0
.end method

.method public isActionDownSetScroll()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->mActionDownSetScroll:Z

    return v0
.end method

.method public isPreActionDown()Z
    .locals 1

    .line 119
    iget v0, p0, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->mPreAction:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iput p1, p0, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->mPreAction:I

    return-void
.end method

.method public setActionDownFling(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionDownFling"
        }
    .end annotation

    .line 99
    iput-boolean p1, p0, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->mActionDownFling:Z

    return-void
.end method

.method public setActionDownSetScroll(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionDownSetScroll"
        }
    .end annotation

    .line 107
    iput-boolean p1, p0, Lcom/geely/hvac/component/Temperature$ClickScrollHelper;->mActionDownSetScroll:Z

    return-void
.end method
