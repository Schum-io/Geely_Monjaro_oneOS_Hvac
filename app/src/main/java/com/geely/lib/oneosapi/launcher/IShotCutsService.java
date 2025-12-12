package com.geely.lib.oneosapi.launcher;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.launcher.bean.ShortcutCompat;
import java.util.List;

/* loaded from: classes.dex */
public interface IShotCutsService extends IInterface {

    public static class Default implements IShotCutsService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.launcher.IShotCutsService
        public List<ShortcutCompat> getShortCuts(String packageName) throws RemoteException {
            return null;
        }
    }

    public static abstract class Stub extends Binder implements IShotCutsService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.launcher.IShotCutsService";
        public static final int TRANSACTION_getShortCuts = 1;

        public static class Proxy implements IShotCutsService {
            public static IShotCutsService sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.launcher.IShotCutsService
            public List<ShortcutCompat> getShortCuts(String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getShortCuts(packageName);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(ShortcutCompat.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IShotCutsService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IShotCutsService)) ? new Proxy(obj) : (IShotCutsService) iInterfaceQueryLocalInterface;
        }

        public static IShotCutsService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IShotCutsService impl) {
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
            List<ShortcutCompat> shortCuts = getShortCuts(data.readString());
            reply.writeNoException();
            reply.writeTypedList(shortCuts);
            return true;
        }
    }

    List<ShortcutCompat> getShortCuts(String packageName) throws RemoteException;
}
