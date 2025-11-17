package com.geely.lib.oneosapi.launcher.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ILauncherPageSwitchListener extends IInterface {

    public static class Default implements ILauncherPageSwitchListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.launcher.listener.ILauncherPageSwitchListener
        public void onPageSwitch(int currentPage) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.listener.ILauncherPageSwitchListener
        public void onPsdPageSwitch(int currentPage) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ILauncherPageSwitchListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.launcher.listener.ILauncherPageSwitchListener";
        public static final int TRANSACTION_onPageSwitch = 1;
        public static final int TRANSACTION_onPsdPageSwitch = 2;

        public static class Proxy implements ILauncherPageSwitchListener {
            public static ILauncherPageSwitchListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.launcher.listener.ILauncherPageSwitchListener
            public void onPageSwitch(int currentPage) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(currentPage);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPageSwitch(currentPage);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.listener.ILauncherPageSwitchListener
            public void onPsdPageSwitch(int currentPage) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(currentPage);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPsdPageSwitch(currentPage);
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

        public static ILauncherPageSwitchListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ILauncherPageSwitchListener)) ? new Proxy(obj) : (ILauncherPageSwitchListener) iInterfaceQueryLocalInterface;
        }

        public static ILauncherPageSwitchListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ILauncherPageSwitchListener impl) {
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
                onPageSwitch(data.readInt());
                reply.writeNoException();
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
            onPsdPageSwitch(data.readInt());
            reply.writeNoException();
            return true;
        }
    }

    void onPageSwitch(int currentPage) throws RemoteException;

    void onPsdPageSwitch(int currentPage) throws RemoteException;
}
