package com.geely.lib.oneosapi.mediacenter.listener;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.bean.Frequency;
import java.util.List;

/* loaded from: classes.dex */
public interface IRadioStateListener extends IInterface {

    public static class Default implements IRadioStateListener {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCarouselPlayStart(boolean succeeded) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCarouserPlayStop(int frequency) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCarouserWaiting(int frequency, long leftTime) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCollectionStationListChanged(List<Frequency> frequencyList) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCollectionStationListReachesMax() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCurrentBand(int band) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onCurrentFrequency(int frequency) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onOpenRadioResult(boolean succeeded) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onRadioClosed(boolean succeeded) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onRadioError(int errorCode) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onRadioMuteState(int state) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onRadioNameListChanged(List<Frequency> frequencyList) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onRadioStatusChanged(int status) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onScanStarted(int direction) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onScanStationListChanged(List<Frequency> frequencyList) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onScanStopped(boolean succeeded) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onSeekStarted(int direction) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onSeekStopped(boolean succeeded) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onSignalQualityChanged(int level) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
        public void onStationFrequency(int frequency) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IRadioStateListener {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener";
        public static final int TRANSACTION_onCarouselPlayStart = 11;
        public static final int TRANSACTION_onCarouserPlayStop = 12;
        public static final int TRANSACTION_onCarouserWaiting = 13;
        public static final int TRANSACTION_onCollectionStationListChanged = 16;
        public static final int TRANSACTION_onCollectionStationListReachesMax = 15;
        public static final int TRANSACTION_onCurrentBand = 3;
        public static final int TRANSACTION_onCurrentFrequency = 4;
        public static final int TRANSACTION_onOpenRadioResult = 1;
        public static final int TRANSACTION_onRadioClosed = 2;
        public static final int TRANSACTION_onRadioError = 20;
        public static final int TRANSACTION_onRadioMuteState = 19;
        public static final int TRANSACTION_onRadioNameListChanged = 14;
        public static final int TRANSACTION_onRadioStatusChanged = 18;
        public static final int TRANSACTION_onScanStarted = 8;
        public static final int TRANSACTION_onScanStationListChanged = 17;
        public static final int TRANSACTION_onScanStopped = 9;
        public static final int TRANSACTION_onSeekStarted = 6;
        public static final int TRANSACTION_onSeekStopped = 7;
        public static final int TRANSACTION_onSignalQualityChanged = 10;
        public static final int TRANSACTION_onStationFrequency = 5;

        public static class Proxy implements IRadioStateListener {
            public static IRadioStateListener sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onCarouselPlayStart(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onCarouselPlayStart(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onCarouserPlayStop(int frequency) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(frequency);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onCarouserPlayStop(frequency);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onCarouserWaiting(int frequency, long leftTime) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(frequency);
                    parcelObtain.writeLong(leftTime);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onCarouserWaiting(frequency, leftTime);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onCollectionStationListChanged(List<Frequency> frequencyList) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(frequencyList);
                    if (this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onCollectionStationListChanged(frequencyList);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onCollectionStationListReachesMax() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onCollectionStationListReachesMax();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onCurrentBand(int band) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(band);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onCurrentBand(band);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onCurrentFrequency(int frequency) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(frequency);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onCurrentFrequency(frequency);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onOpenRadioResult(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onOpenRadioResult(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onRadioClosed(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onRadioClosed(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onRadioError(int errorCode) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(errorCode);
                    if (this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onRadioError(errorCode);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onRadioMuteState(int state) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(state);
                    if (this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onRadioMuteState(state);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onRadioNameListChanged(List<Frequency> frequencyList) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(frequencyList);
                    if (this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onRadioNameListChanged(frequencyList);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onRadioStatusChanged(int status) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(status);
                    if (this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onRadioStatusChanged(status);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onScanStarted(int direction) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(direction);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onScanStarted(direction);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onScanStationListChanged(List<Frequency> frequencyList) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(frequencyList);
                    if (this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onScanStationListChanged(frequencyList);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onScanStopped(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onScanStopped(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onSeekStarted(int direction) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(direction);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSeekStarted(direction);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onSeekStopped(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSeekStopped(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onSignalQualityChanged(int level) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(level);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onSignalQualityChanged(level);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener
            public void onStationFrequency(int frequency) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(frequency);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onStationFrequency(frequency);
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

        public static IRadioStateListener asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRadioStateListener)) ? new Proxy(obj) : (IRadioStateListener) iInterfaceQueryLocalInterface;
        }

        public static IRadioStateListener getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IRadioStateListener impl) {
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
                    onOpenRadioResult(data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                case 2:
                    data.enforceInterface(DESCRIPTOR);
                    onRadioClosed(data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                case 3:
                    data.enforceInterface(DESCRIPTOR);
                    onCurrentBand(data.readInt());
                    reply.writeNoException();
                    return true;
                case 4:
                    data.enforceInterface(DESCRIPTOR);
                    onCurrentFrequency(data.readInt());
                    reply.writeNoException();
                    return true;
                case 5:
                    data.enforceInterface(DESCRIPTOR);
                    onStationFrequency(data.readInt());
                    reply.writeNoException();
                    return true;
                case 6:
                    data.enforceInterface(DESCRIPTOR);
                    onSeekStarted(data.readInt());
                    reply.writeNoException();
                    return true;
                case 7:
                    data.enforceInterface(DESCRIPTOR);
                    onSeekStopped(data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                case 8:
                    data.enforceInterface(DESCRIPTOR);
                    onScanStarted(data.readInt());
                    reply.writeNoException();
                    return true;
                case 9:
                    data.enforceInterface(DESCRIPTOR);
                    onScanStopped(data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                case 10:
                    data.enforceInterface(DESCRIPTOR);
                    onSignalQualityChanged(data.readInt());
                    reply.writeNoException();
                    return true;
                case 11:
                    data.enforceInterface(DESCRIPTOR);
                    onCarouselPlayStart(data.readInt() != 0);
                    reply.writeNoException();
                    return true;
                case 12:
                    data.enforceInterface(DESCRIPTOR);
                    onCarouserPlayStop(data.readInt());
                    reply.writeNoException();
                    return true;
                case 13:
                    data.enforceInterface(DESCRIPTOR);
                    onCarouserWaiting(data.readInt(), data.readLong());
                    reply.writeNoException();
                    return true;
                case 14:
                    data.enforceInterface(DESCRIPTOR);
                    onRadioNameListChanged(data.createTypedArrayList(Frequency.CREATOR));
                    reply.writeNoException();
                    return true;
                case 15:
                    data.enforceInterface(DESCRIPTOR);
                    onCollectionStationListReachesMax();
                    reply.writeNoException();
                    return true;
                case 16:
                    data.enforceInterface(DESCRIPTOR);
                    onCollectionStationListChanged(data.createTypedArrayList(Frequency.CREATOR));
                    reply.writeNoException();
                    return true;
                case 17:
                    data.enforceInterface(DESCRIPTOR);
                    onScanStationListChanged(data.createTypedArrayList(Frequency.CREATOR));
                    reply.writeNoException();
                    return true;
                case 18:
                    data.enforceInterface(DESCRIPTOR);
                    onRadioStatusChanged(data.readInt());
                    reply.writeNoException();
                    return true;
                case 19:
                    data.enforceInterface(DESCRIPTOR);
                    onRadioMuteState(data.readInt());
                    reply.writeNoException();
                    return true;
                case 20:
                    data.enforceInterface(DESCRIPTOR);
                    onRadioError(data.readInt());
                    reply.writeNoException();
                    return true;
                default:
                    return super.onTransact(code, data, reply, flags);
            }
        }
    }

    void onCarouselPlayStart(boolean succeeded) throws RemoteException;

    void onCarouserPlayStop(int frequency) throws RemoteException;

    void onCarouserWaiting(int frequency, long leftTime) throws RemoteException;

    void onCollectionStationListChanged(List<Frequency> frequencyList) throws RemoteException;

    void onCollectionStationListReachesMax() throws RemoteException;

    void onCurrentBand(int band) throws RemoteException;

    void onCurrentFrequency(int frequency) throws RemoteException;

    void onOpenRadioResult(boolean succeeded) throws RemoteException;

    void onRadioClosed(boolean succeeded) throws RemoteException;

    void onRadioError(int errorCode) throws RemoteException;

    void onRadioMuteState(int state) throws RemoteException;

    void onRadioNameListChanged(List<Frequency> frequencyList) throws RemoteException;

    void onRadioStatusChanged(int status) throws RemoteException;

    void onScanStarted(int direction) throws RemoteException;

    void onScanStationListChanged(List<Frequency> frequencyList) throws RemoteException;

    void onScanStopped(boolean succeeded) throws RemoteException;

    void onSeekStarted(int direction) throws RemoteException;

    void onSeekStopped(boolean succeeded) throws RemoteException;

    void onSignalQualityChanged(int level) throws RemoteException;

    void onStationFrequency(int frequency) throws RemoteException;
}
