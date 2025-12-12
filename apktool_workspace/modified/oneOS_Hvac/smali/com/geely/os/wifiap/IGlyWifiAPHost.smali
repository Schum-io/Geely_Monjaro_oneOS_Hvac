.class public interface abstract Lcom/geely/os/wifiap/IGlyWifiAPHost;
.super Ljava/lang/Object;
.source "IGlyWifiAPHost.java"


# static fields
.field public static final WIFIAP_FREQUENCY_2:I = 0x1

.field public static final WIFIAP_FREQUENCY_5:I = 0x2


# virtual methods
.method public abstract getCurrentFrequencyMode()I
.end method

.method public abstract getSupportedWifiAPFrequency()[I
.end method

.method public abstract registerWifiAPFrequencyCallBack(Lcom/geely/os/wifiap/IGlyWifiAPFrequencyChangeCallBack;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation
.end method

.method public abstract setFrequencyMode(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract unregisterWifiAPFrequencyCallBack(Lcom/geely/os/wifiap/IGlyWifiAPFrequencyChangeCallBack;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callBack"
        }
    .end annotation
.end method
