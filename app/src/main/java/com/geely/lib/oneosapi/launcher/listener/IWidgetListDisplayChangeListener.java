package com.geely.lib.oneosapi.launcher.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IWidgetListDisplayChangeListener extends IInterface {

    public static class Default implements IWidgetListDisplayChangeListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.launcher.listener.IWidgetListDisplayChangeListener
        public void psdWidgetListDisplay(boolean isVisible) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.listener.IWidgetListDisplayChangeListener
        public void widgetListDisplay(boolean isVisible) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IWidgetListDisplayChangeListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.launcher.listener.IWidgetListDisplayChangeListener";
        public static final int TRANSACTION_psdWidgetListDisplay = 2;
        public static final int TRANSACTION_widgetListDisplay = 1;

        public static class Proxy implements IWidgetListDisplayChangeListener {
            public static IWidgetListDisplayChangeListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.launcher.listener.IWidgetListDisplayChangeListener
            public void psdWidgetListDisplay(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().psdWidgetListDisplay(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.listener.IWidgetListDisplayChangeListener
            public void widgetListDisplay(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().widgetListDisplay(z);
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

        public static IWidgetListDisplayChangeListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IWidgetListDisplayChangeListener)) ? new Proxy(obj) : (IWidgetListDisplayChangeListener) iInterfaceQueryLocalInterface;
        }

        public static IWidgetListDisplayChangeListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IWidgetListDisplayChangeListener impl) {
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
                widgetListDisplay(data.readInt() != 0);
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
            psdWidgetListDisplay(data.readInt() != 0);
            reply.writeNoException();
            return true;
        }
    }

    void psdWidgetListDisplay(boolean isVisible) throws RemoteException;

    void widgetListDisplay(boolean isVisible) throws RemoteException;
}
