package com.geely.lib.cloud.weather.bean.response;

import java.util.List;

/* loaded from: classes.dex */
public class WeatherMoreDaysResponse {
    private List<MoreDaysData> data;

    public List<MoreDaysData> getData() {
        return this.data;
    }

    public void setData(List<MoreDaysData> data) {
        this.data = data;
    }

    public static class MoreDaysData {
        private String allMaxTemp;
        private String allMinTemp;
        private String dayWeathPheno;
        private String dayWind;
        private String dayWindDir;
        private String nightWeathPheno;
        private String nightWind;
        private String nightWindDir;
        private String updateTime;
        private String week;

        public String getAllMaxTemp() {
            return this.allMaxTemp;
        }

        public void setAllMaxTemp(String allMaxTemp) {
            this.allMaxTemp = allMaxTemp;
        }

        public String getAllMinTemp() {
            return this.allMinTemp;
        }

        public void setAllMinTemp(String allMinTemp) {
            this.allMinTemp = allMinTemp;
        }

        public String getUpdateTime() {
            return this.updateTime;
        }

        public void setUpdateTime(String updateTime) {
            this.updateTime = updateTime;
        }

        public String getWeek() {
            return this.week;
        }

        public void setWeek(String week) {
            this.week = week;
        }

        public String getDayWeathPheno() {
            return this.dayWeathPheno;
        }

        public void setDayWeathPheno(String dayWeathPheno) {
            this.dayWeathPheno = dayWeathPheno;
        }

        public String getDayWind() {
            return this.dayWind;
        }

        public void setDayWind(String dayWind) {
            this.dayWind = dayWind;
        }

        public String getDayWindDir() {
            return this.dayWindDir;
        }

        public void setDayWindDir(String dayWindDir) {
            this.dayWindDir = dayWindDir;
        }

        public String getNightWeathPheno() {
            return this.nightWeathPheno;
        }

        public void setNightWeathPheno(String nightWeathPheno) {
            this.nightWeathPheno = nightWeathPheno;
        }

        public String getNightWind() {
            return this.nightWind;
        }

        public void setNightWind(String nightWind) {
            this.nightWind = nightWind;
        }

        public String getNightWindDir() {
            return this.nightWindDir;
        }

        public void setNightWindDir(String nightWindDir) {
            this.nightWindDir = nightWindDir;
        }
    }
}
