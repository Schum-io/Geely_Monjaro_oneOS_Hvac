package com.geely.lib.cloud.assistant;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;

/* loaded from: classes.dex */
public interface IAssistant extends IInterface {

    public static class Default implements IAssistant {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.assistant.IAssistant
        public void getDrivingPositions(String startTime, String endTime, ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.assistant.IAssistant
        public void getModel1001(ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.assistant.IAssistant
        public void getModel1002(ICloudCallback callBack) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.assistant.IAssistant
        public void getModelList(ICloudCallback callBack) throws RemoteException {
        }
    }

    void getDrivingPositions(String startTime, String endTime, ICloudCallback callBack) throws RemoteException;

    void getModel1001(ICloudCallback callBack) throws RemoteException;

    void getModel1002(ICloudCallback callBack) throws RemoteException;

    void getModelList(ICloudCallback callBack) throws RemoteException;

    public static abstract class Stub extends Binder implements IAssistant {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.assistant.IAssistant";
        static final int TRANSACTION_getDrivingPositions = 4;
        static final int TRANSACTION_getModel1001 = 2;
        static final int TRANSACTION_getModel1002 = 3;
        static final int TRANSACTION_getModelList = 1;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAssistant asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAssistant)) {
                return (IAssistant) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int code, Parcel data, Parcel reply, int flags) throws RemoteException {
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                getModelList(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 2) {
                data.enforceInterface(DESCRIPTOR);
                getModel1001(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 3) {
                data.enforceInterface(DESCRIPTOR);
                getModel1002(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 4) {
                data.enforceInterface(DESCRIPTOR);
                getDrivingPositions(data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                return true;
            }
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(code, data, reply, flags);
        }

        private static class Proxy implements IAssistant {
            public static IAssistant sDefaultImpl;
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

            @Override // com.geely.lib.cloud.assistant.IAssistant
            public void getModelList(ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getModelList(callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.assistant.IAssistant
            public void getModel1001(ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getModel1001(callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.assistant.IAssistant
            public void getModel1002(ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getModel1002(callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.assistant.IAssistant
            public void getDrivingPositions(String startTime, String endTime, ICloudCallback callBack) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(startTime);
                    parcelObtain.writeString(endTime);
                    parcelObtain.writeStrongBinder(callBack != null ? callBack.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getDrivingPositions(startTime, endTime, callBack);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IAssistant impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IAssistant getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
