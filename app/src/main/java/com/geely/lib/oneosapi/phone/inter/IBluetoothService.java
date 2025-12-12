package com.geely.lib.oneosapi.phone.inter;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.phone.inter.IBluetoothServicesListener;
import com.geely.lib.oneosapi.phone.inter.IBtStateChangeListener;
import com.geely.lib.oneosapi.phone.inter.ICallLogDateListener;
import com.geely.lib.oneosapi.phone.inter.IPhonebookDownloadStateListener;
import com.geely.lib.oneosapi.phone.telecom.GlyCallItem;
import com.geely.lib.oneosapi.phone.telecom.GlyCallLogInfo;
import java.util.List;

/* loaded from: classes.dex */
public interface IBluetoothService extends IInterface {

    public static class Default implements IBluetoothService {
        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void actionAcceptOrDisconnectCall() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void actionRejectOrTerminated() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void answerCall() throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void callbackCall() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void disconnectCall() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public List<GlyCallLogInfo> getCallLogList() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public GlyCallItem getCallbackCallItem() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public int getDownloadStateListener(int type, int state) throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public List<GlyCallItem> getGlyCallItem() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public GlyCallItem getRebroadcastCallItem() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void holdCall(boolean isHold) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public boolean isMicrophoneMute() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void placeCall(String number) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void playDTM(char digit) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void rebroadcastCall() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void registerBtStateListener(IBtStateChangeListener btStateListener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void registerCallLogListener(ICallLogDateListener callLogDateListener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void registerDownloadStateListener(IPhonebookDownloadStateListener downloadStateListener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void registerListener(IBluetoothServicesListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void rejectCall() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void rejectRingOrTerminatedActive() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void setCallViewStatus(int status) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void setMicrophoneAudio(boolean enable) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void setRingtoneMute(boolean mute) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void stopDtmfTone() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void switchActiveCall() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
        public void unRegisterListener(IBluetoothServicesListener listener) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IBluetoothService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.phone.inter.IBluetoothService";
        public static final int TRANSACTION_actionAcceptOrDisconnectCall = 13;
        public static final int TRANSACTION_actionRejectOrTerminated = 14;
        public static final int TRANSACTION_answerCall = 5;
        public static final int TRANSACTION_callbackCall = 23;
        public static final int TRANSACTION_disconnectCall = 6;
        public static final int TRANSACTION_getCallLogList = 18;
        public static final int TRANSACTION_getCallbackCallItem = 26;
        public static final int TRANSACTION_getDownloadStateListener = 20;
        public static final int TRANSACTION_getGlyCallItem = 24;
        public static final int TRANSACTION_getRebroadcastCallItem = 25;
        public static final int TRANSACTION_holdCall = 9;
        public static final int TRANSACTION_isMicrophoneMute = 12;
        public static final int TRANSACTION_placeCall = 3;
        public static final int TRANSACTION_playDTM = 7;
        public static final int TRANSACTION_rebroadcastCall = 22;
        public static final int TRANSACTION_registerBtStateListener = 27;
        public static final int TRANSACTION_registerCallLogListener = 21;
        public static final int TRANSACTION_registerDownloadStateListener = 19;
        public static final int TRANSACTION_registerListener = 1;
        public static final int TRANSACTION_rejectCall = 4;
        public static final int TRANSACTION_rejectRingOrTerminatedActive = 15;
        public static final int TRANSACTION_setCallViewStatus = 17;
        public static final int TRANSACTION_setMicrophoneAudio = 10;
        public static final int TRANSACTION_setRingtoneMute = 11;
        public static final int TRANSACTION_stopDtmfTone = 8;
        public static final int TRANSACTION_switchActiveCall = 16;
        public static final int TRANSACTION_unRegisterListener = 2;

        public static class Proxy implements IBluetoothService {
            public static IBluetoothService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void actionAcceptOrDisconnectCall() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().actionAcceptOrDisconnectCall();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void actionRejectOrTerminated() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().actionRejectOrTerminated();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void answerCall() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().answerCall();
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

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void callbackCall() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().callbackCall();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void disconnectCall() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().disconnectCall();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public List<GlyCallLogInfo> getCallLogList() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCallLogList();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(GlyCallLogInfo.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public GlyCallItem getCallbackCallItem() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCallbackCallItem();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? GlyCallItem.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public int getDownloadStateListener(int type, int state) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(type);
                    parcelObtain.writeInt(state);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getDownloadStateListener(type, state);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public List<GlyCallItem> getGlyCallItem() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getGlyCallItem();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createTypedArrayList(GlyCallItem.CREATOR);
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public GlyCallItem getRebroadcastCallItem() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getRebroadcastCallItem();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? GlyCallItem.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void holdCall(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().holdCall(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public boolean isMicrophoneMute() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isMicrophoneMute();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void placeCall(String number) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(number);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().placeCall(number);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void playDTM(char digit) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(digit);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().playDTM(digit);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void rebroadcastCall() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().rebroadcastCall();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void registerBtStateListener(IBtStateChangeListener btStateListener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(btStateListener != null ? btStateListener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerBtStateListener(btStateListener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void registerCallLogListener(ICallLogDateListener callLogDateListener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(callLogDateListener != null ? callLogDateListener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerCallLogListener(callLogDateListener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void registerDownloadStateListener(IPhonebookDownloadStateListener downloadStateListener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(downloadStateListener != null ? downloadStateListener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerDownloadStateListener(downloadStateListener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void registerListener(IBluetoothServicesListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void rejectCall() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().rejectCall();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void rejectRingOrTerminatedActive() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().rejectRingOrTerminatedActive();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void setCallViewStatus(int status) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(status);
                    if (this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setCallViewStatus(status);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void setMicrophoneAudio(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setMicrophoneAudio(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void setRingtoneMute(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setRingtoneMute(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void stopDtmfTone() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().stopDtmfTone();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void switchActiveCall() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().switchActiveCall();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.phone.inter.IBluetoothService
            public void unRegisterListener(IBluetoothServicesListener listener) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unRegisterListener(listener);
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

        public static IBluetoothService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IBluetoothService)) ? new Proxy(obj) : (IBluetoothService) iInterfaceQueryLocalInterface;
        }

        public static IBluetoothService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IBluetoothService impl) {
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
                    registerListener(IBluetoothServicesListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    unRegisterListener(IBluetoothServicesListener.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    placeCall(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    rejectCall();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    answerCall();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    disconnectCall();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    playDTM((char) parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopDtmfTone();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    holdCall(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMicrophoneAudio(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRingtoneMute(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsMicrophoneMute = isMicrophoneMute();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsMicrophoneMute ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    actionAcceptOrDisconnectCall();
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    actionRejectOrTerminated();
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    rejectRingOrTerminatedActive();
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    switchActiveCall();
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    setCallViewStatus(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<GlyCallLogInfo> callLogList = getCallLogList();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(callLogList);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerDownloadStateListener(IPhonebookDownloadStateListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int downloadStateListener = getDownloadStateListener(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(downloadStateListener);
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerCallLogListener(ICallLogDateListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    rebroadcastCall();
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    callbackCall();
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    List<GlyCallItem> glyCallItem = getGlyCallItem();
                    parcel2.writeNoException();
                    parcel2.writeTypedList(glyCallItem);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    GlyCallItem rebroadcastCallItem = getRebroadcastCallItem();
                    parcel2.writeNoException();
                    if (rebroadcastCallItem != null) {
                        parcel2.writeInt(1);
                        rebroadcastCallItem.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    GlyCallItem callbackCallItem = getCallbackCallItem();
                    parcel2.writeNoException();
                    if (callbackCallItem != null) {
                        parcel2.writeInt(1);
                        callbackCallItem.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerBtStateListener(IBtStateChangeListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void actionAcceptOrDisconnectCall() throws RemoteException;

    void actionRejectOrTerminated() throws RemoteException;

    void answerCall() throws RemoteException;

    void callbackCall() throws RemoteException;

    void disconnectCall() throws RemoteException;

    List<GlyCallLogInfo> getCallLogList() throws RemoteException;

    GlyCallItem getCallbackCallItem() throws RemoteException;

    int getDownloadStateListener(int type, int state) throws RemoteException;

    List<GlyCallItem> getGlyCallItem() throws RemoteException;

    GlyCallItem getRebroadcastCallItem() throws RemoteException;

    void holdCall(boolean isHold) throws RemoteException;

    boolean isMicrophoneMute() throws RemoteException;

    void placeCall(String number) throws RemoteException;

    void playDTM(char digit) throws RemoteException;

    void rebroadcastCall() throws RemoteException;

    void registerBtStateListener(IBtStateChangeListener btStateListener, String packageName) throws RemoteException;

    void registerCallLogListener(ICallLogDateListener callLogDateListener, String packageName) throws RemoteException;

    void registerDownloadStateListener(IPhonebookDownloadStateListener downloadStateListener, String packageName) throws RemoteException;

    void registerListener(IBluetoothServicesListener listener, String packageName) throws RemoteException;

    void rejectCall() throws RemoteException;

    void rejectRingOrTerminatedActive() throws RemoteException;

    void setCallViewStatus(int status) throws RemoteException;

    void setMicrophoneAudio(boolean enable) throws RemoteException;

    void setRingtoneMute(boolean mute) throws RemoteException;

    void stopDtmfTone() throws RemoteException;

    void switchActiveCall() throws RemoteException;

    void unRegisterListener(IBluetoothServicesListener listener) throws RemoteException;
}
