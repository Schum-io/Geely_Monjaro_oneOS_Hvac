package com.geely.lib.cloud.apputil;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.apputil.bean.AllDataParam;
import com.geely.lib.cloud.apputil.bean.MessageParam;

/* loaded from: classes.dex */
public interface IAppUtil extends IInterface {

    public static class Default implements IAppUtil {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.apputil.IAppUtil
        public void getAllData(String screen, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.apputil.IAppUtil
        public String getIhuCode() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.cloud.apputil.IAppUtil
        public void getMessageByPackage(MessageParam messageParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.apputil.IAppUtil
        public void getNewAllData(AllDataParam allDataParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.apputil.IAppUtil
        public String getVinCode() throws RemoteException {
            return null;
        }
    }

    void getAllData(String screen, ICloudCallback callback) throws RemoteException;

    String getIhuCode() throws RemoteException;

    void getMessageByPackage(MessageParam messageParam, ICloudCallback callback) throws RemoteException;

    void getNewAllData(AllDataParam allDataParam, ICloudCallback callback) throws RemoteException;

    String getVinCode() throws RemoteException;

    public static abstract class Stub extends Binder implements IAppUtil {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.apputil.IAppUtil";
        static final int TRANSACTION_getAllData = 2;
        static final int TRANSACTION_getIhuCode = 4;
        static final int TRANSACTION_getMessageByPackage = 1;
        static final int TRANSACTION_getNewAllData = 5;
        static final int TRANSACTION_getVinCode = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IAppUtil asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IAppUtil)) {
                return (IAppUtil) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                getMessageByPackage(parcel.readInt() != 0 ? MessageParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                getAllData(parcel.readString(), ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                String vinCode = getVinCode();
                parcel2.writeNoException();
                parcel2.writeString(vinCode);
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                String ihuCode = getIhuCode();
                parcel2.writeNoException();
                parcel2.writeString(ihuCode);
                return true;
            }
            if (i == 5) {
                parcel.enforceInterface(DESCRIPTOR);
                getNewAllData(parcel.readInt() != 0 ? AllDataParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements IAppUtil {
            public static IAppUtil sDefaultImpl;
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

            @Override // com.geely.lib.cloud.apputil.IAppUtil
            public void getMessageByPackage(MessageParam messageParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (messageParam != null) {
                        parcelObtain.writeInt(1);
                        messageParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getMessageByPackage(messageParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.apputil.IAppUtil
            public void getAllData(String screen, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(screen);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAllData(screen, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.apputil.IAppUtil
            public String getVinCode() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getVinCode();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.apputil.IAppUtil
            public String getIhuCode() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getIhuCode();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.apputil.IAppUtil
            public void getNewAllData(AllDataParam allDataParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (allDataParam != null) {
                        parcelObtain.writeInt(1);
                        allDataParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getNewAllData(allDataParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IAppUtil impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IAppUtil getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
