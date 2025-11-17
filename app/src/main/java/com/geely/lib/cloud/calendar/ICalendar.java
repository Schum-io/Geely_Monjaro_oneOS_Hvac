package com.geely.lib.cloud.calendar;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;

/* loaded from: classes.dex */
public interface ICalendar extends IInterface {

    public static class Default implements ICalendar {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.calendar.ICalendar
        public void getCalendarSyncSwitchStatus(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.calendar.ICalendar
        public void setCalendarSyncSwitchStatus(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.calendar.ICalendar
        public void syncCalendarData(ICloudCallback callback) throws RemoteException {
        }
    }

    void getCalendarSyncSwitchStatus(ICloudCallback callback) throws RemoteException;

    void setCalendarSyncSwitchStatus(ICloudCallback callback) throws RemoteException;

    void syncCalendarData(ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements ICalendar {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.calendar.ICalendar";
        static final int TRANSACTION_getCalendarSyncSwitchStatus = 1;
        static final int TRANSACTION_setCalendarSyncSwitchStatus = 2;
        static final int TRANSACTION_syncCalendarData = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICalendar asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ICalendar)) {
                return (ICalendar) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                getCalendarSyncSwitchStatus(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                setCalendarSyncSwitchStatus(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                syncCalendarData(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static class Proxy implements ICalendar {
            public static ICalendar sDefaultImpl;
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

            @Override // com.geely.lib.cloud.calendar.ICalendar
            public void getCalendarSyncSwitchStatus(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCalendarSyncSwitchStatus(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.calendar.ICalendar
            public void setCalendarSyncSwitchStatus(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().setCalendarSyncSwitchStatus(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.calendar.ICalendar
            public void syncCalendarData(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().syncCalendarData(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ICalendar impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static ICalendar getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
