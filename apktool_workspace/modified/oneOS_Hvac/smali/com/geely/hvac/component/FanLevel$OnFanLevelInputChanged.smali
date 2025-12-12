.class public interface abstract Lcom/geely/hvac/component/FanLevel$OnFanLevelInputChanged;
.super Ljava/lang/Object;
.source "FanLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/FanLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnFanLevelInputChanged"
.end annotation


# virtual methods
.method public abstract addReduceFanLevelChanged(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "isAdd"
        }
    .end annotation
.end method

.method public abstract onAddChanged()V
.end method

.method public abstract onChanged(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "isTouch"
        }
    .end annotation
.end method
