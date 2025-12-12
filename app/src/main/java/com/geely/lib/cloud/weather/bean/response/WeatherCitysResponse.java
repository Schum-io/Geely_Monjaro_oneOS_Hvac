package com.geely.lib.cloud.weather.bean.response;

import java.util.List;

/* loaded from: classes.dex */
public class WeatherCitysResponse {
    private List<CityData> data;

    public List<CityData> getData() {
        return this.data;
    }

    public void setData(List<CityData> data) {
        this.data = data;
    }

    public static class CityData {
        private String areaId;
        private int direct;
        private String districtCN;
        private String districtEN;
        private String nameCN;
        private String nameEN;
        private String provCN;
        private String provEN;

        public String getProvCN() {
            return this.provCN;
        }

        public void setProvCN(String provCN) {
            this.provCN = provCN;
        }

        public String getDistrictCN() {
            return this.districtCN;
        }

        public void setDistrictCN(String districtCN) {
            this.districtCN = districtCN;
        }

        public String getNameCN() {
            return this.nameCN;
        }

        public void setNameCN(String nameCN) {
            this.nameCN = nameCN;
        }

        public String getAreaId() {
            return this.areaId;
        }

        public void setAreaId(String areaId) {
            this.areaId = areaId;
        }

        public String getProvEN() {
            return this.provEN;
        }

        public void setProvEN(String provEN) {
            this.provEN = provEN;
        }

        public String getDistrictEN() {
            return this.districtEN;
        }

        public void setDistrictEN(String districtEN) {
            this.districtEN = districtEN;
        }

        public String getNameEN() {
            return this.nameEN;
        }

        public void setNameEN(String nameEN) {
            this.nameEN = nameEN;
        }

        public int getDirect() {
            return this.direct;
        }

        public void setDirect(int direct) {
            this.direct = direct;
        }
    }
}
