package com.geely.lib.oneosapi.camera;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface ICameraInterface extends IInterface {

    public static class Default implements ICameraInterface {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void closeCamera() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public int getCameraState() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public boolean isFunctionSupported(int function, int zone) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public boolean onSetVideoVolume(int mode) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onStopVideoRecord() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onTakeInnerPhoto() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onTakeInnerVideo() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onTakeOuterPhoto() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onTakeOuterVideo() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onTakePhoto() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onTakePhotoAgain() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public boolean onTakePhotoWithParams(int zone, int delayTime) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onTakeStart() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onTakeTimeLapseRecording() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onTakeTimeTakenPhoto() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onTakeVideo() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public boolean onTakeVideoToggle(int open, int zone, int delayTime) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onVideoMute() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void onVideoUnMute() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.camera.ICameraInterface
        public void openCamera() throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements ICameraInterface {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.camera.ICameraInterface";
        public static final int TRANSACTION_closeCamera = 2;
        public static final int TRANSACTION_getCameraState = 20;
        public static final int TRANSACTION_isFunctionSupported = 19;
        public static final int TRANSACTION_onSetVideoVolume = 18;
        public static final int TRANSACTION_onStopVideoRecord = 13;
        public static final int TRANSACTION_onTakeInnerPhoto = 9;
        public static final int TRANSACTION_onTakeInnerVideo = 11;
        public static final int TRANSACTION_onTakeOuterPhoto = 10;
        public static final int TRANSACTION_onTakeOuterVideo = 12;
        public static final int TRANSACTION_onTakePhoto = 3;
        public static final int TRANSACTION_onTakePhotoAgain = 15;
        public static final int TRANSACTION_onTakePhotoWithParams = 16;
        public static final int TRANSACTION_onTakeStart = 14;
        public static final int TRANSACTION_onTakeTimeLapseRecording = 6;
        public static final int TRANSACTION_onTakeTimeTakenPhoto = 5;
        public static final int TRANSACTION_onTakeVideo = 4;
        public static final int TRANSACTION_onTakeVideoToggle = 17;
        public static final int TRANSACTION_onVideoMute = 7;
        public static final int TRANSACTION_onVideoUnMute = 8;
        public static final int TRANSACTION_openCamera = 1;

        public static class Proxy implements ICameraInterface {
            public static ICameraInterface sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void closeCamera() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().closeCamera();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public int getCameraState() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCameraState();
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

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public boolean isFunctionSupported(int function, int zone) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(function);
                    parcelObtain.writeInt(zone);
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isFunctionSupported(function, zone);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public boolean onSetVideoVolume(int mode) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(mode);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onSetVideoVolume(mode);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onStopVideoRecord() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onStopVideoRecord();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onTakeInnerPhoto() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTakeInnerPhoto();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onTakeInnerVideo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTakeInnerVideo();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onTakeOuterPhoto() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTakeOuterPhoto();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onTakeOuterVideo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTakeOuterVideo();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onTakePhoto() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTakePhoto();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onTakePhotoAgain() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTakePhotoAgain();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public boolean onTakePhotoWithParams(int zone, int delayTime) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(zone);
                    parcelObtain.writeInt(delayTime);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onTakePhotoWithParams(zone, delayTime);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onTakeStart() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTakeStart();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onTakeTimeLapseRecording() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTakeTimeLapseRecording();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onTakeTimeTakenPhoto() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTakeTimeTakenPhoto();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onTakeVideo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onTakeVideo();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public boolean onTakeVideoToggle(int open, int zone, int delayTime) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(open);
                    parcelObtain.writeInt(zone);
                    parcelObtain.writeInt(delayTime);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().onTakeVideoToggle(open, zone, delayTime);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onVideoMute() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onVideoMute();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void onVideoUnMute() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onVideoUnMute();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.camera.ICameraInterface
            public void openCamera() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().openCamera();
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

        public static ICameraInterface asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ICameraInterface)) ? new Proxy(obj) : (ICameraInterface) iInterfaceQueryLocalInterface;
        }

        public static ICameraInterface getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(ICameraInterface impl) {
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
                    openCamera();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    closeCamera();
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakePhoto();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakeVideo();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakeTimeTakenPhoto();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakeTimeLapseRecording();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onVideoMute();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onVideoUnMute();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakeInnerPhoto();
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakeOuterPhoto();
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakeInnerVideo();
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakeOuterVideo();
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    onStopVideoRecord();
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakeStart();
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTakePhotoAgain();
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zOnTakePhotoWithParams = onTakePhotoWithParams(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zOnTakePhotoWithParams ? 1 : 0);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zOnTakeVideoToggle = onTakeVideoToggle(parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zOnTakeVideoToggle ? 1 : 0);
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zOnSetVideoVolume = onSetVideoVolume(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zOnSetVideoVolume ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsFunctionSupported = isFunctionSupported(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsFunctionSupported ? 1 : 0);
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    int cameraState = getCameraState();
                    parcel2.writeNoException();
                    parcel2.writeInt(cameraState);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void closeCamera() throws RemoteException;

    int getCameraState() throws RemoteException;

    boolean isFunctionSupported(int function, int zone) throws RemoteException;

    boolean onSetVideoVolume(int mode) throws RemoteException;

    void onStopVideoRecord() throws RemoteException;

    void onTakeInnerPhoto() throws RemoteException;

    void onTakeInnerVideo() throws RemoteException;

    void onTakeOuterPhoto() throws RemoteException;

    void onTakeOuterVideo() throws RemoteException;

    void onTakePhoto() throws RemoteException;

    void onTakePhotoAgain() throws RemoteException;

    boolean onTakePhotoWithParams(int zone, int delayTime) throws RemoteException;

    void onTakeStart() throws RemoteException;

    void onTakeTimeLapseRecording() throws RemoteException;

    void onTakeTimeTakenPhoto() throws RemoteException;

    void onTakeVideo() throws RemoteException;

    boolean onTakeVideoToggle(int open, int zone, int delayTime) throws RemoteException;

    void onVideoMute() throws RemoteException;

    void onVideoUnMute() throws RemoteException;

    void openCamera() throws RemoteException;
}
