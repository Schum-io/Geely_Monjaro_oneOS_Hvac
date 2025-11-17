package com.geely.lib.cloud.weather;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;

/* loaded from: classes.dex */
public interface IWeather extends IInterface {

    public static class Default implements IWeather {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.weather.IWeather
        public void getWeatherCitys(String page, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.weather.IWeather
        public void modifyWeatherManagementList(ModifyBindCityParam modifyBindCityParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.weather.IWeather
        public void queryAreaUpdateTime(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.weather.IWeather
        public void queryCurrentWeather(String areaId, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.weather.IWeather
        public void queryHoursWeather(String areaId, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.weather.IWeather
        public void queryMoreDaysWeather(String areaId, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.weather.IWeather
        public void queryNewMoreDaysWeather(String areaId, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.weather.IWeather
        public void querySunriseAndSunset(String areaId, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.weather.IWeather
        public void queryWeatherArea(String location, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.weather.IWeather
        public void queryWeatherManagementList(ICloudCallback callback) throws RemoteException {
        }
    }

    void getWeatherCitys(String page, ICloudCallback callback) throws RemoteException;

    void modifyWeatherManagementList(ModifyBindCityParam modifyBindCityParam, ICloudCallback callback) throws RemoteException;

    void queryAreaUpdateTime(ICloudCallback callback) throws RemoteException;

    void queryCurrentWeather(String areaId, ICloudCallback callback) throws RemoteException;

    void queryHoursWeather(String areaId, ICloudCallback callback) throws RemoteException;

    void queryMoreDaysWeather(String areaId, ICloudCallback callback) throws RemoteException;

    void queryNewMoreDaysWeather(String areaId, ICloudCallback callback) throws RemoteException;

    void querySunriseAndSunset(String areaId, ICloudCallback callback) throws RemoteException;

    void queryWeatherArea(String location, ICloudCallback callback) throws RemoteException;

    void queryWeatherManagementList(ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IWeather {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.weather.IWeather";
        static final int TRANSACTION_getWeatherCitys = 1;
        static final int TRANSACTION_modifyWeatherManagementList = 4;
        static final int TRANSACTION_queryAreaUpdateTime = 8;
        static final int TRANSACTION_queryCurrentWeather = 5;
        static final int TRANSACTION_queryHoursWeather = 7;
        static final int TRANSACTION_queryMoreDaysWeather = 6;
        static final int TRANSACTION_queryNewMoreDaysWeather = 10;
        static final int TRANSACTION_querySunriseAndSunset = 9;
        static final int TRANSACTION_queryWeatherArea = 2;
        static final int TRANSACTION_queryWeatherManagementList = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IWeather asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IWeather)) {
                return (IWeather) iInterfaceQueryLocalInterface;
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
                    getWeatherCitys(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    queryWeatherArea(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    queryWeatherManagementList(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    modifyWeatherManagementList(data.readInt() != 0 ? ModifyBindCityParam.CREATOR.createFromParcel(data) : null, ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    queryCurrentWeather(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    queryMoreDaysWeather(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    queryHoursWeather(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    queryAreaUpdateTime(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    querySunriseAndSunset(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 10:
                    data.enforceInterface(DESCRIPTOR);
                    queryNewMoreDaysWeather(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements IWeather {
            public static IWeather sDefaultImpl;
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

            @Override // com.geely.lib.cloud.weather.IWeather
            public void getWeatherCitys(String page, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(page);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getWeatherCitys(page, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.weather.IWeather
            public void queryWeatherArea(String location, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(location);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().queryWeatherArea(location, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.weather.IWeather
            public void queryWeatherManagementList(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().queryWeatherManagementList(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.weather.IWeather
            public void modifyWeatherManagementList(ModifyBindCityParam modifyBindCityParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (modifyBindCityParam != null) {
                        parcelObtain.writeInt(1);
                        modifyBindCityParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().modifyWeatherManagementList(modifyBindCityParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.weather.IWeather
            public void queryCurrentWeather(String areaId, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(areaId);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().queryCurrentWeather(areaId, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.weather.IWeather
            public void queryMoreDaysWeather(String areaId, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(areaId);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().queryMoreDaysWeather(areaId, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.weather.IWeather
            public void queryHoursWeather(String areaId, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(areaId);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().queryHoursWeather(areaId, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.weather.IWeather
            public void queryAreaUpdateTime(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().queryAreaUpdateTime(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.weather.IWeather
            public void querySunriseAndSunset(String areaId, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(areaId);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().querySunriseAndSunset(areaId, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.weather.IWeather
            public void queryNewMoreDaysWeather(String areaId, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(areaId);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(10, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().queryNewMoreDaysWeather(areaId, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IWeather impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IWeather getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
