package com.geely.lib.oneosapi.mediacenter;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.mediacenter.ICarSpeedManager;
import com.geely.lib.oneosapi.mediacenter.IHeartbeatPacket;
import com.geely.lib.oneosapi.mediacenter.IMusicManager;
import com.geely.lib.oneosapi.mediacenter.IRadioManager;
import com.geely.lib.oneosapi.mediacenter.listener.IRebootPlayChangeListener;
import com.geely.lib.oneosapi.mediacenter.listener.ISourceStateListener;

/* loaded from: classes.dex */
public interface IMediaCenter extends IInterface {

    public static class Default implements IMediaCenter {
        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public void addPsdSourceStateListener(ISourceStateListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public void addRebootPlayChangeListener(IRebootPlayChangeListener listener) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public void addSourceStateListener(ISourceStateListener listener) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public String getAppPackageName(int audioSource, int appSource) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public ICarSpeedManager getCarManager() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public int getCurrentAppSource() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public int getCurrentAudioSource() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public int getCurrentPsdAppSource() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public int getCurrentPsdAudioSource() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public int getFocusedAppSource() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public int getFocusedAudioSource() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public IMusicManager getMusicManager() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public int getPsdFocusedAppSource() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public int getPsdFocusedAudioSource() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public IRadioManager getRadioManager() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public int getRebootPlay() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public boolean isPsdBtAudioSource(int audioSource, int appSource) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public boolean isPsdBtDeviceConnected() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public void requestAudioSource(int audioSource, int appSource) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public void setHeartbeatPacket(IHeartbeatPacket packet) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public void setPsdBtAudioSource(int audioSource, int appSource, boolean enable) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public void setPsdBtChannel(int app, boolean enable) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
        public void setRebootPlay(int rebootPlayValue) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IMediaCenter {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.mediacenter.IMediaCenter";
        public static final int TRANSACTION_addPsdSourceStateListener = 9;
        public static final int TRANSACTION_addRebootPlayChangeListener = 23;
        public static final int TRANSACTION_addSourceStateListener = 4;
        public static final int TRANSACTION_getAppPackageName = 20;
        public static final int TRANSACTION_getCarManager = 7;
        public static final int TRANSACTION_getCurrentAppSource = 2;
        public static final int TRANSACTION_getCurrentAudioSource = 1;
        public static final int TRANSACTION_getCurrentPsdAppSource = 13;
        public static final int TRANSACTION_getCurrentPsdAudioSource = 12;
        public static final int TRANSACTION_getFocusedAppSource = 17;
        public static final int TRANSACTION_getFocusedAudioSource = 16;
        public static final int TRANSACTION_getMusicManager = 5;
        public static final int TRANSACTION_getPsdFocusedAppSource = 19;
        public static final int TRANSACTION_getPsdFocusedAudioSource = 18;
        public static final int TRANSACTION_getRadioManager = 6;
        public static final int TRANSACTION_getRebootPlay = 22;
        public static final int TRANSACTION_isPsdBtAudioSource = 10;
        public static final int TRANSACTION_isPsdBtDeviceConnected = 15;
        public static final int TRANSACTION_requestAudioSource = 3;
        public static final int TRANSACTION_setHeartbeatPacket = 8;
        public static final int TRANSACTION_setPsdBtAudioSource = 11;
        public static final int TRANSACTION_setPsdBtChannel = 14;
        public static final int TRANSACTION_setRebootPlay = 21;

        public static class Proxy implements IMediaCenter {
            public static IMediaCenter sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public void addPsdSourceStateListener(ISourceStateListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addPsdSourceStateListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public void addRebootPlayChangeListener(IRebootPlayChangeListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addRebootPlayChangeListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public void addSourceStateListener(ISourceStateListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().addSourceStateListener(listener);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public String getAppPackageName(int audioSource, int appSource) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(audioSource);
                    parcelObtain.writeInt(appSource);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAppPackageName(audioSource, appSource);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public ICarSpeedManager getCarManager() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarManager();
                    }
                    parcelObtain2.readException();
                    return ICarSpeedManager.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public int getCurrentAppSource() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentAppSource();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public int getCurrentAudioSource() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentAudioSource();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public int getCurrentPsdAppSource() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentPsdAppSource();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public int getCurrentPsdAudioSource() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCurrentPsdAudioSource();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public int getFocusedAppSource() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getFocusedAppSource();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public int getFocusedAudioSource() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getFocusedAudioSource();
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

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public IMusicManager getMusicManager() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMusicManager();
                    }
                    parcelObtain2.readException();
                    return IMusicManager.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public int getPsdFocusedAppSource() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPsdFocusedAppSource();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public int getPsdFocusedAudioSource() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPsdFocusedAudioSource();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public IRadioManager getRadioManager() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRadioManager();
                    }
                    parcelObtain2.readException();
                    return IRadioManager.Stub.asInterface(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public int getRebootPlay() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRebootPlay();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public boolean isPsdBtAudioSource(int audioSource, int appSource) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(audioSource);
                    parcelObtain.writeInt(appSource);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isPsdBtAudioSource(audioSource, appSource);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public boolean isPsdBtDeviceConnected() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isPsdBtDeviceConnected();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public void requestAudioSource(int audioSource, int appSource) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(audioSource);
                    parcelObtain.writeInt(appSource);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().requestAudioSource(audioSource, appSource);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public void setHeartbeatPacket(IHeartbeatPacket packet) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(packet != null ? packet.asBinder() : null);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setHeartbeatPacket(packet);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public void setPsdBtAudioSource(int i, int i2, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setPsdBtAudioSource(i, i2, z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public void setPsdBtChannel(int i, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setPsdBtChannel(i, z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.mediacenter.IMediaCenter
            public void setRebootPlay(int rebootPlayValue) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(rebootPlayValue);
                    if (this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setRebootPlay(rebootPlayValue);
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

        public static IMediaCenter asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IMediaCenter)) ? new Proxy(obj) : (IMediaCenter) iInterfaceQueryLocalInterface;
        }

        public static IMediaCenter getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IMediaCenter impl) {
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
                    int currentAudioSource = getCurrentAudioSource();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentAudioSource);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentAppSource = getCurrentAppSource();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentAppSource);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    requestAudioSource(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    addSourceStateListener(ISourceStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    IMusicManager musicManager = getMusicManager();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(musicManager != null ? musicManager.asBinder() : null);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    IRadioManager radioManager = getRadioManager();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(radioManager != null ? radioManager.asBinder() : null);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    ICarSpeedManager carManager = getCarManager();
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(carManager != null ? carManager.asBinder() : null);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    setHeartbeatPacket(IHeartbeatPacket.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    addPsdSourceStateListener(ISourceStateListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPsdBtAudioSource = isPsdBtAudioSource(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPsdBtAudioSource ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPsdBtAudioSource(parcel.readInt(), parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentPsdAudioSource = getCurrentPsdAudioSource();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentPsdAudioSource);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    int currentPsdAppSource = getCurrentPsdAppSource();
                    parcel2.writeNoException();
                    parcel2.writeInt(currentPsdAppSource);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    setPsdBtChannel(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsPsdBtDeviceConnected = isPsdBtDeviceConnected();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsPsdBtDeviceConnected ? 1 : 0);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    int focusedAudioSource = getFocusedAudioSource();
                    parcel2.writeNoException();
                    parcel2.writeInt(focusedAudioSource);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int focusedAppSource = getFocusedAppSource();
                    parcel2.writeNoException();
                    parcel2.writeInt(focusedAppSource);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    int psdFocusedAudioSource = getPsdFocusedAudioSource();
                    parcel2.writeNoException();
                    parcel2.writeInt(psdFocusedAudioSource);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    int psdFocusedAppSource = getPsdFocusedAppSource();
                    parcel2.writeNoException();
                    parcel2.writeInt(psdFocusedAppSource);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    String appPackageName = getAppPackageName(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(appPackageName);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRebootPlay(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    int rebootPlay = getRebootPlay();
                    parcel2.writeNoException();
                    parcel2.writeInt(rebootPlay);
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    addRebootPlayChangeListener(IRebootPlayChangeListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void addPsdSourceStateListener(ISourceStateListener listener) throws RemoteException;

    void addRebootPlayChangeListener(IRebootPlayChangeListener listener) throws RemoteException;

    void addSourceStateListener(ISourceStateListener listener) throws RemoteException;

    String getAppPackageName(int audioSource, int appSource) throws RemoteException;

    ICarSpeedManager getCarManager() throws RemoteException;

    int getCurrentAppSource() throws RemoteException;

    int getCurrentAudioSource() throws RemoteException;

    int getCurrentPsdAppSource() throws RemoteException;

    int getCurrentPsdAudioSource() throws RemoteException;

    int getFocusedAppSource() throws RemoteException;

    int getFocusedAudioSource() throws RemoteException;

    IMusicManager getMusicManager() throws RemoteException;

    int getPsdFocusedAppSource() throws RemoteException;

    int getPsdFocusedAudioSource() throws RemoteException;

    IRadioManager getRadioManager() throws RemoteException;

    int getRebootPlay() throws RemoteException;

    boolean isPsdBtAudioSource(int audioSource, int appSource) throws RemoteException;

    boolean isPsdBtDeviceConnected() throws RemoteException;

    void requestAudioSource(int audioSource, int appSource) throws RemoteException;

    void setHeartbeatPacket(IHeartbeatPacket packet) throws RemoteException;

    void setPsdBtAudioSource(int audioSource, int appSource, boolean enable) throws RemoteException;

    void setPsdBtChannel(int app, boolean enable) throws RemoteException;

    void setRebootPlay(int rebootPlayValue) throws RemoteException;
}
