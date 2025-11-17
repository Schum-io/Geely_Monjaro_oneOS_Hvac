.class public interface abstract Lcom/geely/os/car/IGlyCar;
.super Ljava/lang/Object;
.source "IGlyCar.java"


# static fields
.field public static final RATE_NORMAL:I = 0x3

.field public static final RATE_SLOW:I = 0x4

.field public static final RATE_SLOWEST:I = 0x5


# virtual methods
.method public varargs abstract addRateSingleCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;I[I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "rate",
            "propertyIds"
        }
    .end annotation
.end method

.method public abstract disconnect()V
.end method

.method public abstract getFloatProperty(I)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation
.end method

.method public abstract getFloatProperty(II)F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId"
        }
    .end annotation
.end method

.method public abstract getIntProperty(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation
.end method

.method public abstract getIntProperty(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId"
        }
    .end annotation
.end method

.method public abstract getSupportStatus(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation
.end method

.method public abstract getSupportStatus(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId"
        }
    .end annotation
.end method

.method public abstract getSupportedValueStatus(I)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyId"
        }
    .end annotation
.end method

.method public abstract getSupportedValueStatus(II)[I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId"
        }
    .end annotation
.end method

.method public varargs abstract registerSingleCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;[I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "propertyIds"
        }
    .end annotation
.end method

.method public abstract setFloatProperty(IF)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "val"
        }
    .end annotation
.end method

.method public abstract setFloatProperty(IIF)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId",
            "val"
        }
    .end annotation
.end method

.method public abstract setIntProperty(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "val"
        }
    .end annotation
.end method

.method public abstract setIntProperty(III)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertyId",
            "areaId",
            "val"
        }
    .end annotation
.end method

.method public abstract unregisterSingleCarEventCallback(Lcom/geely/os/car/IGlyCarEventCallBack;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method
