package com.geely.lib.oneosapi.phone.inter;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.phone.telecom.GlyCallLogInfo;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public interface ICallLogDateListener extends IInterface {

    public static class Default implements ICallLogDateListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.phone.inter.ICallLogDateListener
        public void onCallLogDate(List<GlyCallLogInfo> callLogList) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ICallLogDateListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.phone.inter.ICallLogDateListener";
        public static final int TRANSACTION_onCallLogDate = 1;

        public static class Proxy implements ICallLogDateListener {
            public static ICallLogDateListener sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.phone.inter.ICallLogDateListener
            public void onCallLogDate(List<GlyCallLogInfo> callLogList) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(callLogList);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onCallLogDate(callLogList);
                    } else {
                        parcelObtain2.readException();
                        parcelObtain2.readTypedList(callLogList, GlyCallLogInfo.CREATOR);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ICallLogDateListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICallLogDateListener)) ? new Proxy(obj) : (ICallLogDateListener) iInterfaceQueryLocalInterface;
        }

        public static ICallLogDateListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ICallLogDateListener impl) {
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
            if (code != 1) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            ArrayList arrayListCreateTypedArrayList = data.createTypedArrayList(GlyCallLogInfo.CREATOR);
            onCallLogDate(arrayListCreateTypedArrayList);
            reply.writeNoException();
            reply.writeTypedList(arrayListCreateTypedArrayList);
            return true;
        }
    }

    void onCallLogDate(List<GlyCallLogInfo> callLogList) throws RemoteException;
}
