package com.geely.lib.cloud.weather.bean;

import java.util.List;

/* loaded from: classes.dex */
public class WeatherData {
    private List<AlertBean> alert;
    private int carWashing;
    private int coldRisk;
    private int comfort;
    private double humidity;
    private int pm25;
    private PredicationBean predication;
    private String skycon;
    private TemperatureBean temperature;
    private int ultraviolet;
    private WindBean wind;
    private int windPower;

    public TemperatureBean getTemperature() {
        return this.temperature;
    }

    public void setTemperature(TemperatureBean temperature) {
        this.temperature = temperature;
    }

    public String getSkycon() {
        return this.skycon;
    }

    public void setSkycon(String skycon) {
        this.skycon = skycon;
    }

    public int getWindPower() {
        return this.windPower;
    }

    public void setWindPower(int windPower) {
        this.windPower = windPower;
    }

    public WindBean getWind() {
        return this.wind;
    }

    public void setWind(WindBean wind) {
        this.wind = wind;
    }

    public int getPm25() {
        return this.pm25;
    }

    public void setPm25(int pm25) {
        this.pm25 = pm25;
    }

    public double getHumidity() {
        return this.humidity;
    }

    public void setHumidity(double humidity) {
        this.humidity = humidity;
    }

    public int getUltraviolet() {
        return this.ultraviolet;
    }

    public void setUltraviolet(int ultraviolet) {
        this.ultraviolet = ultraviolet;
    }

    public int getComfort() {
        return this.comfort;
    }

    public void setComfort(int comfort) {
        this.comfort = comfort;
    }

    public int getCarWashing() {
        return this.carWashing;
    }

    public void setCarWashing(int carWashing) {
        this.carWashing = carWashing;
    }

    public int getColdRisk() {
        return this.coldRisk;
    }

    public void setColdRisk(int coldRisk) {
        this.coldRisk = coldRisk;
    }

    public PredicationBean getPredication() {
        return this.predication;
    }

    public void setPredication(PredicationBean predication) {
        this.predication = predication;
    }

    public List<AlertBean> getAlert() {
        return this.alert;
    }

    public void setAlert(List<AlertBean> alert) {
        this.alert = alert;
    }

    public static class TemperatureBean {
        private int max;
        private int min;
        private int realTime;

        public int getRealTime() {
            return this.realTime;
        }

        public void setRealTime(int realTime) {
            this.realTime = realTime;
        }

        public int getMin() {
            return this.min;
        }

        public void setMin(int min) {
            this.min = min;
        }

        public int getMax() {
            return this.max;
        }

        public void setMax(int max) {
            this.max = max;
        }
    }

    public static class WindBean {
        private double direction;
        private double speed;

        public double getDirection() {
            return this.direction;
        }

        public void setDirection(double direction) {
            this.direction = direction;
        }

        public double getSpeed() {
            return this.speed;
        }

        public void setSpeed(double speed) {
            this.speed = speed;
        }
    }

    public static class PredicationBean {
        private List<DailyBean> daily;
        private List<HourlyBean> hourly;

        public List<HourlyBean> getHourly() {
            return this.hourly;
        }

        public void setHourly(List<HourlyBean> hourly) {
            this.hourly = hourly;
        }

        public List<DailyBean> getDaily() {
            return this.daily;
        }

        public void setDaily(List<DailyBean> daily) {
            this.daily = daily;
        }

        public static class HourlyBean {
            private String datetime;
            private String skycon;
            private int temperature;

            public String getDatetime() {
                return this.datetime;
            }

            public void setDatetime(String datetime) {
                this.datetime = datetime;
            }

            public int getTemperature() {
                return this.temperature;
            }

            public void setTemperature(int temperature) {
                this.temperature = temperature;
            }

            public String getSkycon() {
                return this.skycon;
            }

            public void setSkycon(String skycon) {
                this.skycon = skycon;
            }
        }

        public static class DailyBean {
            private String date;
            private int maxTemperature;
            private int minTemperature;
            private String skycon;

            public String getDate() {
                return this.date;
            }

            public void setDate(String date) {
                this.date = date;
            }

            public String getSkycon() {
                return this.skycon;
            }

            public void setSkycon(String skycon) {
                this.skycon = skycon;
            }

            public int getMinTemperature() {
                return this.minTemperature;
            }

            public void setMinTemperature(int minTemperature) {
                this.minTemperature = minTemperature;
            }

            public int getMaxTemperature() {
                return this.maxTemperature;
            }

            public void setMaxTemperature(int maxTemperature) {
                this.maxTemperature = maxTemperature;
            }
        }
    }

    public static class AlertBean {
        private String level;
        private String text;

        public String getLevel() {
            return this.level;
        }

        public void setLevel(String level) {
            this.level = level;
        }

        public String getText() {
            return this.text;
        }

        public void setText(String text) {
            this.text = text;
        }
    }
}
