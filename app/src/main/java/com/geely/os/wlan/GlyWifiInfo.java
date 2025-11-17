package com.geely.os.wlan;

import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* loaded from: classes.dex */
public class GlyWifiInfo implements Comparable<GlyWifiInfo> {
    private String BSSID;
    private String SSID;
    private boolean isConnected;
    private boolean isSaved;
    private String mIp;
    private String mShowName;
    private String mStatus;
    private String mCapabilities = "";
    private int mLevel = 0;

    private GlyWifiInfo() {
    }

    public static GlyWifiInfo create(ScanResult result, List<WifiConfiguration> configurations, String connectedSSID, int ipAddress) {
        if (TextUtils.isEmpty(result.SSID)) {
            return null;
        }
        GlyWifiInfo glyWifiInfo = new GlyWifiInfo();
        glyWifiInfo.mShowName = result.SSID;
        glyWifiInfo.SSID = "\"" + result.SSID + "\"";
        glyWifiInfo.BSSID = result.BSSID;
        glyWifiInfo.isConnected = glyWifiInfo.SSID.equals(connectedSSID);
        String str = result.capabilities;
        glyWifiInfo.mCapabilities = str;
        if (TextUtils.isEmpty(str)) {
            glyWifiInfo.mCapabilities = "";
        } else {
            glyWifiInfo.mCapabilities = glyWifiInfo.mCapabilities.toUpperCase();
        }
        glyWifiInfo.mIp = glyWifiInfo.isConnected ? String.format(Locale.getDefault(), "%d.%d.%d.%d", Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255)) : "";
        glyWifiInfo.mLevel = result.level;
        glyWifiInfo.isSaved = false;
        Iterator<WifiConfiguration> it = configurations.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            if (TextUtils.equals(it.next().SSID, glyWifiInfo.SSID)) {
                glyWifiInfo.isSaved = true;
                break;
            }
        }
        return glyWifiInfo;
    }

    public static GlyWifiInfo create(WifiConfiguration configuration, String connectedSSID, int ipAddress) {
        if (TextUtils.isEmpty(configuration.SSID)) {
            return null;
        }
        GlyWifiInfo glyWifiInfo = new GlyWifiInfo();
        glyWifiInfo.mShowName = configuration.SSID.replace("\"", "");
        glyWifiInfo.SSID = configuration.SSID;
        glyWifiInfo.BSSID = configuration.BSSID;
        glyWifiInfo.isConnected = glyWifiInfo.SSID.equals(connectedSSID);
        if (configuration.allowedKeyManagement.get(1)) {
            glyWifiInfo.mCapabilities = "WPA_PSK";
        } else if (configuration.allowedKeyManagement.get(4)) {
            glyWifiInfo.mCapabilities = "WPA2_PSK";
        } else if (configuration.allowedKeyManagement.get(0)) {
            glyWifiInfo.mCapabilities = "";
        }
        glyWifiInfo.mIp = glyWifiInfo.isConnected ? String.format(Locale.getDefault(), "%d.%d.%d.%d", Integer.valueOf(ipAddress & 255), Integer.valueOf((ipAddress >> 8) & 255), Integer.valueOf((ipAddress >> 16) & 255), Integer.valueOf((ipAddress >> 24) & 255)) : "";
        glyWifiInfo.mLevel = 0;
        glyWifiInfo.isSaved = true;
        return glyWifiInfo;
    }

    public static GlyWifiInfo create(String ssid) {
        if (TextUtils.isEmpty(ssid)) {
            return null;
        }
        GlyWifiInfo glyWifiInfo = new GlyWifiInfo();
        glyWifiInfo.mShowName = ssid;
        glyWifiInfo.SSID = "\"" + ssid + "\"";
        return glyWifiInfo;
    }

    public String getName() {
        return this.mShowName;
    }

    public boolean isEncrypt() {
        return !TextUtils.isEmpty(getEncryption());
    }

    public boolean isSaved() {
        return this.isSaved;
    }

    public boolean isConnected() {
        return this.isConnected;
    }

    public String getEncryption() {
        return (this.mCapabilities.contains("WPA2-PSK") && this.mCapabilities.contains("WPA-PSK")) ? "WPA/WPA2" : this.mCapabilities.contains("WPA-PSK") ? IGlyWlanHandler.WPA : this.mCapabilities.contains("WPA2-PSK") ? "WPA2" : "";
    }

    public void setCapabilities(String capabilities) {
        this.mCapabilities = capabilities;
    }

    public String getIp() {
        return this.mIp;
    }

    public String SSID() {
        return this.SSID;
    }

    public String BSSID() {
        return this.BSSID;
    }

    public String capabilities() {
        return this.mCapabilities;
    }

    public void setStatus(String status) {
        this.mStatus = status;
    }

    public String getStatus() {
        return this.mStatus;
    }

    public int hashCode() {
        return Objects.hash(this.SSID);
    }

    public boolean equals(Object obj) {
        if (obj instanceof GlyWifiInfo) {
            return TextUtils.equals(((GlyWifiInfo) obj).SSID, this.SSID);
        }
        return false;
    }

    @Override // java.lang.Comparable
    public int compareTo(GlyWifiInfo o) {
        if (o == null) {
            return -1;
        }
        boolean z = this.isConnected;
        if (z && !o.isConnected) {
            return -1;
        }
        if (z || !o.isConnected) {
            return Integer.compare(o.mLevel, this.mLevel);
        }
        return 1;
    }
}
