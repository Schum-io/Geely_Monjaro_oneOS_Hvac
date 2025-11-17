package com.geely.lib.oneosapi.smart;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.smart.IAirConditionerInfo;
import com.geely.lib.oneosapi.smart.IAirPurificationInfo;
import com.geely.lib.oneosapi.smart.IElectricSocketInfo;
import com.geely.lib.oneosapi.smart.ILightInfo;
import com.geely.lib.oneosapi.smart.ISceneInfo;
import com.geely.lib.oneosapi.smart.ISweepingRobotInfo;

/* loaded from: classes.dex */
public interface ISmartCallback extends IInterface {

    public static class Default implements ISmartCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartCallback
        public void onAirConditionerInfoChanged(IAirConditionerInfo airConditionInfo) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartCallback
        public void onAirPurificationInfoChanged(IAirPurificationInfo airPurificationInfo) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartCallback
        public void onElectricSocketInfoChanged(IElectricSocketInfo electricSocketInfo) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartCallback
        public void onGoHomeModeChanged(ISceneInfo sceneInfo) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartCallback
        public void onLeaveHomeModeChanged(ISceneInfo sceneInfo) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartCallback
        public void onLightInfoChanged(ILightInfo lightInfo) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.smart.ISmartCallback
        public void onSweepingRobotInfoChanged(ISweepingRobotInfo sweepRobotInfo) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ISmartCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.smart.ISmartCallback";
        public static final int TRANSACTION_onAirConditionerInfoChanged = 1;
        public static final int TRANSACTION_onAirPurificationInfoChanged = 2;
        public static final int TRANSACTION_onElectricSocketInfoChanged = 3;
        public static final int TRANSACTION_onGoHomeModeChanged = 6;
        public static final int TRANSACTION_onLeaveHomeModeChanged = 7;
        public static final int TRANSACTION_onLightInfoChanged = 4;
        public static final int TRANSACTION_onSweepingRobotInfoChanged = 5;

        public static class Proxy implements ISmartCallback {
            public static ISmartCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.smart.ISmartCallback
            public void onAirConditionerInfoChanged(IAirConditionerInfo airConditionInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(airConditionInfo != null ? airConditionInfo.asBinder() : null);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAirConditionerInfoChanged(airConditionInfo);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartCallback
            public void onAirPurificationInfoChanged(IAirPurificationInfo airPurificationInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(airPurificationInfo != null ? airPurificationInfo.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onAirPurificationInfoChanged(airPurificationInfo);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartCallback
            public void onElectricSocketInfoChanged(IElectricSocketInfo electricSocketInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(electricSocketInfo != null ? electricSocketInfo.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onElectricSocketInfoChanged(electricSocketInfo);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartCallback
            public void onGoHomeModeChanged(ISceneInfo sceneInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(sceneInfo != null ? sceneInfo.asBinder() : null);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onGoHomeModeChanged(sceneInfo);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartCallback
            public void onLeaveHomeModeChanged(ISceneInfo sceneInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(sceneInfo != null ? sceneInfo.asBinder() : null);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onLeaveHomeModeChanged(sceneInfo);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartCallback
            public void onLightInfoChanged(ILightInfo lightInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(lightInfo != null ? lightInfo.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onLightInfoChanged(lightInfo);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.smart.ISmartCallback
            public void onSweepingRobotInfoChanged(ISweepingRobotInfo sweepRobotInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(sweepRobotInfo != null ? sweepRobotInfo.asBinder() : null);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSweepingRobotInfoChanged(sweepRobotInfo);
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

        public static ISmartCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ISmartCallback)) ? new Proxy(obj) : (ISmartCallback) iInterfaceQueryLocalInterface;
        }

        public static ISmartCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ISmartCallback impl) {
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
                    onAirConditionerInfoChanged(IAirConditionerInfo.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    onAirPurificationInfoChanged(IAirPurificationInfo.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    onElectricSocketInfoChanged(IElectricSocketInfo.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    onLightInfoChanged(ILightInfo.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    onSweepingRobotInfoChanged(ISweepingRobotInfo.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    onGoHomeModeChanged(ISceneInfo.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    onLeaveHomeModeChanged(ISceneInfo.Stub.asInterface(data.readStrongBinder()));
                    reply.writeNoException();
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void onAirConditionerInfoChanged(IAirConditionerInfo airConditionInfo) throws RemoteException;

    void onAirPurificationInfoChanged(IAirPurificationInfo airPurificationInfo) throws RemoteException;

    void onElectricSocketInfoChanged(IElectricSocketInfo electricSocketInfo) throws RemoteException;

    void onGoHomeModeChanged(ISceneInfo sceneInfo) throws RemoteException;

    void onLeaveHomeModeChanged(ISceneInfo sceneInfo) throws RemoteException;

    void onLightInfoChanged(ILightInfo lightInfo) throws RemoteException;

    void onSweepingRobotInfoChanged(ISweepingRobotInfo sweepRobotInfo) throws RemoteException;
}
