package com.geely.lib.oneosapi.mediacenter;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.bean.Frequency;
import com.geely.lib.oneosapi.mediacenter.listener.IRadioStateListener;
import java.util.List;

/* loaded from: classes.dex */
public interface IRadioManager extends IInterface {

    public static class Default implements IRadioManager {
        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean addCollectionStation(int frequency, boolean ifdelete) throws RemoteException {
            return false;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean closeRadio(IRadioStateListener cb) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public int getBand() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public List<Frequency> getCollectionStationsList() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public int getFrequency() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public List<Frequency> getRadioStationsNameList() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public int getRadioStatus() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public List<Frequency> getScanStationsList() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean isFirstUseRadio() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean openPsdRadioAsync(IRadioStateListener cb) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean openRadioAsync(IRadioStateListener cb) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean pause() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean play() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public int playRadioFavor() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean scanAsync() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean seekAsync(int direction) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean setBandAsync(int newBand) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean setFrequency(int frequency) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean startCarouselPlay(int time) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean stopCarouselPlay() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean stopSeekOrScanAsync() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean toNextStation(int direction) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
        public boolean tuneAsync(int direction) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IRadioManager {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.IRadioManager";
        public static final int TRANSACTION_addCollectionStation = 20;
        public static final int TRANSACTION_closeRadio = 2;
        public static final int TRANSACTION_getBand = 12;
        public static final int TRANSACTION_getCollectionStationsList = 16;
        public static final int TRANSACTION_getFrequency = 13;
        public static final int TRANSACTION_getRadioStationsNameList = 17;
        public static final int TRANSACTION_getRadioStatus = 21;
        public static final int TRANSACTION_getScanStationsList = 14;
        public static final int TRANSACTION_isFirstUseRadio = 15;
        public static final int TRANSACTION_openPsdRadioAsync = 23;
        public static final int TRANSACTION_openRadioAsync = 1;
        public static final int TRANSACTION_pause = 19;
        public static final int TRANSACTION_play = 18;
        public static final int TRANSACTION_playRadioFavor = 22;
        public static final int TRANSACTION_scanAsync = 6;
        public static final int TRANSACTION_seekAsync = 5;
        public static final int TRANSACTION_setBandAsync = 3;
        public static final int TRANSACTION_setFrequency = 4;
        public static final int TRANSACTION_startCarouselPlay = 10;
        public static final int TRANSACTION_stopCarouselPlay = 11;
        public static final int TRANSACTION_stopSeekOrScanAsync = 7;
        public static final int TRANSACTION_toNextStation = 9;
        public static final int TRANSACTION_tuneAsync = 8;

        public static class Proxy implements IRadioManager {
            public static IRadioManager sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean addCollectionStation(int i, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().addCollectionStation(i, z);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean closeRadio(IRadioStateListener cb) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(cb != null ? cb.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().closeRadio(cb);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public int getBand() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBand();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public List<Frequency> getCollectionStationsList() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCollectionStationsList();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(Frequency.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public int getFrequency() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getFrequency();
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

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public List<Frequency> getRadioStationsNameList() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRadioStationsNameList();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(Frequency.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public int getRadioStatus() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRadioStatus();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public List<Frequency> getScanStationsList() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getScanStationsList();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(Frequency.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean isFirstUseRadio() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isFirstUseRadio();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean openPsdRadioAsync(IRadioStateListener cb) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(cb != null ? cb.asBinder() : null);
                    if (!this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().openPsdRadioAsync(cb);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean openRadioAsync(IRadioStateListener cb) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(cb != null ? cb.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().openRadioAsync(cb);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean pause() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().pause();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean play() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().play();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public int playRadioFavor() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().playRadioFavor();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean scanAsync() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().scanAsync();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean seekAsync(int direction) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(direction);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().seekAsync(direction);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean setBandAsync(int newBand) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(newBand);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setBandAsync(newBand);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean setFrequency(int frequency) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(frequency);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().setFrequency(frequency);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean startCarouselPlay(int time) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(time);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().startCarouselPlay(time);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean stopCarouselPlay() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().stopCarouselPlay();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean stopSeekOrScanAsync() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().stopSeekOrScanAsync();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean toNextStation(int direction) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(direction);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().toNextStation(direction);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IRadioManager
            public boolean tuneAsync(int direction) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(direction);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().tuneAsync(direction);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IRadioManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRadioManager)) ? new Proxy(obj) : (IRadioManager) iInterfaceQueryLocalInterface;
        }

        public static IRadioManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IRadioManager impl) {
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
                    boolean zOpenRadioAsync = openRadioAsync(IRadioStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zOpenRadioAsync ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zCloseRadio = closeRadio(IRadioStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zCloseRadio ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean bandAsync = setBandAsync(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(bandAsync ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean frequency = setFrequency(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(frequency ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSeekAsync = seekAsync(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSeekAsync ? 1 : 0);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zScanAsync = scanAsync();
                    parcel2.writeNoException();
                    parcel2.writeInt(zScanAsync ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStopSeekOrScanAsync = stopSeekOrScanAsync();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStopSeekOrScanAsync ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zTuneAsync = tuneAsync(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zTuneAsync ? 1 : 0);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean nextStation = toNextStation(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(nextStation ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStartCarouselPlay = startCarouselPlay(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartCarouselPlay ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStopCarouselPlay = stopCarouselPlay();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStopCarouselPlay ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int band = getBand();
                    parcel2.writeNoException();
                    parcel2.writeInt(band);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int frequency2 = getFrequency();
                    parcel2.writeNoException();
                    parcel2.writeInt(frequency2);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<Frequency> scanStationsList = getScanStationsList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(scanStationsList);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsFirstUseRadio = isFirstUseRadio();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsFirstUseRadio ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<Frequency> collectionStationsList = getCollectionStationsList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(collectionStationsList);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<Frequency> radioStationsNameList = getRadioStationsNameList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(radioStationsNameList);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPlay = play();
                    parcel2.writeNoException();
                    parcel2.writeInt(zPlay ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zPause = pause();
                    parcel2.writeNoException();
                    parcel2.writeInt(zPause ? 1 : 0);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddCollectionStation = addCollectionStation(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddCollectionStation ? 1 : 0);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    int radioStatus = getRadioStatus();
                    parcel2.writeNoException();
                    parcel2.writeInt(radioStatus);
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iPlayRadioFavor = playRadioFavor();
                    parcel2.writeNoException();
                    parcel2.writeInt(iPlayRadioFavor);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zOpenPsdRadioAsync = openPsdRadioAsync(IRadioStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zOpenPsdRadioAsync ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean addCollectionStation(int frequency, boolean ifdelete) throws RemoteException;

    boolean closeRadio(IRadioStateListener cb) throws RemoteException;

    int getBand() throws RemoteException;

    List<Frequency> getCollectionStationsList() throws RemoteException;

    int getFrequency() throws RemoteException;

    List<Frequency> getRadioStationsNameList() throws RemoteException;

    int getRadioStatus() throws RemoteException;

    List<Frequency> getScanStationsList() throws RemoteException;

    boolean isFirstUseRadio() throws RemoteException;

    boolean openPsdRadioAsync(IRadioStateListener cb) throws RemoteException;

    boolean openRadioAsync(IRadioStateListener cb) throws RemoteException;

    boolean pause() throws RemoteException;

    boolean play() throws RemoteException;

    int playRadioFavor() throws RemoteException;

    boolean scanAsync() throws RemoteException;

    boolean seekAsync(int direction) throws RemoteException;

    boolean setBandAsync(int newBand) throws RemoteException;

    boolean setFrequency(int frequency) throws RemoteException;

    boolean startCarouselPlay(int time) throws RemoteException;

    boolean stopCarouselPlay() throws RemoteException;

    boolean stopSeekOrScanAsync() throws RemoteException;

    boolean toNextStation(int direction) throws RemoteException;

    boolean tuneAsync(int direction) throws RemoteException;
}
