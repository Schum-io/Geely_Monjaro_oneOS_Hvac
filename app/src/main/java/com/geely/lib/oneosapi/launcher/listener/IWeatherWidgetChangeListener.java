package com.geely.lib.oneosapi.launcher.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IWeatherWidgetChangeListener extends IInterface {

    public static class Default implements IWeatherWidgetChangeListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.launcher.listener.IWeatherWidgetChangeListener
        public void onWeatherWidgetChanged(int position, int widgetId) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IWeatherWidgetChangeListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.launcher.listener.IWeatherWidgetChangeListener";
        public static final int TRANSACTION_onWeatherWidgetChanged = 1;

        public static class Proxy implements IWeatherWidgetChangeListener {
            public static IWeatherWidgetChangeListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.launcher.listener.IWeatherWidgetChangeListener
            public void onWeatherWidgetChanged(int position, int widgetId) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(position);
                    parcelObtain.writeInt(widgetId);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onWeatherWidgetChanged(position, widgetId);
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

        public static IWeatherWidgetChangeListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IWeatherWidgetChangeListener)) ? new Proxy(obj) : (IWeatherWidgetChangeListener) iInterfaceQueryLocalInterface;
        }

        public static IWeatherWidgetChangeListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IWeatherWidgetChangeListener impl) {
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
            onWeatherWidgetChanged(data.readInt(), data.readInt());
            reply.writeNoException();
            return true;
        }
    }

    void onWeatherWidgetChanged(int position, int widgetId) throws RemoteException;
}
