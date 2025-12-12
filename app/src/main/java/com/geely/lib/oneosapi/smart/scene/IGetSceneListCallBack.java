package com.geely.lib.oneosapi.smart.scene;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.smart.bean.SceneInfo;
import java.util.List;

/* loaded from: classes.dex */
public interface IGetSceneListCallBack extends IInterface {

    public static class Default implements IGetSceneListCallBack {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.smart.scene.IGetSceneListCallBack
        public void onResult(List<SceneInfo> list) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements IGetSceneListCallBack {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.smart.scene.IGetSceneListCallBack";
        public static final int TRANSACTION_onResult = 1;

        public static class Proxy implements IGetSceneListCallBack {
            public static IGetSceneListCallBack sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.smart.scene.IGetSceneListCallBack
            public void onResult(List<SceneInfo> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeTypedList(list);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onResult(list);
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

        public static IGetSceneListCallBack asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGetSceneListCallBack)) ? new Proxy(obj) : (IGetSceneListCallBack) iInterfaceQueryLocalInterface;
        }

        public static IGetSceneListCallBack getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(IGetSceneListCallBack impl) {
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
            if (code != 1) {
                if (code != 1598968902) {
                    return super.onTransact(code, data, reply, flags);
                }
                reply.writeString(DESCRIPTOR);
                return true;
            }
            data.enforceInterface(DESCRIPTOR);
            onResult(data.createTypedArrayList(SceneInfo.CREATOR));
            reply.writeNoException();
            return true;
        }
    }

    void onResult(List<SceneInfo> list) throws RemoteException;
}
