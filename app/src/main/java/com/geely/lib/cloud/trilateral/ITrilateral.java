package com.geely.lib.cloud.trilateral;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.trilateral.bean.TerminalIdParam;
import com.geely.lib.cloud.trilateral.bean.ThirdTypeParam;

/* loaded from: classes.dex */
public interface ITrilateral extends IInterface {

    public static class Default implements ITrilateral {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.cloud.trilateral.ITrilateral
        public void getAutoUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.trilateral.ITrilateral
        public void getTaiBindingAccount(ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.trilateral.ITrilateral
        public void getTaiLoginQrcode(TerminalIdParam terminalIdParam, ICloudCallback callback) throws RemoteException {
        }

        @Override // com.geely.lib.cloud.trilateral.ITrilateral
        public void getTaiUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException {
        }
    }

    void getAutoUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException;

    void getTaiBindingAccount(ICloudCallback callback) throws RemoteException;

    void getTaiLoginQrcode(TerminalIdParam terminalIdParam, ICloudCallback callback) throws RemoteException;

    void getTaiUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException;

    public static abstract class Stub extends Binder implements ITrilateral {
        private static final String DESCRIPTOR = "com.geely.lib.cloud.trilateral.ITrilateral";
        static final int TRANSACTION_getAutoUnboundAccount = 4;
        static final int TRANSACTION_getTaiBindingAccount = 2;
        static final int TRANSACTION_getTaiLoginQrcode = 1;
        static final int TRANSACTION_getTaiUnboundAccount = 3;

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITrilateral asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            if (iInterfaceQueryLocalInterface != null && (iInterfaceQueryLocalInterface instanceof ITrilateral)) {
                return (ITrilateral) iInterfaceQueryLocalInterface;
            }
            return new Proxy(obj);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                getTaiLoginQrcode(parcel.readInt() != 0 ? TerminalIdParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                getTaiBindingAccount(ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                getTaiUnboundAccount(parcel.readInt() != 0 ? ThirdTypeParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                getAutoUnboundAccount(parcel.readInt() != 0 ? ThirdTypeParam.CREATOR.createFromParcel(parcel) : null, ICloudCallback.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            return super.onTransact(i, parcel, parcel2, i2);
        }

        private static class Proxy implements ITrilateral {
            public static ITrilateral sDefaultImpl;
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

            @Override // com.geely.lib.cloud.trilateral.ITrilateral
            public void getTaiLoginQrcode(TerminalIdParam terminalIdParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (terminalIdParam != null) {
                        parcelObtain.writeInt(1);
                        terminalIdParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getTaiLoginQrcode(terminalIdParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.trilateral.ITrilateral
            public void getTaiBindingAccount(ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getTaiBindingAccount(callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.trilateral.ITrilateral
            public void getTaiUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (thirdTypeParam != null) {
                        parcelObtain.writeInt(1);
                        thirdTypeParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getTaiUnboundAccount(thirdTypeParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.cloud.trilateral.ITrilateral
            public void getAutoUnboundAccount(ThirdTypeParam thirdTypeParam, ICloudCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (thirdTypeParam != null) {
                        parcelObtain.writeInt(1);
                        thirdTypeParam.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().getAutoUnboundAccount(thirdTypeParam, callback);
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public static boolean setDefaultImpl(ITrilateral impl) {
            if (Proxy.sDefaultImpl != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (impl == null) {
                return false;
            }
            Proxy.sDefaultImpl = impl;
            return true;
        }

        public static ITrilateral getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }
    }
}
