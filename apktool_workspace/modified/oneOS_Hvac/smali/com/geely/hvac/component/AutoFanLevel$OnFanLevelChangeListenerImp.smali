.class public abstract Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListenerImp;
.super Ljava/lang/Object;
.source "AutoFanLevel.java"

# interfaces
.implements Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/AutoFanLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnFanLevelChangeListenerImp"
.end annotation


# instance fields
.field private mFromUser:Z

.field private mProgress:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 84
    iput v0, p0, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListenerImp;->mProgress:I

    return-void
.end method


# virtual methods
.method public abstract onDragEnd(Lcom/geely/hvac/component/AutoFanLevel;IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "autoFanLevel",
            "progress",
            "fromUser"
        }
    .end annotation
.end method

.method public onProgressChanged(Lcom/geely/hvac/component/AutoFanLevel;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "autoFanLevel",
            "progress",
            "fromUser"
        }
    .end annotation

    .line 96
    iput p2, p0, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListenerImp;->mProgress:I

    .line 97
    iput-boolean p3, p0, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListenerImp;->mFromUser:Z

    return-void
.end method

.method public onStartTrackingTouch(Lcom/geely/hvac/component/AutoFanLevel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoFanLevel"
        }
    .end annotation

    return-void
.end method

.method public onStopTrackingTouch(Lcom/geely/hvac/component/AutoFanLevel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "autoFanLevel"
        }
    .end annotation

    .line 102
    iget v0, p0, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListenerImp;->mProgress:I

    if-ltz v0, :cond_0

    .line 103
    iget-boolean v1, p0, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListenerImp;->mFromUser:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListenerImp;->onDragEnd(Lcom/geely/hvac/component/AutoFanLevel;IZ)V

    :cond_0
    const/4 p1, -0x1

    .line 105
    iput p1, p0, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListenerImp;->mProgress:I

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/geely/hvac/component/AutoFanLevel$OnFanLevelChangeListenerImp;->mFromUser:Z

    return-void
.end method
