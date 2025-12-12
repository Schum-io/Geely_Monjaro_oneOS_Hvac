.class public Lcom/geely/hvac/component/TempSync;
.super Lcom/geely/hvac/component/TextViewWithBg;
.source "TempSync.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TempSync"


# instance fields
.field private mBgActiveColor:I

.field private mBgDisableColor:I

.field private mBgUnActiveColor:I

.field private mEnable:Z

.field private mState:Z

.field private mTxtActiveColor:I

.field private mTxtDisableColor:I

.field private mTxtUnActiveColor:I


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

    .line 83
    invoke-direct {p0, p1}, Lcom/geely/hvac/component/TextViewWithBg;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/geely/hvac/component/TempSync;->mState:Z

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/geely/hvac/component/TempSync;->mEnable:Z

    .line 18
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mTxtActiveColor:I

    .line 19
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mTxtUnActiveColor:I

    .line 20
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mBgActiveColor:I

    .line 21
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mBgUnActiveColor:I

    .line 22
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mBgDisableColor:I

    .line 23
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mTxtDisableColor:I

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

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/geely/hvac/component/TextViewWithBg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/geely/hvac/component/TempSync;->mState:Z

    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p0, Lcom/geely/hvac/component/TempSync;->mEnable:Z

    .line 18
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mTxtActiveColor:I

    .line 19
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mTxtUnActiveColor:I

    .line 20
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mBgActiveColor:I

    .line 21
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mBgUnActiveColor:I

    .line 22
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mBgDisableColor:I

    .line 23
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mTxtDisableColor:I

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

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/geely/hvac/component/TextViewWithBg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/geely/hvac/component/TempSync;->mState:Z

    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p0, Lcom/geely/hvac/component/TempSync;->mEnable:Z

    .line 18
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mTxtActiveColor:I

    .line 19
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mTxtUnActiveColor:I

    .line 20
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mBgActiveColor:I

    .line 21
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mBgUnActiveColor:I

    .line 22
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mBgDisableColor:I

    .line 23
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mTxtDisableColor:I

    return-void
.end method

.method public static bind(Lcom/geely/hvac/component/TempSync;IIIIII)V
    .locals 3
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
            "view",
            "txtActiveColor",
            "txtUnActiveColor",
            "bgActiveColor",
            "bgUnActiveColor",
            "bgDisableColor",
            "txtDisableColor"
        }
    .end annotation

    .line 52
    sget-object v0, Lcom/geely/hvac/component/TempSync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindSyncColor, txtActiveColor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",txtUnActiveColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bgActiveColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bgUnActiveColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    iput p1, p0, Lcom/geely/hvac/component/TempSync;->mTxtActiveColor:I

    .line 58
    iput p2, p0, Lcom/geely/hvac/component/TempSync;->mTxtUnActiveColor:I

    .line 59
    iput p3, p0, Lcom/geely/hvac/component/TempSync;->mBgActiveColor:I

    .line 60
    iput p4, p0, Lcom/geely/hvac/component/TempSync;->mBgUnActiveColor:I

    .line 61
    iput p5, p0, Lcom/geely/hvac/component/TempSync;->mBgDisableColor:I

    .line 62
    iput p6, p0, Lcom/geely/hvac/component/TempSync;->mTxtDisableColor:I

    .line 63
    invoke-direct {p0}, Lcom/geely/hvac/component/TempSync;->refresh()V

    return-void
.end method

.method public static bindEnable(Lcom/geely/hvac/component/TempSync;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "enable"
        }
    .end annotation

    .line 38
    sget-object v0, Lcom/geely/hvac/component/TempSync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindSyncEnable, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    iput-boolean p1, p0, Lcom/geely/hvac/component/TempSync;->mEnable:Z

    .line 40
    invoke-direct {p0}, Lcom/geely/hvac/component/TempSync;->refresh()V

    return-void
.end method

.method public static bindState(Lcom/geely/hvac/component/TempSync;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "state"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/geely/hvac/component/TempSync;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindSyncState, state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/geely/hvac/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    iput-boolean p1, p0, Lcom/geely/hvac/component/TempSync;->mState:Z

    .line 31
    invoke-direct {p0}, Lcom/geely/hvac/component/TempSync;->refresh()V

    return-void
.end method

.method private refresh()V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/geely/hvac/component/TempSync;->mEnable:Z

    if-nez v0, :cond_0

    .line 68
    iget v0, p0, Lcom/geely/hvac/component/TempSync;->mTxtDisableColor:I

    invoke-static {p0, v0}, Lcom/geely/hvac/utils/UiUtil;->setHandTextColor(Landroid/widget/TextView;I)V

    .line 69
    iget v0, p0, Lcom/geely/hvac/component/TempSync;->mBgDisableColor:I

    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/TempSync;->setHandBackColor(I)V

    return-void

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcom/geely/hvac/component/TempSync;->mState:Z

    if-eqz v0, :cond_1

    .line 74
    iget v0, p0, Lcom/geely/hvac/component/TempSync;->mTxtActiveColor:I

    invoke-static {p0, v0}, Lcom/geely/hvac/utils/UiUtil;->setHandTextColor(Landroid/widget/TextView;I)V

    .line 75
    iget v0, p0, Lcom/geely/hvac/component/TempSync;->mBgActiveColor:I

    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/TempSync;->setHandBackColor(I)V

    goto :goto_0

    .line 77
    :cond_1
    iget v0, p0, Lcom/geely/hvac/component/TempSync;->mTxtUnActiveColor:I

    invoke-static {p0, v0}, Lcom/geely/hvac/utils/UiUtil;->setHandTextColor(Landroid/widget/TextView;I)V

    .line 78
    iget v0, p0, Lcom/geely/hvac/component/TempSync;->mBgUnActiveColor:I

    invoke-virtual {p0, v0}, Lcom/geely/hvac/component/TempSync;->setHandBackColor(I)V

    :goto_0
    return-void
.end method
