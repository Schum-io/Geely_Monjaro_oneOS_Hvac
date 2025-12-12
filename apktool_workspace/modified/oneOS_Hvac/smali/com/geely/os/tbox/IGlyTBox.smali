.class public interface abstract Lcom/geely/os/tbox/IGlyTBox;
.super Ljava/lang/Object;
.source "IGlyTBox.java"


# virtual methods
.method public abstract getCellInfo()Landroid/telephony/CellInfo;
.end method

.method public abstract getHardwareVersion()Ljava/lang/String;
.end method

.method public abstract getICCID()Ljava/lang/String;
.end method

.method public abstract getIMEI()Ljava/lang/String;
.end method

.method public abstract getIMSI()Ljava/lang/String;
.end method

.method public abstract getLineNumber()Ljava/lang/String;
.end method

.method public abstract getMSISDN()Ljava/lang/String;
.end method

.method public abstract getNetworkOperator()Ljava/lang/String;
.end method

.method public abstract getNetworkOperatorName()Ljava/lang/String;
.end method

.method public abstract getNetworkType()Ljava/lang/String;
.end method

.method public abstract getSignalStrength()Landroid/telephony/SignalStrength;
.end method

.method public abstract getSoftwareVersion()Ljava/lang/String;
.end method

.method public abstract getSoftwareVersionCode()I
.end method

.method public abstract getTBoxID()Ljava/lang/String;
.end method

.method public abstract getTBoxMessage()Lcom/geely/os/tbox/IGlyBoxMessage;
.end method

.method public abstract getTBoxSettings()Lcom/geely/os/tbox/IGlyTBoxSettings;
.end method

.method public abstract getTBoxSupplierCode()Ljava/lang/String;
.end method

.method public abstract isSubscribed()Z
.end method

.method public abstract setGIDProfIDLnk(Ljava/lang/String;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gidInfo",
            "profId"
        }
    .end annotation
.end method

.method public abstract setTBoxReset()Z
.end method
