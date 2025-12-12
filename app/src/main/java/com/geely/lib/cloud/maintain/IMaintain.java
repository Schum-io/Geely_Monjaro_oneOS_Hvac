package com.geely.lib.cloud.maintain;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;

/* loaded from: classes.dex */
public interface IMaintain extends IInterface {

    public static class Default implements IMaintain {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getCarDistributor(String longitude, String latitude, int operatorCode, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getCarMaintain(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getCarRanking(String vehicleSeries, String vehicleSeriesName, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getDayAndMonthSum(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getDayEnergyAvg(String localDate, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getDayEnergySum(String localDate, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getDriveData(String startTime, String endTime, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getDriveHistoryData(String startTime, String endTime, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getDriveQueryReport(String startTime, String endTime, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getDriveQueryTrack(String trackId, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getDriveSuggestion(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getEnergyConsumptionHistory(String startTime, String endTime, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getEnergyConsumptionToday(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getMaintainHistory(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getMaintainLastDate(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getMaintainLastMileage(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getMaintainNextMileage(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getMonthEnergyAvg(String localDate, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getMonthEnergySum(String localDate, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getMyCarInfo(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getWeekAndMonthEnergy(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getYearEnergyAvg(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.maintain.IMaintain
        public void getYearEnergySum(ICloudCallback callback) throws RemoteException {
        }
    }

    void getCarDistributor(String longitude, String latitude, int operatorCode, ICloudCallback callback) throws RemoteException;

    void getCarMaintain(ICloudCallback callback) throws RemoteException;

    void getCarRanking(String vehicleSeries, String vehicleSeriesName, ICloudCallback callback) throws RemoteException;

    void getDayAndMonthSum(ICloudCallback callback) throws RemoteException;

    void getDayEnergyAvg(String localDate, ICloudCallback callback) throws RemoteException;

    void getDayEnergySum(String localDate, ICloudCallback callback) throws RemoteException;

    void getDriveData(String startTime, String endTime, ICloudCallback callback) throws RemoteException;

    void getDriveHistoryData(String startTime, String endTime, ICloudCallback callback) throws RemoteException;

    void getDriveQueryReport(String startTime, String endTime, ICloudCallback callback) throws RemoteException;

    void getDriveQueryTrack(String trackId, ICloudCallback callback) throws RemoteException;

    void getDriveSuggestion(ICloudCallback callback) throws RemoteException;

    void getEnergyConsumptionHistory(String startTime, String endTime, ICloudCallback callback) throws RemoteException;

    void getEnergyConsumptionToday(ICloudCallback callback) throws RemoteException;

    void getMaintainHistory(ICloudCallback callback) throws RemoteException;

    void getMaintainLastDate(ICloudCallback callback) throws RemoteException;

    void getMaintainLastMileage(ICloudCallback callback) throws RemoteException;

    void getMaintainNextMileage(ICloudCallback callback) throws RemoteException;

    void getMonthEnergyAvg(String localDate, ICloudCallback callback) throws RemoteException;

    void getMonthEnergySum(String localDate, ICloudCallback callback) throws RemoteException;

    void getMyCarInfo(ICloudCallback callback) throws RemoteException;

    void getWeekAndMonthEnergy(ICloudCallback callback) throws RemoteException;

    void getYearEnergyAvg(ICloudCallback callback) throws RemoteException;

    void getYearEnergySum(ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IMaintain {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.maintain.IMaintain";
        static final int TRANSACTION_getCarDistributor = 17;
        static final int TRANSACTION_getCarMaintain = 16;
        static final int TRANSACTION_getCarRanking = 18;
        static final int TRANSACTION_getDayAndMonthSum = 13;
        static final int TRANSACTION_getDayEnergyAvg = 14;
        static final int TRANSACTION_getDayEnergySum = 21;
        static final int TRANSACTION_getDriveData = 4;
        static final int TRANSACTION_getDriveHistoryData = 5;
        static final int TRANSACTION_getDriveQueryReport = 6;
        static final int TRANSACTION_getDriveQueryTrack = 7;
        static final int TRANSACTION_getDriveSuggestion = 8;
        static final int TRANSACTION_getEnergyConsumptionHistory = 9;
        static final int TRANSACTION_getEnergyConsumptionToday = 10;
        static final int TRANSACTION_getMaintainHistory = 11;
        static final int TRANSACTION_getMaintainLastDate = 1;
        static final int TRANSACTION_getMaintainLastMileage = 2;
        static final int TRANSACTION_getMaintainNextMileage = 3;
        static final int TRANSACTION_getMonthEnergyAvg = 15;
        static final int TRANSACTION_getMonthEnergySum = 22;
        static final int TRANSACTION_getMyCarInfo = 12;
        static final int TRANSACTION_getWeekAndMonthEnergy = 20;
        static final int TRANSACTION_getYearEnergyAvg = 19;
        static final int TRANSACTION_getYearEnergySum = 23;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IMaintain asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IMaintain)) {
                return (IMaintain) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    getMaintainLastDate(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    getMaintainLastMileage(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    getMaintainNextMileage(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    getDriveData(data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    getDriveHistoryData(data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    getDriveQueryReport(data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    getDriveQueryTrack(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    getDriveSuggestion(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    getEnergyConsumptionHistory(data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 10:
                    data.enforceInterface(DESCRIPTOR);
                    getEnergyConsumptionToday(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 11:
                    data.enforceInterface(DESCRIPTOR);
                    getMaintainHistory(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 12:
                    data.enforceInterface(DESCRIPTOR);
                    getMyCarInfo(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 13:
                    data.enforceInterface(DESCRIPTOR);
                    getDayAndMonthSum(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 14:
                    data.enforceInterface(DESCRIPTOR);
                    getDayEnergyAvg(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 15:
                    data.enforceInterface(DESCRIPTOR);
                    getMonthEnergyAvg(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 16:
                    data.enforceInterface(DESCRIPTOR);
                    getCarMaintain(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 17:
                    data.enforceInterface(DESCRIPTOR);
                    getCarDistributor(data.readString(), data.readString(), data.readInt(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 18:
                    data.enforceInterface(DESCRIPTOR);
                    getCarRanking(data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 19:
                    data.enforceInterface(DESCRIPTOR);
                    getYearEnergyAvg(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 20:
                    data.enforceInterface(DESCRIPTOR);
                    getWeekAndMonthEnergy(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 21:
                    data.enforceInterface(DESCRIPTOR);
                    getDayEnergySum(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 22:
                    data.enforceInterface(DESCRIPTOR);
                    getMonthEnergySum(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 23:
                    data.enforceInterface(DESCRIPTOR);
                    getYearEnergySum(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements IMaintain {
            public static IMaintain sDefaultImpl;
            private IBinder mRemote;

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getMaintainLastDate(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getMaintainLastDate(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getMaintainLastMileage(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getMaintainLastMileage(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getMaintainNextMileage(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getMaintainNextMileage(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getDriveData(String startTime, String endTime, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(startTime);
                    parcelObtain.writeString(endTime);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDriveData(startTime, endTime, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getDriveHistoryData(String startTime, String endTime, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(startTime);
                    parcelObtain.writeString(endTime);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDriveHistoryData(startTime, endTime, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getDriveQueryReport(String startTime, String endTime, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(startTime);
                    parcelObtain.writeString(endTime);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDriveQueryReport(startTime, endTime, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getDriveQueryTrack(String trackId, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(trackId);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDriveQueryTrack(trackId, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getDriveSuggestion(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDriveSuggestion(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getEnergyConsumptionHistory(String startTime, String endTime, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(startTime);
                    parcelObtain.writeString(endTime);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getEnergyConsumptionHistory(startTime, endTime, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getEnergyConsumptionToday(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(10, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getEnergyConsumptionToday(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getMaintainHistory(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(11, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getMaintainHistory(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getMyCarInfo(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(12, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getMyCarInfo(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getDayAndMonthSum(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(13, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDayAndMonthSum(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getDayEnergyAvg(String localDate, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(localDate);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(14, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDayEnergyAvg(localDate, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getMonthEnergyAvg(String localDate, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(localDate);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(15, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getMonthEnergyAvg(localDate, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getCarMaintain(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(16, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCarMaintain(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getCarDistributor(String longitude, String latitude, int operatorCode, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(longitude);
                    parcelObtain.writeString(latitude);
                    parcelObtain.writeInt(operatorCode);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(17, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCarDistributor(longitude, latitude, operatorCode, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getCarRanking(String vehicleSeries, String vehicleSeriesName, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(vehicleSeries);
                    parcelObtain.writeString(vehicleSeriesName);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(18, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCarRanking(vehicleSeries, vehicleSeriesName, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getYearEnergyAvg(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(19, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getYearEnergyAvg(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getWeekAndMonthEnergy(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(20, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getWeekAndMonthEnergy(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getDayEnergySum(String localDate, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(localDate);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(21, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDayEnergySum(localDate, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getMonthEnergySum(String localDate, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(localDate);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(22, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getMonthEnergySum(localDate, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.maintain.IMaintain
            public void getYearEnergySum(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(23, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getYearEnergySum(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IMaintain impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IMaintain getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
