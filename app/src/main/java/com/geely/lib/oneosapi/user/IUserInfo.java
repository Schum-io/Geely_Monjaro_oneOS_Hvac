package com.geely.lib.oneosapi.user;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IUserInfo extends IInterface {

    public static class Default implements IUserInfo {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getAddress() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public int getAge() throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getAvatarURL() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getBirthday() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getCarModel() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getDateOfBirth() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getEmail() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getIsNoSecretLogin() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getLevel() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getLevelName() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getLoginAccountType() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getMobile() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getName() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getNickname() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getSex() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public String getUserId() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.user.IUserInfo
        public boolean isGIDUser() throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements IUserInfo {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.user.IUserInfo";
        public static final int TRANSACTION_getAddress = 12;
        public static final int TRANSACTION_getAge = 5;
        public static final int TRANSACTION_getAvatarURL = 3;
        public static final int TRANSACTION_getBirthday = 15;
        public static final int TRANSACTION_getCarModel = 9;
        public static final int TRANSACTION_getDateOfBirth = 6;
        public static final int TRANSACTION_getEmail = 14;
        public static final int TRANSACTION_getIsNoSecretLogin = 17;
        public static final int TRANSACTION_getLevel = 10;
        public static final int TRANSACTION_getLevelName = 11;
        public static final int TRANSACTION_getLoginAccountType = 16;
        public static final int TRANSACTION_getMobile = 1;
        public static final int TRANSACTION_getName = 2;
        public static final int TRANSACTION_getNickname = 13;
        public static final int TRANSACTION_getSex = 4;
        public static final int TRANSACTION_getUserId = 8;
        public static final int TRANSACTION_isGIDUser = 7;

        public static class Proxy implements IUserInfo {
            public static IUserInfo sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getAddress() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAddress();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public int getAge() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAge();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getAvatarURL() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getAvatarURL();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getBirthday() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getBirthday();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getCarModel() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getCarModel();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getDateOfBirth() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getDateOfBirth();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getEmail() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getEmail();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getIsNoSecretLogin() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getIsNoSecretLogin();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getLevel() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLevel();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getLevelName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLevelName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getLoginAccountType() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLoginAccountType();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getMobile() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getMobile();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getNickname() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getNickname();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getSex() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getSex();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public String getUserId() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getUserId();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.user.IUserInfo
            public boolean isGIDUser() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().isGIDUser();
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

        public static IUserInfo asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IUserInfo)) ? new Proxy(obj) : (IUserInfo) iInterfaceQueryLocalInterface;
        }

        public static IUserInfo getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IUserInfo impl) {
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
                    String mobile = getMobile();
                    parcel2.writeNoException();
                    parcel2.writeString(mobile);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    String name = getName();
                    parcel2.writeNoException();
                    parcel2.writeString(name);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    String avatarURL = getAvatarURL();
                    parcel2.writeNoException();
                    parcel2.writeString(avatarURL);
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    String sex = getSex();
                    parcel2.writeNoException();
                    parcel2.writeString(sex);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    int age = getAge();
                    parcel2.writeNoException();
                    parcel2.writeInt(age);
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    String dateOfBirth = getDateOfBirth();
                    parcel2.writeNoException();
                    parcel2.writeString(dateOfBirth);
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zIsGIDUser = isGIDUser();
                    parcel2.writeNoException();
                    parcel2.writeInt(zIsGIDUser ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    String userId = getUserId();
                    parcel2.writeNoException();
                    parcel2.writeString(userId);
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    String carModel = getCarModel();
                    parcel2.writeNoException();
                    parcel2.writeString(carModel);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    String level = getLevel();
                    parcel2.writeNoException();
                    parcel2.writeString(level);
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    String levelName = getLevelName();
                    parcel2.writeNoException();
                    parcel2.writeString(levelName);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    String address = getAddress();
                    parcel2.writeNoException();
                    parcel2.writeString(address);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    String nickname = getNickname();
                    parcel2.writeNoException();
                    parcel2.writeString(nickname);
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    String email = getEmail();
                    parcel2.writeNoException();
                    parcel2.writeString(email);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    String birthday = getBirthday();
                    parcel2.writeNoException();
                    parcel2.writeString(birthday);
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    String loginAccountType = getLoginAccountType();
                    parcel2.writeNoException();
                    parcel2.writeString(loginAccountType);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    String isNoSecretLogin = getIsNoSecretLogin();
                    parcel2.writeNoException();
                    parcel2.writeString(isNoSecretLogin);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String getAddress() throws RemoteException;

    int getAge() throws RemoteException;

    String getAvatarURL() throws RemoteException;

    String getBirthday() throws RemoteException;

    String getCarModel() throws RemoteException;

    String getDateOfBirth() throws RemoteException;

    String getEmail() throws RemoteException;

    String getIsNoSecretLogin() throws RemoteException;

    String getLevel() throws RemoteException;

    String getLevelName() throws RemoteException;

    String getLoginAccountType() throws RemoteException;

    String getMobile() throws RemoteException;

    String getName() throws RemoteException;

    String getNickname() throws RemoteException;

    String getSex() throws RemoteException;

    String getUserId() throws RemoteException;

    boolean isGIDUser() throws RemoteException;
}
