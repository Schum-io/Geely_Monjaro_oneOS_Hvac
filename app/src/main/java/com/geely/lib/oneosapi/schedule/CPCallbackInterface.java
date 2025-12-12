package com.geely.lib.oneosapi.schedule;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.schedule.bean.CPHolidayInfo;
import com.geely.lib.oneosapi.schedule.bean.CPScheduleInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public interface CPCallbackInterface extends IInterface {

    public static class Default implements CPCallbackInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.schedule.CPCallbackInterface
        public void callbackCalendarEventInfo(List<CPScheduleInfo> list) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.schedule.CPCallbackInterface
        public void callbackCalendarImportInfo(List<CPHolidayInfo> list) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements CPCallbackInterface {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.schedule.CPCallbackInterface";
        public static final int TRANSACTION_callbackCalendarEventInfo = 1;
        public static final int TRANSACTION_callbackCalendarImportInfo = 2;

        public static class Proxy implements CPCallbackInterface {
            public static CPCallbackInterface sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.schedule.CPCallbackInterface
            public void callbackCalendarEventInfo(List<CPScheduleInfo> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(list);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().callbackCalendarEventInfo(list);
                    } else {
                        parcelObtain2.readException();
                        parcelObtain2.readTypedList(list, CPScheduleInfo.CREATOR);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.schedule.CPCallbackInterface
            public void callbackCalendarImportInfo(List<CPHolidayInfo> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(list);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().callbackCalendarImportInfo(list);
                    } else {
                        parcelObtain2.readException();
                        parcelObtain2.readTypedList(list, CPHolidayInfo.CREATOR);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static CPCallbackInterface asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof CPCallbackInterface)) ? new Proxy(obj) : (CPCallbackInterface) iInterfaceQueryLocalInterface;
        }

        public static CPCallbackInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(CPCallbackInterface impl) {
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
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                ArrayList arrayListCreateTypedArrayList = data.createTypedArrayList(CPScheduleInfo.CREATOR);
                callbackCalendarEventInfo(arrayListCreateTypedArrayList);
                reply.writeNoException();
                reply.writeTypedList(arrayListCreateTypedArrayList);
                return true;
            }
            if (code != 2) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            ArrayList arrayListCreateTypedArrayList2 = data.createTypedArrayList(CPHolidayInfo.CREATOR);
            callbackCalendarImportInfo(arrayListCreateTypedArrayList2);
            reply.writeNoException();
            reply.writeTypedList(arrayListCreateTypedArrayList2);
            return true;
        }
    }

    void callbackCalendarEventInfo(List<CPScheduleInfo> list) throws RemoteException;

    void callbackCalendarImportInfo(List<CPHolidayInfo> list) throws RemoteException;
}
