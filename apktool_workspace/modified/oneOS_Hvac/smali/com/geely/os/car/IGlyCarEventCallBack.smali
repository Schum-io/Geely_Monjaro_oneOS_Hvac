.class public interface abstract Lcom/geely/os/car/IGlyCarEventCallBack;
.super Ljava/lang/Object;
.source "IGlyCarEventCallBack.java"


# virtual methods
.method public abstract onChangeEvent(IILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId",
            "value"
        }
    .end annotation
.end method

.method public abstract onSupportChanged(III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId",
            "status"
        }
    .end annotation
.end method
