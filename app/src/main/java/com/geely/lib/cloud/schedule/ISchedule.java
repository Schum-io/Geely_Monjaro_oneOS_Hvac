package com.geely.lib.cloud.schedule;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;

/* loaded from: classes.dex */
public interface ISchedule extends IInterface {

    public static class Default implements ISchedule {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.schedule.ISchedule
        public void getMachineAskSchedule(ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.schedule.ISchedule
        public void getMachineReportSchedule(DailyListParam dailyListParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.schedule.ISchedule
        public void getReportSchedule(DailyListParam dailyListParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.schedule.ISchedule
        public void getScheduleReportSwitchStatus(DailyFlagParam dailyFlagParam, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.schedule.ISchedule
        public void getScheduleSwitchStatus(ICloudCallback callBack) throws RemoteException {
        }
    }

    void getMachineAskSchedule(ICloudCallback callBack) throws RemoteException;

    void getMachineReportSchedule(DailyListParam dailyListParam, ICloudCallback callBack) throws RemoteException;

    void getReportSchedule(DailyListParam dailyListParam, ICloudCallback callBack) throws RemoteException;

    void getScheduleReportSwitchStatus(DailyFlagParam dailyFlagParam, ICloudCallback callBack) throws RemoteException;

    void getScheduleSwitchStatus(ICloudCallback callBack) throws RemoteException;

    public static abstract class Stub extends Binder implements ISchedule {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.schedule.ISchedule";
        static final int TRANSACTION_getMachineAskSchedule = 4;
        static final int TRANSACTION_getMachineReportSchedule = 5;
        static final int TRANSACTION_getReportSchedule = 3;
        static final int TRANSACTION_getScheduleReportSwitchStatus = 2;
        static final int TRANSACTION_getScheduleSwitchStatus = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ISchedule asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ISchedule)) {
                return (ISchedule) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                getScheduleSwitchStatus(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                getScheduleReportSwitchStatus(parcel.readInt() != 0 ? DailyFlagParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                getReportSchedule(parcel.readInt() != 0 ? DailyListParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                getMachineAskSchedule(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 5) {
                parcel.enforceInterface(DESCRIPTOR);
                getMachineReportSchedule(parcel.readInt() != 0 ? DailyListParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements ISchedule {
            public static ISchedule sDefaultImpl;
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

            @Override // com.geely.lib.cloud.schedule.ISchedule
            public void getScheduleSwitchStatus(ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getScheduleSwitchStatus(callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.schedule.ISchedule
            public void getScheduleReportSwitchStatus(DailyFlagParam dailyFlagParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (dailyFlagParam != null) {
                        parcelObtain.writeInt(1);
                        dailyFlagParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getScheduleReportSwitchStatus(dailyFlagParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.schedule.ISchedule
            public void getReportSchedule(DailyListParam dailyListParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (dailyListParam != null) {
                        parcelObtain.writeInt(1);
                        dailyListParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getReportSchedule(dailyListParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.schedule.ISchedule
            public void getMachineAskSchedule(ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getMachineAskSchedule(callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.schedule.ISchedule
            public void getMachineReportSchedule(DailyListParam dailyListParam, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (dailyListParam != null) {
                        parcelObtain.writeInt(1);
                        dailyListParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getMachineReportSchedule(dailyListParam, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ISchedule impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static ISchedule getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
