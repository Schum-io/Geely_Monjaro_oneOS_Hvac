package com.geely.lib.oneosapi.navi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.geely.lib.oneosapi.navi.ipc.ICommuteInfoBean;
import com.geely.lib.oneosapi.navi.ipc.IFavoritesInfoBean;
import com.geely.lib.oneosapi.navi.ipc.IGuidingInfoModelBean;
import com.geely.lib.oneosapi.navi.ipc.IHighwayExitInfoModelBean;
import com.geely.lib.oneosapi.navi.ipc.IHistoryPoisBean;
import com.geely.lib.oneosapi.navi.ipc.ILanesInfoBean;
import com.geely.lib.oneosapi.navi.ipc.ILocationInfoModelBean;
import com.geely.lib.oneosapi.navi.ipc.IParkingPoisBean;
import com.geely.lib.oneosapi.navi.ipc.IPoiInfoBean;
import com.geely.lib.oneosapi.navi.ipc.IRoutePlanInfoBean;
import com.geely.lib.oneosapi.navi.ipc.ITrafficConditionInfoBean;
import com.geely.lib.oneosapi.navi.ipc.ITripReporterBean;

/* loaded from: classes.dex */
public interface INaviCallback extends IInterface {

    public static class Default implements INaviCallback {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onAdAreaChanged(ILocationInfoModelBean locationInfoModelBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onArrivedLastMile(IPoiInfoBean poiInfoBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onCommutePush(ICommuteInfoBean commuteInfoBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onDestinationParkingUpdate(IParkingPoisBean parkingPoisBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onFavoriteChanged(IFavoritesInfoBean favoritesInfoBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onGuideInfoChanged(IGuidingInfoModelBean guidingInfoModelBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onHighwayExitInfoUpdate(IHighwayExitInfoModelBean highwayExitInfoModelBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onHistoryPoisUpdateCallback(IHistoryPoisBean historyPoisBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onLanesInfoChanged(ILanesInfoBean lanesInfoBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onMapStatusChanged(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onRouteInfoChanged(IRoutePlanInfoBean routePlanInfoBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onSendPOIToCar(IPoiInfoBean poiInfoBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onTrafficConditionsChanged(ITrafficConditionInfoBean trafficConditionInfoBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviCallback
        public void onTripReporterUpdate(ITripReporterBean tripReporter) throws RemoteException {
        }
    }

    public static abstract class Stub extends Binder implements INaviCallback {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.navi.INaviCallback";
        public static final int TRANSACTION_onAdAreaChanged = 8;
        public static final int TRANSACTION_onArrivedLastMile = 7;
        public static final int TRANSACTION_onCommutePush = 11;
        public static final int TRANSACTION_onDestinationParkingUpdate = 12;
        public static final int TRANSACTION_onFavoriteChanged = 2;
        public static final int TRANSACTION_onGuideInfoChanged = 4;
        public static final int TRANSACTION_onHighwayExitInfoUpdate = 5;
        public static final int TRANSACTION_onHistoryPoisUpdateCallback = 14;
        public static final int TRANSACTION_onLanesInfoChanged = 10;
        public static final int TRANSACTION_onMapStatusChanged = 1;
        public static final int TRANSACTION_onRouteInfoChanged = 3;
        public static final int TRANSACTION_onSendPOIToCar = 6;
        public static final int TRANSACTION_onTrafficConditionsChanged = 9;
        public static final int TRANSACTION_onTripReporterUpdate = 13;

        public static class Proxy implements INaviCallback {
            public static INaviCallback sDefaultImpl;
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

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onAdAreaChanged(ILocationInfoModelBean locationInfoModelBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (locationInfoModelBean != null) {
                        parcelObtain.writeInt(1);
                        locationInfoModelBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onAdAreaChanged(locationInfoModelBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        locationInfoModelBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onArrivedLastMile(IPoiInfoBean poiInfoBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (poiInfoBean != null) {
                        parcelObtain.writeInt(1);
                        poiInfoBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onArrivedLastMile(poiInfoBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        poiInfoBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onCommutePush(ICommuteInfoBean commuteInfoBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (commuteInfoBean != null) {
                        parcelObtain.writeInt(1);
                        commuteInfoBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onCommutePush(commuteInfoBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        commuteInfoBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onDestinationParkingUpdate(IParkingPoisBean parkingPoisBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (parkingPoisBean != null) {
                        parcelObtain.writeInt(1);
                        parkingPoisBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onDestinationParkingUpdate(parkingPoisBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        parkingPoisBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onFavoriteChanged(IFavoritesInfoBean favoritesInfoBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (favoritesInfoBean != null) {
                        parcelObtain.writeInt(1);
                        favoritesInfoBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onFavoriteChanged(favoritesInfoBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        favoritesInfoBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onGuideInfoChanged(IGuidingInfoModelBean guidingInfoModelBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (guidingInfoModelBean != null) {
                        parcelObtain.writeInt(1);
                        guidingInfoModelBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onGuideInfoChanged(guidingInfoModelBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        guidingInfoModelBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onHighwayExitInfoUpdate(IHighwayExitInfoModelBean highwayExitInfoModelBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (highwayExitInfoModelBean != null) {
                        parcelObtain.writeInt(1);
                        highwayExitInfoModelBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onHighwayExitInfoUpdate(highwayExitInfoModelBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        highwayExitInfoModelBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onHistoryPoisUpdateCallback(IHistoryPoisBean historyPoisBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (historyPoisBean != null) {
                        parcelObtain.writeInt(1);
                        historyPoisBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onHistoryPoisUpdateCallback(historyPoisBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        historyPoisBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onLanesInfoChanged(ILanesInfoBean lanesInfoBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (lanesInfoBean != null) {
                        parcelObtain.writeInt(1);
                        lanesInfoBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onLanesInfoChanged(lanesInfoBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        lanesInfoBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onMapStatusChanged(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().onMapStatusChanged(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onRouteInfoChanged(IRoutePlanInfoBean routePlanInfoBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (routePlanInfoBean != null) {
                        parcelObtain.writeInt(1);
                        routePlanInfoBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onRouteInfoChanged(routePlanInfoBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        routePlanInfoBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onSendPOIToCar(IPoiInfoBean poiInfoBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (poiInfoBean != null) {
                        parcelObtain.writeInt(1);
                        poiInfoBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onSendPOIToCar(poiInfoBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        poiInfoBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onTrafficConditionsChanged(ITrafficConditionInfoBean trafficConditionInfoBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (trafficConditionInfoBean != null) {
                        parcelObtain.writeInt(1);
                        trafficConditionInfoBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onTrafficConditionsChanged(trafficConditionInfoBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        trafficConditionInfoBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviCallback
            public void onTripReporterUpdate(ITripReporterBean tripReporter) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (tripReporter != null) {
                        parcelObtain.writeInt(1);
                        tripReporter.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().onTripReporterUpdate(tripReporter);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        tripReporter.readFromParcel(parcelObtain2);
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

        public static INaviCallback asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof INaviCallback)) ? new Proxy(obj) : (INaviCallback) iInterfaceQueryLocalInterface;
        }

        public static INaviCallback getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(INaviCallback impl) {
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
                    onMapStatusChanged(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    IFavoritesInfoBean iFavoritesInfoBeanCreateFromParcel = parcel.readInt() != 0 ? IFavoritesInfoBean.CREATOR.createFromParcel(parcel) : null;
                    onFavoriteChanged(iFavoritesInfoBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iFavoritesInfoBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iFavoritesInfoBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    IRoutePlanInfoBean iRoutePlanInfoBeanCreateFromParcel = parcel.readInt() != 0 ? IRoutePlanInfoBean.CREATOR.createFromParcel(parcel) : null;
                    onRouteInfoChanged(iRoutePlanInfoBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iRoutePlanInfoBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iRoutePlanInfoBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    IGuidingInfoModelBean iGuidingInfoModelBeanCreateFromParcel = parcel.readInt() != 0 ? IGuidingInfoModelBean.CREATOR.createFromParcel(parcel) : null;
                    onGuideInfoChanged(iGuidingInfoModelBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iGuidingInfoModelBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iGuidingInfoModelBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    IHighwayExitInfoModelBean iHighwayExitInfoModelBeanCreateFromParcel = parcel.readInt() != 0 ? IHighwayExitInfoModelBean.CREATOR.createFromParcel(parcel) : null;
                    onHighwayExitInfoUpdate(iHighwayExitInfoModelBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iHighwayExitInfoModelBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iHighwayExitInfoModelBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    IPoiInfoBean iPoiInfoBeanCreateFromParcel = parcel.readInt() != 0 ? IPoiInfoBean.CREATOR.createFromParcel(parcel) : null;
                    onSendPOIToCar(iPoiInfoBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iPoiInfoBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iPoiInfoBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    IPoiInfoBean iPoiInfoBeanCreateFromParcel2 = parcel.readInt() != 0 ? IPoiInfoBean.CREATOR.createFromParcel(parcel) : null;
                    onArrivedLastMile(iPoiInfoBeanCreateFromParcel2);
                    parcel2.writeNoException();
                    if (iPoiInfoBeanCreateFromParcel2 != null) {
                        parcel2.writeInt(1);
                        iPoiInfoBeanCreateFromParcel2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    ILocationInfoModelBean iLocationInfoModelBeanCreateFromParcel = parcel.readInt() != 0 ? ILocationInfoModelBean.CREATOR.createFromParcel(parcel) : null;
                    onAdAreaChanged(iLocationInfoModelBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iLocationInfoModelBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iLocationInfoModelBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    ITrafficConditionInfoBean iTrafficConditionInfoBeanCreateFromParcel = parcel.readInt() != 0 ? ITrafficConditionInfoBean.CREATOR.createFromParcel(parcel) : null;
                    onTrafficConditionsChanged(iTrafficConditionInfoBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iTrafficConditionInfoBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iTrafficConditionInfoBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    ILanesInfoBean iLanesInfoBeanCreateFromParcel = parcel.readInt() != 0 ? ILanesInfoBean.CREATOR.createFromParcel(parcel) : null;
                    onLanesInfoChanged(iLanesInfoBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iLanesInfoBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iLanesInfoBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    ICommuteInfoBean iCommuteInfoBeanCreateFromParcel = parcel.readInt() != 0 ? ICommuteInfoBean.CREATOR.createFromParcel(parcel) : null;
                    onCommutePush(iCommuteInfoBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iCommuteInfoBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iCommuteInfoBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    IParkingPoisBean iParkingPoisBeanCreateFromParcel = parcel.readInt() != 0 ? IParkingPoisBean.CREATOR.createFromParcel(parcel) : null;
                    onDestinationParkingUpdate(iParkingPoisBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iParkingPoisBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iParkingPoisBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    ITripReporterBean iTripReporterBeanCreateFromParcel = parcel.readInt() != 0 ? ITripReporterBean.CREATOR.createFromParcel(parcel) : null;
                    onTripReporterUpdate(iTripReporterBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iTripReporterBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iTripReporterBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    IHistoryPoisBean iHistoryPoisBeanCreateFromParcel = parcel.readInt() != 0 ? IHistoryPoisBean.CREATOR.createFromParcel(parcel) : null;
                    onHistoryPoisUpdateCallback(iHistoryPoisBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iHistoryPoisBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iHistoryPoisBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onAdAreaChanged(ILocationInfoModelBean locationInfoModelBean) throws RemoteException;

    void onArrivedLastMile(IPoiInfoBean poiInfoBean) throws RemoteException;

    void onCommutePush(ICommuteInfoBean commuteInfoBean) throws RemoteException;

    void onDestinationParkingUpdate(IParkingPoisBean parkingPoisBean) throws RemoteException;

    void onFavoriteChanged(IFavoritesInfoBean favoritesInfoBean) throws RemoteException;

    void onGuideInfoChanged(IGuidingInfoModelBean guidingInfoModelBean) throws RemoteException;

    void onHighwayExitInfoUpdate(IHighwayExitInfoModelBean highwayExitInfoModelBean) throws RemoteException;

    void onHistoryPoisUpdateCallback(IHistoryPoisBean historyPoisBean) throws RemoteException;

    void onLanesInfoChanged(ILanesInfoBean lanesInfoBean) throws RemoteException;

    void onMapStatusChanged(int var) throws RemoteException;

    void onRouteInfoChanged(IRoutePlanInfoBean routePlanInfoBean) throws RemoteException;

    void onSendPOIToCar(IPoiInfoBean poiInfoBean) throws RemoteException;

    void onTrafficConditionsChanged(ITrafficConditionInfoBean trafficConditionInfoBean) throws RemoteException;

    void onTripReporterUpdate(ITripReporterBean tripReporter) throws RemoteException;
}
