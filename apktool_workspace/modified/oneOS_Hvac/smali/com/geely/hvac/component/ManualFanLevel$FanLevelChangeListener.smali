.class public interface abstract Lcom/geely/hvac/component/ManualFanLevel$FanLevelChangeListener;
.super Ljava/lang/Object;
.source "ManualFanLevel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/component/ManualFanLevel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FanLevelChangeListener"
.end annotation


# virtual methods
.method public abstract onChange(Lcom/geely/hvac/component/ManualFanLevel;IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fanLevel",
            "level",
            "isTouch"
        }
    .end annotation
.end method
