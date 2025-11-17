.class public Lcom/geely/os/wlan/GlyWifiInfo;
.super Ljava/lang/Object;
.source "GlyWifiInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/geely/os/wlan/GlyWifiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private BSSID:Ljava/lang/String;

.field private SSID:Ljava/lang/String;

.field private isConnected:Z

.field private isSaved:Z

.field private mCapabilities:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

.field private mLevel:I

.field private mShowName:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 44
    iput-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mLevel:I

    return-void
.end method

.method public static create(Landroid/net/wifi/ScanResult;Ljava/util/List;Ljava/lang/String;I)Lcom/geely/os/wlan/GlyWifiInfo;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "configurations",
            "connectedSSID",
            "ipAddress"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/geely/os/wlan/GlyWifiInfo;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Lcom/geely/os/wlan/GlyWifiInfo;

    invoke-direct {v0}, Lcom/geely/os/wlan/GlyWifiInfo;-><init>()V

    .line 73
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mShowName:Ljava/lang/String;

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->SSID:Ljava/lang/String;

    .line 75
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->BSSID:Ljava/lang/String;

    .line 77
    iget-object v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->SSID:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/geely/os/wlan/GlyWifiInfo;->isConnected:Z

    .line 79
    iget-object p2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object p2, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    .line 80
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v1, ""

    if-eqz p2, :cond_1

    .line 81
    iput-object v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_1
    iget-object p2, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    .line 86
    :goto_0
    iget-boolean p2, v0, Lcom/geely/os/wlan/GlyWifiInfo;->isConnected:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    and-int/lit16 v4, p3, 0xff

    .line 87
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    shr-int/lit8 v4, p3, 0x8

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v4, 0x2

    shr-int/lit8 v5, p3, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    shr-int/lit8 p3, p3, 0x18

    and-int/lit16 p3, p3, 0xff

    .line 88
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v1, v4

    const-string p3, "%d.%d.%d.%d"

    .line 86
    invoke-static {p2, p3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_2
    iput-object v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mIp:Ljava/lang/String;

    .line 89
    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    iput p0, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mLevel:I

    .line 91
    iput-boolean v3, v0, Lcom/geely/os/wlan/GlyWifiInfo;->isSaved:Z

    .line 92
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    .line 93
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object p2, v0, Lcom/geely/os/wlan/GlyWifiInfo;->SSID:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 94
    iput-boolean v2, v0, Lcom/geely/os/wlan/GlyWifiInfo;->isSaved:Z

    :cond_4
    return-object v0
.end method

.method public static create(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;I)Lcom/geely/os/wlan/GlyWifiInfo;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "configuration",
            "connectedSSID",
            "ipAddress"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 107
    :cond_0
    new-instance v0, Lcom/geely/os/wlan/GlyWifiInfo;

    invoke-direct {v0}, Lcom/geely/os/wlan/GlyWifiInfo;-><init>()V

    .line 109
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, "\""

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mShowName:Ljava/lang/String;

    .line 110
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->SSID:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->BSSID:Ljava/lang/String;

    .line 113
    iget-object v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->SSID:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->isConnected:Z

    .line 115
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    const/4 v2, 0x4

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const-string p0, "WPA_PSK"

    .line 117
    iput-object p0, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    goto :goto_0

    .line 118
    :cond_1
    iget-object p1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "WPA2_PSK"

    .line 120
    iput-object p0, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_2
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {p0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 122
    iput-object v3, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    .line 125
    :cond_3
    :goto_0
    iget-boolean p0, v0, Lcom/geely/os/wlan/GlyWifiInfo;->isConnected:Z

    if-eqz p0, :cond_4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    and-int/lit16 v2, p2, 0xff

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v4

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v2, 0x2

    shr-int/lit8 v3, p2, 0x10

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v2

    const/4 v2, 0x3

    shr-int/lit8 p2, p2, 0x18

    and-int/lit16 p2, p2, 0xff

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "%d.%d.%d.%d"

    .line 125
    invoke-static {p0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 127
    :cond_4
    iput-object v3, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mIp:Ljava/lang/String;

    .line 128
    iput v4, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mLevel:I

    .line 130
    iput-boolean v1, v0, Lcom/geely/os/wlan/GlyWifiInfo;->isSaved:Z

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/geely/os/wlan/GlyWifiInfo;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ssid"
        }
    .end annotation

    .line 135
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 139
    :cond_0
    new-instance v0, Lcom/geely/os/wlan/GlyWifiInfo;

    invoke-direct {v0}, Lcom/geely/os/wlan/GlyWifiInfo;-><init>()V

    .line 140
    iput-object p0, v0, Lcom/geely/os/wlan/GlyWifiInfo;->mShowName:Ljava/lang/String;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/geely/os/wlan/GlyWifiInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public BSSID()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->BSSID:Ljava/lang/String;

    return-object v0
.end method

.method public SSID()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->SSID:Ljava/lang/String;

    return-object v0
.end method

.method public capabilities()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    return-object v0
.end method

.method public compareTo(Lcom/geely/os/wlan/GlyWifiInfo;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 216
    :cond_0
    iget-boolean v1, p0, Lcom/geely/os/wlan/GlyWifiInfo;->isConnected:Z

    if-eqz v1, :cond_1

    iget-boolean v2, p1, Lcom/geely/os/wlan/GlyWifiInfo;->isConnected:Z

    if-nez v2, :cond_1

    return v0

    :cond_1
    if-nez v1, :cond_2

    .line 218
    iget-boolean v0, p1, Lcom/geely/os/wlan/GlyWifiInfo;->isConnected:Z

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 221
    :cond_2
    iget p1, p1, Lcom/geely/os/wlan/GlyWifiInfo;->mLevel:I

    iget v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mLevel:I

    invoke-static {p1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "o"
        }
    .end annotation

    .line 14
    check-cast p1, Lcom/geely/os/wlan/GlyWifiInfo;

    invoke-virtual {p0, p1}, Lcom/geely/os/wlan/GlyWifiInfo;->compareTo(Lcom/geely/os/wlan/GlyWifiInfo;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 208
    instance-of v0, p1, Lcom/geely/os/wlan/GlyWifiInfo;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 209
    :cond_0
    check-cast p1, Lcom/geely/os/wlan/GlyWifiInfo;

    iget-object p1, p1, Lcom/geely/os/wlan/GlyWifiInfo;->SSID:Ljava/lang/String;

    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->SSID:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public getEncryption()Ljava/lang/String;
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    const-string v1, "WPA2-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "WPA-PSK"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WPA/WPA2"

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "WPA"

    return-object v0

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "WPA2"

    return-object v0

    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mShowName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 203
    iget-object v1, p0, Lcom/geely/os/wlan/GlyWifiInfo;->SSID:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->isConnected:Z

    return v0
.end method

.method public isEncrypt()Z
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/geely/os/wlan/GlyWifiInfo;->getEncryption()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSaved()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/geely/os/wlan/GlyWifiInfo;->isSaved:Z

    return v0
.end method

.method public setCapabilities(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capabilities"
        }
    .end annotation

    .line 174
    iput-object p1, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mCapabilities:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/geely/os/wlan/GlyWifiInfo;->mStatus:Ljava/lang/String;

    return-void
.end method
