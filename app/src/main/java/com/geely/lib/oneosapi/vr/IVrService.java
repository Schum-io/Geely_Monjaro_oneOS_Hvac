package com.geely.lib.oneosapi.vr;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.vr.ISpeechRecognitionCallback;
import com.geely.lib.oneosapi.vr.ITtsCallback;
import com.geely.lib.oneosapi.vr.IVRDialogStatusChangedListener;
import com.geely.lib.oneosapi.vr.IVREngineStatusChangedListener;

/* loaded from: classes.dex */
public interface IVrService extends IInterface {

    public static class Default implements IVrService {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void closeDialogue(String token, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void disableVR(String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void enableVR(String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public int getVREngineStatus(String packageName) throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void onPageChange(String packageName, String pageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void registerVRDialogStatusChangedListener(IVRDialogStatusChangedListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void registerVREngineStatusChangedListener(IVREngineStatusChangedListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void speak(String ttsContent, boolean isRender, int priority, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void speakByDirection(String ttsContent, boolean isRender, int priority, int speakDirection, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void speakIncomingCall(String text, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public String startDialogWithCallback(String packageName, String tts, ITtsCallback ttsCallback) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public String startDialogue(String query, String packageName) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public String startDialogueByType(int type, String packageName) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public boolean startSpeechRecognition(String packageName, long recordTimeout, long vadTimeout, ISpeechRecognitionCallback callback) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void stopSpeechRecognition(String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void stopSpeechRecognitionByTime(String packageName, long time) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public String toggleDialogue(String packageName) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void trackData(String appName, String appVersion, String packageName, String event, String dataJson) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void unregisterVRDialogStatusChangedListener(IVRDialogStatusChangedListener listener, String packageName) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.vr.IVrService
        public void unregisterVREngineStatusChangedListener(IVREngineStatusChangedListener listener, String packageName) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IVrService {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.vr.IVrService";
        public static final int TRANSACTION_closeDialogue = 3;
        public static final int TRANSACTION_disableVR = 7;
        public static final int TRANSACTION_enableVR = 8;
        public static final int TRANSACTION_getVREngineStatus = 17;
        public static final int TRANSACTION_onPageChange = 10;
        public static final int TRANSACTION_registerVRDialogStatusChangedListener = 15;
        public static final int TRANSACTION_registerVREngineStatusChangedListener = 18;
        public static final int TRANSACTION_speak = 1;
        public static final int TRANSACTION_speakByDirection = 20;
        public static final int TRANSACTION_speakIncomingCall = 4;
        public static final int TRANSACTION_startDialogWithCallback = 6;
        public static final int TRANSACTION_startDialogue = 2;
        public static final int TRANSACTION_startDialogueByType = 5;
        public static final int TRANSACTION_startSpeechRecognition = 11;
        public static final int TRANSACTION_stopSpeechRecognition = 12;
        public static final int TRANSACTION_stopSpeechRecognitionByTime = 13;
        public static final int TRANSACTION_toggleDialogue = 14;
        public static final int TRANSACTION_trackData = 9;
        public static final int TRANSACTION_unregisterVRDialogStatusChangedListener = 16;
        public static final int TRANSACTION_unregisterVREngineStatusChangedListener = 19;

        public static class Proxy implements IVrService {
            public static IVrService sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void closeDialogue(String token, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(token);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().closeDialogue(token, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void disableVR(String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().disableVR(packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void enableVR(String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().enableVR(packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public int getVREngineStatus(String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getVREngineStatus(packageName);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void onPageChange(String packageName, String pageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    parcelObtain.writeString(pageName);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onPageChange(packageName, pageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void registerVRDialogStatusChangedListener(IVRDialogStatusChangedListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerVRDialogStatusChangedListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void registerVREngineStatusChangedListener(IVREngineStatusChangedListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().registerVREngineStatusChangedListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void speak(String str, boolean z, int i, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str2);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().speak(str, z, i, str2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void speakByDirection(String str, boolean z, int i, int i2, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str2);
                    if (this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().speakByDirection(str, z, i, i2, str2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void speakIncomingCall(String text, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(text);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().speakIncomingCall(text, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public String startDialogWithCallback(String packageName, String tts, ITtsCallback ttsCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    parcelObtain.writeString(tts);
                    parcelObtain.writeStrongBinder(ttsCallback != null ? ttsCallback.asBinder() : null);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().startDialogWithCallback(packageName, tts, ttsCallback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public String startDialogue(String query, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(query);
                    parcelObtain.writeString(packageName);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().startDialogue(query, packageName);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public String startDialogueByType(int type, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(type);
                    parcelObtain.writeString(packageName);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().startDialogueByType(type, packageName);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public boolean startSpeechRecognition(String packageName, long recordTimeout, long vadTimeout, ISpeechRecognitionCallback callback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    parcelObtain.writeLong(recordTimeout);
                    parcelObtain.writeLong(vadTimeout);
                    parcelObtain.writeStrongBinder(callback != null ? callback.asBinder() : null);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().startSpeechRecognition(packageName, recordTimeout, vadTimeout, callback);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void stopSpeechRecognition(String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().stopSpeechRecognition(packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void stopSpeechRecognitionByTime(String packageName, long time) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    parcelObtain.writeLong(time);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().stopSpeechRecognitionByTime(packageName, time);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public String toggleDialogue(String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(packageName);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().toggleDialogue(packageName);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void trackData(String appName, String appVersion, String packageName, String event, String dataJson) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(appName);
                    parcelObtain.writeString(appVersion);
                    parcelObtain.writeString(packageName);
                    parcelObtain.writeString(event);
                    parcelObtain.writeString(dataJson);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().trackData(appName, appVersion, packageName, event, dataJson);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void unregisterVRDialogStatusChangedListener(IVRDialogStatusChangedListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterVRDialogStatusChangedListener(listener, packageName);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.vr.IVrService
            public void unregisterVREngineStatusChangedListener(IVREngineStatusChangedListener listener, String packageName) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(listener != null ? listener.asBinder() : null);
                    parcelObtain.writeString(packageName);
                    if (this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unregisterVREngineStatusChangedListener(listener, packageName);
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

        public static IVrService asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IVrService)) ? new Proxy(obj) : (IVrService) iInterfaceQueryLocalInterface;
        }

        public static IVrService getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IVrService impl) {
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
                    speak(parcel.readString(), parcel.readInt() != 0, parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strStartDialogue = startDialogue(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strStartDialogue);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    closeDialogue(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    speakIncomingCall(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strStartDialogueByType = startDialogueByType(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(strStartDialogueByType);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String strStartDialogWithCallback = startDialogWithCallback(parcel.readString(), parcel.readString(), ITtsCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeString(strStartDialogWithCallback);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    disableVR(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    enableVR(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    trackData(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onPageChange(parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStartSpeechRecognition = startSpeechRecognition(parcel.readString(), parcel.readLong(), parcel.readLong(), ISpeechRecognitionCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zStartSpeechRecognition ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSpeechRecognition(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    stopSpeechRecognitionByTime(parcel.readString(), parcel.readLong());
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    String str = toggleDialogue(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeString(str);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerVRDialogStatusChangedListener(IVRDialogStatusChangedListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterVRDialogStatusChangedListener(IVRDialogStatusChangedListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    int vREngineStatus = getVREngineStatus(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(vREngineStatus);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    registerVREngineStatusChangedListener(IVREngineStatusChangedListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    unregisterVREngineStatusChangedListener(IVREngineStatusChangedListener.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    speakByDirection(parcel.readString(), parcel.readInt() != 0, parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void closeDialogue(String token, String packageName) throws RemoteException;

    void disableVR(String packageName) throws RemoteException;

    void enableVR(String packageName) throws RemoteException;

    int getVREngineStatus(String packageName) throws RemoteException;

    void onPageChange(String packageName, String pageName) throws RemoteException;

    void registerVRDialogStatusChangedListener(IVRDialogStatusChangedListener listener, String packageName) throws RemoteException;

    void registerVREngineStatusChangedListener(IVREngineStatusChangedListener listener, String packageName) throws RemoteException;

    void speak(String ttsContent, boolean isRender, int priority, String packageName) throws RemoteException;

    void speakByDirection(String ttsContent, boolean isRender, int priority, int speakDirection, String packageName) throws RemoteException;

    void speakIncomingCall(String text, String packageName) throws RemoteException;

    String startDialogWithCallback(String packageName, String tts, ITtsCallback ttsCallback) throws RemoteException;

    String startDialogue(String query, String packageName) throws RemoteException;

    String startDialogueByType(int type, String packageName) throws RemoteException;

    boolean startSpeechRecognition(String packageName, long recordTimeout, long vadTimeout, ISpeechRecognitionCallback callback) throws RemoteException;

    void stopSpeechRecognition(String packageName) throws RemoteException;

    void stopSpeechRecognitionByTime(String packageName, long time) throws RemoteException;

    String toggleDialogue(String packageName) throws RemoteException;

    void trackData(String appName, String appVersion, String packageName, String event, String dataJson) throws RemoteException;

    void unregisterVRDialogStatusChangedListener(IVRDialogStatusChangedListener listener, String packageName) throws RemoteException;

    void unregisterVREngineStatusChangedListener(IVREngineStatusChangedListener listener, String packageName) throws RemoteException;
}
