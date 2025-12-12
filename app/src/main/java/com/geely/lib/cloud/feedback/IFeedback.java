package com.geely.lib.cloud.feedback;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.feedback.bean.WorkOrderPostParam;

/* loaded from: classes.dex */
public interface IFeedback extends IInterface {

    public static class Default implements IFeedback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.feedback.IFeedback
        public void getWorkOrderList(String classifyID, String vin, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.feedback.IFeedback
        public void getWorkOrderPost(WorkOrderPostParam workOrderPostParam, ICloudCallback callback) throws RemoteException {
        }
    }

    void getWorkOrderList(String classifyID, String vin, ICloudCallback callback) throws RemoteException;

    void getWorkOrderPost(WorkOrderPostParam workOrderPostParam, ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IFeedback {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.feedback.IFeedback";
        static final int TRANSACTION_getWorkOrderList = 1;
        static final int TRANSACTION_getWorkOrderPost = 2;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IFeedback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IFeedback)) {
                return (IFeedback) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                getWorkOrderList(data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                getWorkOrderPost(data.readInt() != 0 ? WorkOrderPostParam.CREATOR.createFromParcel(data) : null, ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static class Proxy implements IFeedback {
            public static IFeedback sDefaultImpl;
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

            @Override // com.geely.lib.cloud.feedback.IFeedback
            public void getWorkOrderList(String classifyID, String vin, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(classifyID);
                    parcelObtain.writeString(vin);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getWorkOrderList(classifyID, vin, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.feedback.IFeedback
            public void getWorkOrderPost(WorkOrderPostParam workOrderPostParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (workOrderPostParam != null) {
                        parcelObtain.writeInt(1);
                        workOrderPostParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getWorkOrderPost(workOrderPostParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IFeedback impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IFeedback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
