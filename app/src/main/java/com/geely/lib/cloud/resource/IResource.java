package com.geely.lib.cloud.resource;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.resource.bean.TboxUploadParam;

/* loaded from: classes.dex */
public interface IResource extends IInterface {

    public static class Default implements IResource {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.resource.IResource
        public void getCarModel(String carSeries, String code, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.resource.IResource
        public void getCloudAlbumFlag(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.resource.IResource
        public void getFragranceUrl(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.resource.IResource
        public void getInstructionBookUrl(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.resource.IResource
        public void getSmartDriveImageList(String vehicleSeriesCode, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.resource.IResource
        public void getTboxUploadLog(TboxUploadParam tboxUploadParam, ICloudCallback callback) throws RemoteException {
        }
    }

    void getCarModel(String carSeries, String code, ICloudCallback callback) throws RemoteException;

    void getCloudAlbumFlag(ICloudCallback callback) throws RemoteException;

    void getFragranceUrl(ICloudCallback callback) throws RemoteException;

    void getInstructionBookUrl(ICloudCallback callback) throws RemoteException;

    void getSmartDriveImageList(String vehicleSeriesCode, ICloudCallback callback) throws RemoteException;

    void getTboxUploadLog(TboxUploadParam tboxUploadParam, ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements IResource {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.resource.IResource";
        static final int TRANSACTION_getCarModel = 6;
        static final int TRANSACTION_getCloudAlbumFlag = 3;
        static final int TRANSACTION_getFragranceUrl = 2;
        static final int TRANSACTION_getInstructionBookUrl = 1;
        static final int TRANSACTION_getSmartDriveImageList = 4;
        static final int TRANSACTION_getTboxUploadLog = 5;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IResource asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof IResource)) {
                return (IResource) iInterfaceQueryLocalInterface;
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
                    getInstructionBookUrl(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    getFragranceUrl(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    getCloudAlbumFlag(ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    getSmartDriveImageList(data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    getTboxUploadLog(data.readInt() != 0 ? TboxUploadParam.CREATOR.createFromParcel(data) : null, ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    getCarModel(data.readString(), data.readString(), ICloudCallback.Stub.asInterface(data.readStrongBinder()));
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }

        private static class Proxy implements IResource {
            public static IResource sDefaultImpl;
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

            @Override // com.geely.lib.cloud.resource.IResource
            public void getInstructionBookUrl(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getInstructionBookUrl(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.resource.IResource
            public void getFragranceUrl(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getFragranceUrl(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.resource.IResource
            public void getCloudAlbumFlag(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCloudAlbumFlag(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.resource.IResource
            public void getSmartDriveImageList(String vehicleSeriesCode, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(vehicleSeriesCode);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getSmartDriveImageList(vehicleSeriesCode, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.resource.IResource
            public void getTboxUploadLog(TboxUploadParam tboxUploadParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (tboxUploadParam != null) {
                        parcelObtain.writeInt(1);
                        tboxUploadParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getTboxUploadLog(tboxUploadParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.resource.IResource
            public void getCarModel(String carSeries, String code, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(carSeries);
                    parcelObtain.writeString(code);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getCarModel(carSeries, code, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(IResource impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static IResource getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
