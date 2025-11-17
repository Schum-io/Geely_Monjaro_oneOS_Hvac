package com.geely.lib.cloud.membercenter.bean.request;

/* loaded from: classes.dex */
public class GetQrCodeParam {
    private String terminalId;
    private String terminalLanguage;
    private String terminalRomVersion;
    private String terminalSoftwareVersion;
    private String vehicleModel;

    public String getTerminalId() {
        return this.terminalId;
    }

    public void setTerminalId(String terminalId) {
        this.terminalId = terminalId;
    }

    public String getVehicleModel() {
        return this.vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public String getTerminalSoftwareVersion() {
        return this.terminalSoftwareVersion;
    }

    public void setTerminalSoftwareVersion(String terminalSoftwareVersion) {
        this.terminalSoftwareVersion = terminalSoftwareVersion;
    }

    public String getTerminalLanguage() {
        return this.terminalLanguage;
    }

    public void setTerminalLanguage(String terminalLanguage) {
        this.terminalLanguage = terminalLanguage;
    }

    public String getTerminalRomVersion() {
        return this.terminalRomVersion;
    }

    public void setTerminalRomVersion(String terminalRomVersion) {
        this.terminalRomVersion = terminalRomVersion;
    }
}
