package com.geely.lib.oneosapi.input;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.input.IInputListener;

/* loaded from: classes.dex */
public interface IInputManager extends IInterface {

    public static class Default implements IInputManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.input.IInputManager
        public int getControlIndex() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.input.IInputManager
        public boolean interceptKeyCode(int keyCode, String packageName) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.input.IInputManager
        public void registerListener(IInputListener listener, String packageName, int[] keyCodes) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.input.IInputManager
        public boolean releaseKeyCode(int keyCode, String packageName) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.input.IInputManager
        public void unregisterListener(IInputListener listener, String packageName) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IInputManager {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.input.IInputManager";
        public static final int TRANSACTION_getControlIndex = 5;
        public static final int TRANSACTION_interceptKeyCode = 1;
        public static final int TRANSACTION_registerListener = 3;
        public static final int TRANSACTION_releaseKeyCode = 2;
        public static final int TRANSACTION_unregisterListener = 4;

        public static class Proxy implements IInputManager {
            public static IInputManager sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.input.IInputManager
            public int getControlIndex() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getControlIndex();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.input.IInputManager
            public boolean interceptKeyCode(int keyCode, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(keyCode);
                    parcelObtain.writeString(packageName);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().interceptKeyCode(keyCode, packageName);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.input.IInputManager
            public void registerListener(IInputListener listener, String packageName, int[] keyCodes) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    parcelObtain.writeIntArray(keyCodes);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerListener(listener, packageName, keyCodes);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.input.IInputManager
            public boolean releaseKeyCode(int keyCode, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(keyCode);
                    parcelObtain.writeString(packageName);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().releaseKeyCode(keyCode, packageName);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.input.IInputManager
            public void unregisterListener(IInputListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterListener(listener, packageName);
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

        public static IInputManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IInputManager)) ? new Proxy(obj) : (IInputManager) iInterfaceQueryLocalInterface;
        }

        public static IInputManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IInputManager impl) {
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
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            if (i == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zInterceptKeyCode = interceptKeyCode(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zInterceptKeyCode ? 1 : 0);
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                boolean zReleaseKeyCode = releaseKeyCode(parcel.readInt(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(zReleaseKeyCode ? 1 : 0);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface(DESCRIPTOR);
                registerListener(IInputListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), parcel.createIntArray());
                parcel2.writeNoException();
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface(DESCRIPTOR);
                unregisterListener(IInputListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            }
            if (i != 5) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel.enforceInterface(DESCRIPTOR);
            int controlIndex = getControlIndex();
            parcel2.writeNoException();
            parcel2.writeInt(controlIndex);
            return true;
        }
    }

    int getControlIndex() throws RemoteException;

    boolean interceptKeyCode(int keyCode, String packageName) throws RemoteException;

    void registerListener(IInputListener listener, String packageName, int[] keyCodes) throws RemoteException;

    boolean releaseKeyCode(int keyCode, String packageName) throws RemoteException;

    void unregisterListener(IInputListener listener, String packageName) throws RemoteException;
}
