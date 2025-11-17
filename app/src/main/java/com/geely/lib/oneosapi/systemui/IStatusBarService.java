package com.geely.lib.oneosapi.systemui;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.systemui.listener.IStatusBarModeChangeListener;

/* loaded from: classes.dex */
public interface IStatusBarService extends IInterface {

    public static class Default implements IStatusBarService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
        public void closeDialogByName(String dialogName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
        public int getPsdStatusBarVisibility() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
        public Bundle getStatusBarWindowMode() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
        public void registerStatusBarModeChangeListener(IStatusBarModeChangeListener listener, String pkg) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
        public void setCsdActivity(IBinder csdAcitvity) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
        public void setLeftTempStateVisibility(String leftTempStateContents, int visibility) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
        public void setPsdActivity(IBinder psdAcitvity) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
        public void setPsdStatusVisibility(int visibility) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
        public void showDialogByName(String dialogName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
        public void unRegisterStatusBarModeChangeListener(IStatusBarModeChangeListener listener, String pkg) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IStatusBarService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.systemui.IStatusBarService";
        public static final int TRANSACTION_closeDialogByName = 5;
        public static final int TRANSACTION_getPsdStatusBarVisibility = 6;
        public static final int TRANSACTION_getStatusBarWindowMode = 8;
        public static final int TRANSACTION_registerStatusBarModeChangeListener = 9;
        public static final int TRANSACTION_setCsdActivity = 3;
        public static final int TRANSACTION_setLeftTempStateVisibility = 7;
        public static final int TRANSACTION_setPsdActivity = 4;
        public static final int TRANSACTION_setPsdStatusVisibility = 2;
        public static final int TRANSACTION_showDialogByName = 1;
        public static final int TRANSACTION_unRegisterStatusBarModeChangeListener = 10;

        public static class Proxy implements IStatusBarService {
            public static IStatusBarService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
            public void closeDialogByName(String dialogName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(dialogName);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().closeDialogByName(dialogName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
            public int getPsdStatusBarVisibility() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPsdStatusBarVisibility();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
            public Bundle getStatusBarWindowMode() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getStatusBarWindowMode();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
            public void registerStatusBarModeChangeListener(IStatusBarModeChangeListener listener, String pkg) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(pkg);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerStatusBarModeChangeListener(listener, pkg);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
            public void setCsdActivity(IBinder csdAcitvity) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(csdAcitvity);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setCsdActivity(csdAcitvity);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
            public void setLeftTempStateVisibility(String leftTempStateContents, int visibility) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(leftTempStateContents);
                    parcelObtain.writeInt(visibility);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setLeftTempStateVisibility(leftTempStateContents, visibility);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
            public void setPsdActivity(IBinder psdAcitvity) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(psdAcitvity);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setPsdActivity(psdAcitvity);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
            public void setPsdStatusVisibility(int visibility) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(visibility);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setPsdStatusVisibility(visibility);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
            public void showDialogByName(String dialogName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(dialogName);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().showDialogByName(dialogName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.systemui.IStatusBarService
            public void unRegisterStatusBarModeChangeListener(IStatusBarModeChangeListener listener, String pkg) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(pkg);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterStatusBarModeChangeListener(listener, pkg);
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

        public static IStatusBarService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IStatusBarService)) ? new Proxy(obj) : (IStatusBarService) iInterfaceQueryLocalInterface;
        }

        public static IStatusBarService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IStatusBarService impl) {
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
            if (code == 1598968902) {
                reply.writeString(DESCRIPTOR);
                return true;
            }
            switch (code) {
                case 1:
                    data.enforceInterface(DESCRIPTOR);
                    showDialogByName(data.readString());
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    setPsdStatusVisibility(data.readInt());
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    setCsdActivity(data.readStrongBinder());
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    setPsdActivity(data.readStrongBinder());
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    closeDialogByName(data.readString());
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    int psdStatusBarVisibility = getPsdStatusBarVisibility();
                    reply.writeNoException();
                    reply.writeInt(psdStatusBarVisibility);
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    setLeftTempStateVisibility(data.readString(), data.readInt());
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    Bundle statusBarWindowMode = getStatusBarWindowMode();
                    reply.writeNoException();
                    if (statusBarWindowMode != null) {
                        reply.writeInt(1);
                        statusBarWindowMode.writeToParcel(reply, 1);
                    } else {
                        reply.writeInt(0);
                    }
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    registerStatusBarModeChangeListener(IStatusBarModeChangeListener.Stub.asInterface(data.readStrongBinder()), data.readString());
                    reply.writeNoException();
                    return true;
                case 10:
                    data.enforceInterface(DESCRIPTOR);
                    unRegisterStatusBarModeChangeListener(IStatusBarModeChangeListener.Stub.asInterface(data.readStrongBinder()), data.readString());
                    reply.writeNoException();
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void closeDialogByName(String dialogName) throws RemoteException;

    int getPsdStatusBarVisibility() throws RemoteException;

    Bundle getStatusBarWindowMode() throws RemoteException;

    void registerStatusBarModeChangeListener(IStatusBarModeChangeListener listener, String pkg) throws RemoteException;

    void setCsdActivity(IBinder csdAcitvity) throws RemoteException;

    void setLeftTempStateVisibility(String leftTempStateContents, int visibility) throws RemoteException;

    void setPsdActivity(IBinder psdAcitvity) throws RemoteException;

    void setPsdStatusVisibility(int visibility) throws RemoteException;

    void showDialogByName(String dialogName) throws RemoteException;

    void unRegisterStatusBarModeChangeListener(IStatusBarModeChangeListener listener, String pkg) throws RemoteException;
}
