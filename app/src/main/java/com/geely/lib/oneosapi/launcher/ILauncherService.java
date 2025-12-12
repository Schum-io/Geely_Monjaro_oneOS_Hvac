package com.geely.lib.oneosapi.launcher;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.launcher.listener.IEnterOrExitHomePageChangeListener;
import com.geely.lib.oneosapi.launcher.listener.ILauncherPageSwitchListener;
import com.geely.lib.oneosapi.launcher.listener.IMapWidgetChangeListener;
import com.geely.lib.oneosapi.launcher.listener.IWeatherWidgetChangeListener;
import com.geely.lib.oneosapi.launcher.listener.IWidgetListDisplayChangeListener;

/* loaded from: classes.dex */
public interface ILauncherService extends IInterface {

    public static class Default implements ILauncherService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void closeApplets(String appletsKey) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void hvacMassageDisplay(boolean isShow, boolean isMain) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public boolean isWidgetsShowing(boolean isPsd) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void mediaSourceListDisplay(boolean show, boolean isPsd) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void openApplets(String appletsKey) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void registerEnterOrExitHomePageChangeListener(IEnterOrExitHomePageChangeListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void registerLauncherPageSwitchListener(ILauncherPageSwitchListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void registerMapWidgetListener(IMapWidgetChangeListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void registerWeatherWidgetListener(IWeatherWidgetChangeListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void registerWidgetListDisplayChangeListener(IWidgetListDisplayChangeListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void selectWidgetMap(String classname) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void showPsdMediaControlWidget(boolean isShow) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void startGlobalSearch(String keyWord) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void togglePsdWidget() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void toggleWidget() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void unRegisterEnterOrExitHomePageChangeListener(IEnterOrExitHomePageChangeListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void unRegisterLauncherPageSwitchListener(ILauncherPageSwitchListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void unRegisterMapWidgetListener(IMapWidgetChangeListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void unRegisterWeatherWidgetListener(IWeatherWidgetChangeListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.launcher.ILauncherService
        public void unRegisterWidgetListDisplayChangeListener(IWidgetListDisplayChangeListener listener) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ILauncherService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.launcher.ILauncherService";
        public static final int TRANSACTION_closeApplets = 18;
        public static final int TRANSACTION_hvacMassageDisplay = 19;
        public static final int TRANSACTION_isWidgetsShowing = 20;
        public static final int TRANSACTION_mediaSourceListDisplay = 3;
        public static final int TRANSACTION_openApplets = 17;
        public static final int TRANSACTION_registerEnterOrExitHomePageChangeListener = 8;
        public static final int TRANSACTION_registerLauncherPageSwitchListener = 14;
        public static final int TRANSACTION_registerMapWidgetListener = 4;
        public static final int TRANSACTION_registerWeatherWidgetListener = 6;
        public static final int TRANSACTION_registerWidgetListDisplayChangeListener = 12;
        public static final int TRANSACTION_selectWidgetMap = 2;
        public static final int TRANSACTION_showPsdMediaControlWidget = 10;
        public static final int TRANSACTION_startGlobalSearch = 16;
        public static final int TRANSACTION_togglePsdWidget = 11;
        public static final int TRANSACTION_toggleWidget = 1;
        public static final int TRANSACTION_unRegisterEnterOrExitHomePageChangeListener = 9;
        public static final int TRANSACTION_unRegisterLauncherPageSwitchListener = 15;
        public static final int TRANSACTION_unRegisterMapWidgetListener = 5;
        public static final int TRANSACTION_unRegisterWeatherWidgetListener = 7;
        public static final int TRANSACTION_unRegisterWidgetListDisplayChangeListener = 13;

        public static class Proxy implements ILauncherService {
            public static ILauncherService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void closeApplets(String appletsKey) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(appletsKey);
                    if (this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().closeApplets(appletsKey);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void hvacMassageDisplay(boolean z, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().hvacMassageDisplay(z, z2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public boolean isWidgetsShowing(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isWidgetsShowing(z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void mediaSourceListDisplay(boolean z, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().mediaSourceListDisplay(z, z2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void openApplets(String appletsKey) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(appletsKey);
                    if (this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().openApplets(appletsKey);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void registerEnterOrExitHomePageChangeListener(IEnterOrExitHomePageChangeListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerEnterOrExitHomePageChangeListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void registerLauncherPageSwitchListener(ILauncherPageSwitchListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerLauncherPageSwitchListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void registerMapWidgetListener(IMapWidgetChangeListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerMapWidgetListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void registerWeatherWidgetListener(IWeatherWidgetChangeListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerWeatherWidgetListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void registerWidgetListDisplayChangeListener(IWidgetListDisplayChangeListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerWidgetListDisplayChangeListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void selectWidgetMap(String classname) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(classname);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().selectWidgetMap(classname);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void showPsdMediaControlWidget(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().showPsdMediaControlWidget(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void startGlobalSearch(String keyWord) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(keyWord);
                    if (this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().startGlobalSearch(keyWord);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void togglePsdWidget() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().togglePsdWidget();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void toggleWidget() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().toggleWidget();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void unRegisterEnterOrExitHomePageChangeListener(IEnterOrExitHomePageChangeListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterEnterOrExitHomePageChangeListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void unRegisterLauncherPageSwitchListener(ILauncherPageSwitchListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterLauncherPageSwitchListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void unRegisterMapWidgetListener(IMapWidgetChangeListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterMapWidgetListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void unRegisterWeatherWidgetListener(IWeatherWidgetChangeListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterWeatherWidgetListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.launcher.ILauncherService
            public void unRegisterWidgetListDisplayChangeListener(IWidgetListDisplayChangeListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterWidgetListDisplayChangeListener(listener);
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

        public static ILauncherService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ILauncherService)) ? new Proxy(obj) : (ILauncherService) iInterfaceQueryLocalInterface;
        }

        public static ILauncherService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ILauncherService impl) {
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
            switch (i) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    toggleWidget();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    selectWidgetMap(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    mediaSourceListDisplay(parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerMapWidgetListener(IMapWidgetChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterMapWidgetListener(IMapWidgetChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerWeatherWidgetListener(IWeatherWidgetChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterWeatherWidgetListener(IWeatherWidgetChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerEnterOrExitHomePageChangeListener(IEnterOrExitHomePageChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterEnterOrExitHomePageChangeListener(IEnterOrExitHomePageChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    showPsdMediaControlWidget(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    togglePsdWidget();
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerWidgetListDisplayChangeListener(IWidgetListDisplayChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterWidgetListDisplayChangeListener(IWidgetListDisplayChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerLauncherPageSwitchListener(ILauncherPageSwitchListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterLauncherPageSwitchListener(ILauncherPageSwitchListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    startGlobalSearch(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    openApplets(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    closeApplets(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    hvacMassageDisplay(parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsWidgetsShowing = isWidgetsShowing(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsWidgetsShowing ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void closeApplets(String appletsKey) throws RemoteException;

    void hvacMassageDisplay(boolean isShow, boolean isMain) throws RemoteException;

    boolean isWidgetsShowing(boolean isPsd) throws RemoteException;

    void mediaSourceListDisplay(boolean show, boolean isPsd) throws RemoteException;

    void openApplets(String appletsKey) throws RemoteException;

    void registerEnterOrExitHomePageChangeListener(IEnterOrExitHomePageChangeListener listener) throws RemoteException;

    void registerLauncherPageSwitchListener(ILauncherPageSwitchListener listener) throws RemoteException;

    void registerMapWidgetListener(IMapWidgetChangeListener listener) throws RemoteException;

    void registerWeatherWidgetListener(IWeatherWidgetChangeListener listener) throws RemoteException;

    void registerWidgetListDisplayChangeListener(IWidgetListDisplayChangeListener listener) throws RemoteException;

    void selectWidgetMap(String classname) throws RemoteException;

    void showPsdMediaControlWidget(boolean isShow) throws RemoteException;

    void startGlobalSearch(String keyWord) throws RemoteException;

    void togglePsdWidget() throws RemoteException;

    void toggleWidget() throws RemoteException;

    void unRegisterEnterOrExitHomePageChangeListener(IEnterOrExitHomePageChangeListener listener) throws RemoteException;

    void unRegisterLauncherPageSwitchListener(ILauncherPageSwitchListener listener) throws RemoteException;

    void unRegisterMapWidgetListener(IMapWidgetChangeListener listener) throws RemoteException;

    void unRegisterWeatherWidgetListener(IWeatherWidgetChangeListener listener) throws RemoteException;

    void unRegisterWidgetListDisplayChangeListener(IWidgetListDisplayChangeListener listener) throws RemoteException;
}
