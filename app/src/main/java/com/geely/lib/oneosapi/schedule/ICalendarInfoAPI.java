package com.geely.lib.oneosapi.schedule;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.schedule.CPCallbackInterface;
import com.geely.lib.oneosapi.schedule.bean.CPAddScheduleBean;
import com.geely.lib.oneosapi.schedule.bean.CPQueryScheduleBean;

/* loaded from: classes.dex */
public interface ICalendarInfoAPI extends IInterface {

    public static class Default implements ICalendarInfoAPI {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public int getAllCalendarEvent() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public int getCalendarEventByTime(CPAddScheduleBean info) throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public CPQueryScheduleBean getCalendarEventNextTime() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public CPQueryScheduleBean getCalendarEventTime(CPAddScheduleBean info) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public void getCalendarEvents(CPCallbackInterface callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public void getCalendarImportEvents(CPCallbackInterface callback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public void launchAddImportSchedule() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public void launchAddImportScheduleParameter(long eventID) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public void launchAddSchedule() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public void launchAddScheduleParameter(long eventID) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public void launchScheduleHome() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
        public int setAddCalendarEvent(CPAddScheduleBean info) throws RemoteException {
            return 0;
        }
    }

    public static abstract class Stub extends Binder implements ICalendarInfoAPI {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.schedule.ICalendarInfoAPI";
        public static final int TRANSACTION_getAllCalendarEvent = 9;
        public static final int TRANSACTION_getCalendarEventByTime = 10;
        public static final int TRANSACTION_getCalendarEventNextTime = 12;
        public static final int TRANSACTION_getCalendarEventTime = 11;
        public static final int TRANSACTION_getCalendarEvents = 2;
        public static final int TRANSACTION_getCalendarImportEvents = 1;
        public static final int TRANSACTION_launchAddImportSchedule = 8;
        public static final int TRANSACTION_launchAddImportScheduleParameter = 7;
        public static final int TRANSACTION_launchAddSchedule = 6;
        public static final int TRANSACTION_launchAddScheduleParameter = 5;
        public static final int TRANSACTION_launchScheduleHome = 4;
        public static final int TRANSACTION_setAddCalendarEvent = 3;

        public static class Proxy implements ICalendarInfoAPI {
            public static ICalendarInfoAPI sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public int getAllCalendarEvent() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAllCalendarEvent();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public int getCalendarEventByTime(CPAddScheduleBean info) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (info != null) {
                        parcelObtain.writeInt(1);
                        info.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCalendarEventByTime(info);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public CPQueryScheduleBean getCalendarEventNextTime() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCalendarEventNextTime();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? CPQueryScheduleBean.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public CPQueryScheduleBean getCalendarEventTime(CPAddScheduleBean info) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (info != null) {
                        parcelObtain.writeInt(1);
                        info.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCalendarEventTime(info);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? CPQueryScheduleBean.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public void getCalendarEvents(CPCallbackInterface callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getCalendarEvents(callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public void getCalendarImportEvents(CPCallbackInterface callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getCalendarImportEvents(callback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public void launchAddImportSchedule() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().launchAddImportSchedule();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public void launchAddImportScheduleParameter(long eventID) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(eventID);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().launchAddImportScheduleParameter(eventID);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public void launchAddSchedule() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().launchAddSchedule();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public void launchAddScheduleParameter(long eventID) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(eventID);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().launchAddScheduleParameter(eventID);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public void launchScheduleHome() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().launchScheduleHome();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.ICalendarInfoAPI
            public int setAddCalendarEvent(CPAddScheduleBean info) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (info != null) {
                        parcelObtain.writeInt(1);
                        info.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setAddCalendarEvent(info);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICalendarInfoAPI asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICalendarInfoAPI)) ? new Proxy(obj) : (ICalendarInfoAPI) iInterfaceQueryLocalInterface;
        }

        public static ICalendarInfoAPI getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ICalendarInfoAPI impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
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
                    getCalendarImportEvents(CPCallbackInterface.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    getCalendarEvents(CPCallbackInterface.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    int addCalendarEvent = setAddCalendarEvent(data.readInt() != 0 ? CPAddScheduleBean.CREATOR.createFromParcel(data) : null);
                    reply.writeNoException();
                    reply.writeInt(addCalendarEvent);
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    launchScheduleHome();
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    launchAddScheduleParameter(data.readLong());
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    launchAddSchedule();
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    launchAddImportScheduleParameter(data.readLong());
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    launchAddImportSchedule();
                    reply.writeNoException();
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    int allCalendarEvent = getAllCalendarEvent();
                    reply.writeNoException();
                    reply.writeInt(allCalendarEvent);
                    return true;
                case 10:
                    data.enforceInterface(DESCRIPTOR);
                    int calendarEventByTime = getCalendarEventByTime(data.readInt() != 0 ? CPAddScheduleBean.CREATOR.createFromParcel(data) : null);
                    reply.writeNoException();
                    reply.writeInt(calendarEventByTime);
                    return true;
                case 11:
                    data.enforceInterface(DESCRIPTOR);
                    CPQueryScheduleBean calendarEventTime = getCalendarEventTime(data.readInt() != 0 ? CPAddScheduleBean.CREATOR.createFromParcel(data) : null);
                    reply.writeNoException();
                    if (calendarEventTime != null) {
                        reply.writeInt(1);
                        calendarEventTime.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    return true;
                case 12:
                    data.enforceInterface(DESCRIPTOR);
                    CPQueryScheduleBean calendarEventNextTime = getCalendarEventNextTime();
                    reply.writeNoException();
                    if (calendarEventNextTime != null) {
                        reply.writeInt(1);
                        calendarEventNextTime.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    int getAllCalendarEvent() throws RemoteException;

    int getCalendarEventByTime(CPAddScheduleBean info) throws RemoteException;

    CPQueryScheduleBean getCalendarEventNextTime() throws RemoteException;

    CPQueryScheduleBean getCalendarEventTime(CPAddScheduleBean info) throws RemoteException;

    void getCalendarEvents(CPCallbackInterface callback) throws RemoteException;

    void getCalendarImportEvents(CPCallbackInterface callback) throws RemoteException;

    void launchAddImportSchedule() throws RemoteException;

    void launchAddImportScheduleParameter(long eventID) throws RemoteException;

    void launchAddSchedule() throws RemoteException;

    void launchAddScheduleParameter(long eventID) throws RemoteException;

    void launchScheduleHome() throws RemoteException;

    int setAddCalendarEvent(CPAddScheduleBean info) throws RemoteException;
}
