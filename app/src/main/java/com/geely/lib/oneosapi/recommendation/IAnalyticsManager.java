package com.geely.lib.oneosapi.recommendation;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface IAnalyticsManager extends IInterface {

    public static class Default implements IAnalyticsManager {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.recommendation.IAnalyticsManager
        public void recordContentClickBehavior(String behaviorId, String subId) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.recommendation.IAnalyticsManager
        public void recordCsdFlowClick(int listItemId, String contentId, String imageUrl, int jumpType) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IAnalyticsManager {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.recommendation.IAnalyticsManager";
        public static final int TRANSACTION_recordContentClickBehavior = 2;
        public static final int TRANSACTION_recordCsdFlowClick = 1;

        public static class Proxy implements IAnalyticsManager {
            public static IAnalyticsManager sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.recommendation.IAnalyticsManager
            public void recordContentClickBehavior(String behaviorId, String subId) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(behaviorId);
                    parcelObtain.writeString(subId);
                    if (this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().recordContentClickBehavior(behaviorId, subId);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.recommendation.IAnalyticsManager
            public void recordCsdFlowClick(int listItemId, String contentId, String imageUrl, int jumpType) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(listItemId);
                    parcelObtain.writeString(contentId);
                    parcelObtain.writeString(imageUrl);
                    parcelObtain.writeInt(jumpType);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().recordCsdFlowClick(listItemId, contentId, imageUrl, jumpType);
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

        public static IAnalyticsManager asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IAnalyticsManager)) ? new Proxy(obj) : (IAnalyticsManager) iInterfaceQueryLocalInterface;
        }

        public static IAnalyticsManager getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IAnalyticsManager impl) {
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
            if (code == 1) {
                data.enforceInterface(DESCRIPTOR);
                recordCsdFlowClick(data.readInt(), data.readString(), data.readString(), data.readInt());
                reply.writeNoException();
                return true;
            }
            if (code != 2) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            recordContentClickBehavior(data.readString(), data.readString());
            reply.writeNoException();
            return true;
        }
    }

    void recordContentClickBehavior(String behaviorId, String subId) throws RemoteException;

    void recordCsdFlowClick(int listItemId, String contentId, String imageUrl, int jumpType) throws RemoteException;
}
