.class public interface abstract Lcom/geely/hvac/adapt/UserHabit$HabitChangeListener;
.super Ljava/lang/Object;
.source "UserHabit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/geely/hvac/adapt/UserHabit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HabitChangeListener"
.end annotation


# virtual methods
.method public abstract onHabitChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "habit"
        }
    .end annotation
.end method

.method public abstract onLoadStoreEvChange(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation
.end method
