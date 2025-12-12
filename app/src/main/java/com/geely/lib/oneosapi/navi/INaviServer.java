package com.geely.lib.oneosapi.navi;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.Surface;
import com.geely.lib.oneosapi.navi.INaviCallback;
import com.geely.lib.oneosapi.navi.INaviEventNotify;
import com.geely.lib.oneosapi.navi.INaviInfo;
import com.geely.lib.oneosapi.navi.INaviObserver;
import com.geely.lib.oneosapi.navi.ipc.IApiRequestBaseModelBean;
import com.geely.lib.oneosapi.navi.ipc.IEditFavoriteRequestBean;
import com.geely.lib.oneosapi.navi.ipc.IKeywordSearchRequestBean;
import com.geely.lib.oneosapi.navi.ipc.ILatLngBean;
import com.geely.lib.oneosapi.navi.ipc.IModifyViaPoiRequestBean;
import com.geely.lib.oneosapi.navi.ipc.IRoutePlanRequestBean;
import com.geely.lib.oneosapi.navi.ipc.ISearchAlongWayRequestBean;
import com.geely.lib.oneosapi.navi.ipc.ISearchAroundRequestBean;
import com.geely.lib.oneosapi.navi.ipc.ISetMapFeaturesRunningStateBean;
import com.geely.lib.oneosapi.navi.ipc.IViaRoadRequestBean;
import com.geely.lib.oneosapi.navi.ipc.TransferModel;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public interface INaviServer extends IInterface {

    public static class Default implements INaviServer {
        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean addNaviEventNotify(INaviEventNotify eventNotify) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean addSurface(Surface surface, int type, int height, int width) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean addSurfaceWithRoadView(Surface surface, int type, int height, int width, int roadViewHeight, int roadViewWidth) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean addSurfaceWithRoadViewAndOffset(Surface surface, int type, int height, int width, int roadViewHeight, int roadViewWidth, int offsetX, int offsetY) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void alongTheWaySearch(int var1, ISearchAlongWayRequestBean searchAlongWayRequestBean) throws RemoteException {
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void backToMap() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void cancelNavi() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void commonRequest(IApiRequestBaseModelBean iapiRequestBaseModel) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void dispatchTouchEvent(MotionEvent ev) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void downloadOfflineMap(List<String> list) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void editFavoritePois(IEditFavoriteRequestBean editFavoriteRequestBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void exitMap() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getArrivedFrontPoiInfo(String var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getFavoritePois(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getFrequentPois(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getFrontTraffic(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getGuideInfo() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getHighwayExitInfo(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getHistoryPois(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public String getLocationRoadInfo() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getMapSupportedFeatures() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public String getPackageName() throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getRemainNopInfo() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getRoutePlanInfo() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getRunningMapFeatures() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getSpeedLimitInfo() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void getTrafficSummaryInfo(String var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean goCompany() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void goFavorite(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean goHome() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void goOfflineMapDownload() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public TransferModel invokeNaviAPI(TransferModel reqModel) throws RemoteException {
            return null;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public int invokeNaviAPIAsync(TransferModel reqModel, INaviObserver observer) throws RemoteException {
            return 0;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void launchMap() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean mapIsLaunched() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void mapZoomInOut(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void modifyNaviVia(IModifyViaPoiRequestBean modifyViaPoiRequestBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean muteNaviAudio() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void naviFullView() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean naviTo(String message) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean naviToByNaviInfo(INaviInfo naviInfo) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void openDestinationSearch(IKeywordSearchRequestBean keywordSearchRequestBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void register(INaviCallback iRemoteCallback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean registerNaviObserver(INaviObserver observer) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean removeNaviEventNotify(INaviEventNotify eventNotify) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean removedSurface(Surface surface, int type) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void requestGeoDecoder(ILatLngBean latLngBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void requestRoutePlanOrNavi(long uid, IRoutePlanRequestBean routePlanRequestBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void requestRoutePlanOrNaviViaRoad(long uid, IRoutePlanRequestBean iRoutePlanRequestBean, IViaRoadRequestBean iViaRoadRequest) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void rerouting() throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void searchAround(long uid, int var1, ISearchAroundRequestBean searchAroundRequestBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void searchByKeyword(long uid, int var1, IKeywordSearchRequestBean keywordSearchRequestBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean searchNearby(String keyword, double longitude, double latitude) throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void searchPoiNearbyBurnout(int i, IKeywordSearchRequestBean bean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void selectRoute(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void setMapFeaturesRunningState(ISetMapFeaturesRunningStateBean setMapFeaturesRunningStateBean) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void setMapViewMode(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void setReportNaviType(int i) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void setRoutePlanStrategy(int var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void showMyLocation(boolean var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void specialPoiNavi(int guidanceType, int poiType) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean stopNavi() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void switchARNavigation(boolean var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void switchTraffic(boolean var) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean unmuteNaviAudio() throws RemoteException {
            return false;
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public void unrRegister(INaviCallback iRemoteCallback) throws RemoteException {
        }

        @Override // com.geely.lib.oneosapi.navi.INaviServer
        public boolean unregisterNaviObserver(INaviObserver observer) throws RemoteException {
            return false;
        }
    }

    public static abstract class Stub extends Binder implements INaviServer {
        private static final String DESCRIPTOR = "com.geely.lib.oneosapi.navi.INaviServer";
        public static final int TRANSACTION_addNaviEventNotify = 66;
        public static final int TRANSACTION_addSurface = 46;
        public static final int TRANSACTION_addSurfaceWithRoadView = 47;
        public static final int TRANSACTION_addSurfaceWithRoadViewAndOffset = 54;
        public static final int TRANSACTION_alongTheWaySearch = 32;
        public static final int TRANSACTION_backToMap = 16;
        public static final int TRANSACTION_cancelNavi = 6;
        public static final int TRANSACTION_commonRequest = 5;
        public static final int TRANSACTION_dispatchTouchEvent = 49;
        public static final int TRANSACTION_downloadOfflineMap = 28;
        public static final int TRANSACTION_editFavoritePois = 38;
        public static final int TRANSACTION_exitMap = 17;
        public static final int TRANSACTION_getArrivedFrontPoiInfo = 43;
        public static final int TRANSACTION_getFavoritePois = 39;
        public static final int TRANSACTION_getFrequentPois = 41;
        public static final int TRANSACTION_getFrontTraffic = 8;
        public static final int TRANSACTION_getGuideInfo = 9;
        public static final int TRANSACTION_getHighwayExitInfo = 10;
        public static final int TRANSACTION_getHistoryPois = 40;
        public static final int TRANSACTION_getLocationRoadInfo = 63;
        public static final int TRANSACTION_getMapSupportedFeatures = 35;
        public static final int TRANSACTION_getPackageName = 45;
        public static final int TRANSACTION_getRemainNopInfo = 53;
        public static final int TRANSACTION_getRoutePlanInfo = 11;
        public static final int TRANSACTION_getRunningMapFeatures = 36;
        public static final int TRANSACTION_getSpeedLimitInfo = 42;
        public static final int TRANSACTION_getTrafficSummaryInfo = 25;
        public static final int TRANSACTION_goCompany = 58;
        public static final int TRANSACTION_goFavorite = 26;
        public static final int TRANSACTION_goHome = 57;
        public static final int TRANSACTION_goOfflineMapDownload = 29;
        public static final int TRANSACTION_invokeNaviAPI = 64;
        public static final int TRANSACTION_invokeNaviAPIAsync = 65;
        public static final int TRANSACTION_launchMap = 15;
        public static final int TRANSACTION_mapIsLaunched = 18;
        public static final int TRANSACTION_mapZoomInOut = 20;
        public static final int TRANSACTION_modifyNaviVia = 14;
        public static final int TRANSACTION_muteNaviAudio = 55;
        public static final int TRANSACTION_naviFullView = 22;
        public static final int TRANSACTION_naviTo = 61;
        public static final int TRANSACTION_naviToByNaviInfo = 62;
        public static final int TRANSACTION_openDestinationSearch = 19;
        public static final int TRANSACTION_register = 3;
        public static final int TRANSACTION_registerNaviObserver = 1;
        public static final int TRANSACTION_removeNaviEventNotify = 67;
        public static final int TRANSACTION_removedSurface = 48;
        public static final int TRANSACTION_requestGeoDecoder = 33;
        public static final int TRANSACTION_requestRoutePlanOrNavi = 13;
        public static final int TRANSACTION_requestRoutePlanOrNaviViaRoad = 52;
        public static final int TRANSACTION_rerouting = 44;
        public static final int TRANSACTION_searchAround = 31;
        public static final int TRANSACTION_searchByKeyword = 30;
        public static final int TRANSACTION_searchNearby = 59;
        public static final int TRANSACTION_searchPoiNearbyBurnout = 51;
        public static final int TRANSACTION_selectRoute = 7;
        public static final int TRANSACTION_setMapFeaturesRunningState = 37;
        public static final int TRANSACTION_setMapViewMode = 21;
        public static final int TRANSACTION_setReportNaviType = 50;
        public static final int TRANSACTION_setRoutePlanStrategy = 34;
        public static final int TRANSACTION_showMyLocation = 24;
        public static final int TRANSACTION_specialPoiNavi = 12;
        public static final int TRANSACTION_stopNavi = 60;
        public static final int TRANSACTION_switchARNavigation = 27;
        public static final int TRANSACTION_switchTraffic = 23;
        public static final int TRANSACTION_unmuteNaviAudio = 56;
        public static final int TRANSACTION_unrRegister = 4;
        public static final int TRANSACTION_unregisterNaviObserver = 2;

        public static class Proxy implements INaviServer {
            public static INaviServer sDefaultImpl;
            private IBinder mRemote;

            public Proxy(IBinder remote) {
                this.mRemote = remote;
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean addNaviEventNotify(INaviEventNotify eventNotify) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(eventNotify != null ? eventNotify.asBinder() : null);
                    if (!this.mRemote.transact(66, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().addNaviEventNotify(eventNotify);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean addSurface(Surface surface, int type, int height, int width) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(type);
                    parcelObtain.writeInt(height);
                    parcelObtain.writeInt(width);
                    if (!this.mRemote.transact(46, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().addSurface(surface, type, height, width);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean addSurfaceWithRoadView(Surface surface, int type, int height, int width, int roadViewHeight, int roadViewWidth) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(type);
                    parcelObtain.writeInt(height);
                    parcelObtain.writeInt(width);
                    parcelObtain.writeInt(roadViewHeight);
                    parcelObtain.writeInt(roadViewWidth);
                    if (!this.mRemote.transact(47, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().addSurfaceWithRoadView(surface, type, height, width, roadViewHeight, roadViewWidth);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean addSurfaceWithRoadViewAndOffset(Surface surface, int type, int height, int width, int roadViewHeight, int roadViewWidth, int offsetX, int offsetY) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(type);
                    parcelObtain.writeInt(height);
                    parcelObtain.writeInt(width);
                    parcelObtain.writeInt(roadViewHeight);
                    parcelObtain.writeInt(roadViewWidth);
                    parcelObtain.writeInt(offsetX);
                    parcelObtain.writeInt(offsetY);
                    if (!this.mRemote.transact(54, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().addSurfaceWithRoadViewAndOffset(surface, type, height, width, roadViewHeight, roadViewWidth, offsetX, offsetY);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void alongTheWaySearch(int var1, ISearchAlongWayRequestBean searchAlongWayRequestBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var1);
                    if (searchAlongWayRequestBean != null) {
                        parcelObtain.writeInt(1);
                        searchAlongWayRequestBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(32, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().alongTheWaySearch(var1, searchAlongWayRequestBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        searchAlongWayRequestBean.readFromParcel(parcelObtain2);
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

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void backToMap() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(16, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().backToMap();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void cancelNavi() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(6, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().cancelNavi();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void commonRequest(IApiRequestBaseModelBean iapiRequestBaseModel) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (iapiRequestBaseModel != null) {
                        parcelObtain.writeInt(1);
                        iapiRequestBaseModel.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(5, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().commonRequest(iapiRequestBaseModel);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        iapiRequestBaseModel.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void dispatchTouchEvent(MotionEvent ev) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (ev != null) {
                        parcelObtain.writeInt(1);
                        ev.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.mRemote.transact(49, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().dispatchTouchEvent(ev);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void downloadOfflineMap(List<String> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStringList(list);
                    if (!this.mRemote.transact(28, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().downloadOfflineMap(list);
                    } else {
                        parcelObtain2.readException();
                        parcelObtain2.readStringList(list);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void editFavoritePois(IEditFavoriteRequestBean editFavoriteRequestBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (editFavoriteRequestBean != null) {
                        parcelObtain.writeInt(1);
                        editFavoriteRequestBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(38, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().editFavoritePois(editFavoriteRequestBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        editFavoriteRequestBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void exitMap() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(17, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().exitMap();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getArrivedFrontPoiInfo(String var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(var);
                    if (this.mRemote.transact(43, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getArrivedFrontPoiInfo(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getFavoritePois(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(39, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getFavoritePois(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getFrequentPois(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(41, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getFrequentPois(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getFrontTraffic(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(8, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getFrontTraffic(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getGuideInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(9, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getGuideInfo();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getHighwayExitInfo(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(10, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getHighwayExitInfo(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getHistoryPois(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(40, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getHistoryPois(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public String getLocationRoadInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(63, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getLocationRoadInfo();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getMapSupportedFeatures() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(35, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getMapSupportedFeatures();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public String getPackageName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(45, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().getPackageName();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getRemainNopInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(53, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getRemainNopInfo();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getRoutePlanInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(11, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getRoutePlanInfo();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getRunningMapFeatures() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(36, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getRunningMapFeatures();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getSpeedLimitInfo() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(42, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getSpeedLimitInfo();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void getTrafficSummaryInfo(String var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(var);
                    if (this.mRemote.transact(25, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().getTrafficSummaryInfo(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean goCompany() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(58, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().goCompany();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void goFavorite(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(26, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().goFavorite(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean goHome() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(57, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().goHome();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void goOfflineMapDownload() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(29, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().goOfflineMapDownload();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public TransferModel invokeNaviAPI(TransferModel reqModel) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (reqModel != null) {
                        parcelObtain.writeInt(1);
                        reqModel.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(64, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().invokeNaviAPI(reqModel);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0 ? TransferModel.CREATOR.createFromParcel(parcelObtain2) : null;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public int invokeNaviAPIAsync(TransferModel reqModel, INaviObserver observer) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (reqModel != null) {
                        parcelObtain.writeInt(1);
                        reqModel.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(observer != null ? observer.asBinder() : null);
                    if (!this.mRemote.transact(65, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().invokeNaviAPIAsync(reqModel, observer);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void launchMap() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(15, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().launchMap();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean mapIsLaunched() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(18, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().mapIsLaunched();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void mapZoomInOut(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(20, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().mapZoomInOut(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void modifyNaviVia(IModifyViaPoiRequestBean modifyViaPoiRequestBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (modifyViaPoiRequestBean != null) {
                        parcelObtain.writeInt(1);
                        modifyViaPoiRequestBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(14, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().modifyNaviVia(modifyViaPoiRequestBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        modifyViaPoiRequestBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean muteNaviAudio() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(55, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().muteNaviAudio();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void naviFullView() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(22, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().naviFullView();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean naviTo(String message) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(message);
                    if (!this.mRemote.transact(61, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().naviTo(message);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean naviToByNaviInfo(INaviInfo naviInfo) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(naviInfo != null ? naviInfo.asBinder() : null);
                    if (!this.mRemote.transact(62, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().naviToByNaviInfo(naviInfo);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void openDestinationSearch(IKeywordSearchRequestBean keywordSearchRequestBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (keywordSearchRequestBean != null) {
                        parcelObtain.writeInt(1);
                        keywordSearchRequestBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(19, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().openDestinationSearch(keywordSearchRequestBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        keywordSearchRequestBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void register(INaviCallback iRemoteCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteCallback != null ? iRemoteCallback.asBinder() : null);
                    if (this.mRemote.transact(3, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().register(iRemoteCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean registerNaviObserver(INaviObserver observer) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(observer != null ? observer.asBinder() : null);
                    if (!this.mRemote.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().registerNaviObserver(observer);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean removeNaviEventNotify(INaviEventNotify eventNotify) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(eventNotify != null ? eventNotify.asBinder() : null);
                    if (!this.mRemote.transact(67, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().removeNaviEventNotify(eventNotify);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean removedSurface(Surface surface, int type) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (surface != null) {
                        parcelObtain.writeInt(1);
                        surface.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(type);
                    if (!this.mRemote.transact(48, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().removedSurface(surface, type);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void requestGeoDecoder(ILatLngBean latLngBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (latLngBean != null) {
                        parcelObtain.writeInt(1);
                        latLngBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(33, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestGeoDecoder(latLngBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        latLngBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void requestRoutePlanOrNavi(long uid, IRoutePlanRequestBean routePlanRequestBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(uid);
                    if (routePlanRequestBean != null) {
                        parcelObtain.writeInt(1);
                        routePlanRequestBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(13, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestRoutePlanOrNavi(uid, routePlanRequestBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        routePlanRequestBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void requestRoutePlanOrNaviViaRoad(long uid, IRoutePlanRequestBean iRoutePlanRequestBean, IViaRoadRequestBean iViaRoadRequest) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(uid);
                    if (iRoutePlanRequestBean != null) {
                        parcelObtain.writeInt(1);
                        iRoutePlanRequestBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (iViaRoadRequest != null) {
                        parcelObtain.writeInt(1);
                        iViaRoadRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(52, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().requestRoutePlanOrNaviViaRoad(uid, iRoutePlanRequestBean, iViaRoadRequest);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        iRoutePlanRequestBean.readFromParcel(parcelObtain2);
                    }
                    if (parcelObtain2.readInt() != 0) {
                        iViaRoadRequest.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void rerouting() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.mRemote.transact(44, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().rerouting();
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void searchAround(long uid, int var1, ISearchAroundRequestBean searchAroundRequestBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(uid);
                    parcelObtain.writeInt(var1);
                    if (searchAroundRequestBean != null) {
                        parcelObtain.writeInt(1);
                        searchAroundRequestBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(31, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().searchAround(uid, var1, searchAroundRequestBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        searchAroundRequestBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void searchByKeyword(long uid, int var1, IKeywordSearchRequestBean keywordSearchRequestBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeLong(uid);
                    parcelObtain.writeInt(var1);
                    if (keywordSearchRequestBean != null) {
                        parcelObtain.writeInt(1);
                        keywordSearchRequestBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(30, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().searchByKeyword(uid, var1, keywordSearchRequestBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        keywordSearchRequestBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean searchNearby(String keyword, double longitude, double latitude) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(keyword);
                    parcelObtain.writeDouble(longitude);
                    parcelObtain.writeDouble(latitude);
                    if (!this.mRemote.transact(59, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().searchNearby(keyword, longitude, latitude);
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void searchPoiNearbyBurnout(int i, IKeywordSearchRequestBean bean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (bean != null) {
                        parcelObtain.writeInt(1);
                        bean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(51, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().searchPoiNearbyBurnout(i, bean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        bean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void selectRoute(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(7, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().selectRoute(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void setMapFeaturesRunningState(ISetMapFeaturesRunningStateBean setMapFeaturesRunningStateBean) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (setMapFeaturesRunningStateBean != null) {
                        parcelObtain.writeInt(1);
                        setMapFeaturesRunningStateBean.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.mRemote.transact(37, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Stub.getDefaultImpl().setMapFeaturesRunningState(setMapFeaturesRunningStateBean);
                        return;
                    }
                    parcelObtain2.readException();
                    if (parcelObtain2.readInt() != 0) {
                        setMapFeaturesRunningStateBean.readFromParcel(parcelObtain2);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void setMapViewMode(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(21, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setMapViewMode(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void setReportNaviType(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i);
                    if (this.mRemote.transact(50, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setReportNaviType(i);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void setRoutePlanStrategy(int var) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(var);
                    if (this.mRemote.transact(34, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().setRoutePlanStrategy(var);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void showMyLocation(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(24, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().showMyLocation(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void specialPoiNavi(int guidanceType, int poiType) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(guidanceType);
                    parcelObtain.writeInt(poiType);
                    if (this.mRemote.transact(12, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().specialPoiNavi(guidanceType, poiType);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean stopNavi() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(60, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().stopNavi();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void switchARNavigation(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(27, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().switchARNavigation(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void switchTraffic(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z ? 1 : 0);
                    if (this.mRemote.transact(23, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().switchTraffic(z);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean unmuteNaviAudio() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.mRemote.transact(56, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().unmuteNaviAudio();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public void unrRegister(INaviCallback iRemoteCallback) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(iRemoteCallback != null ? iRemoteCallback.asBinder() : null);
                    if (this.mRemote.transact(4, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                    } else {
                        Stub.getDefaultImpl().unrRegister(iRemoteCallback);
                    }
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.geely.lib.oneosapi.navi.INaviServer
            public boolean unregisterNaviObserver(INaviObserver observer) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeStrongBinder(observer != null ? observer.asBinder() : null);
                    if (!this.mRemote.transact(2, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().unregisterNaviObserver(observer);
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

        public static INaviServer asInterface(IBinder obj) {
            if (obj == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = obj.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof INaviServer)) ? new Proxy(obj) : (INaviServer) iInterfaceQueryLocalInterface;
        }

        public static INaviServer getDefaultImpl() {
            return Proxy.sDefaultImpl;
        }

        public static boolean setDefaultImpl(INaviServer impl) {
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
                    boolean zRegisterNaviObserver = registerNaviObserver(INaviObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRegisterNaviObserver ? 1 : 0);
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUnregisterNaviObserver = unregisterNaviObserver(INaviObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zUnregisterNaviObserver ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    register(INaviCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    unrRegister(INaviCallback.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    IApiRequestBaseModelBean iApiRequestBaseModelBeanCreateFromParcel = parcel.readInt() != 0 ? IApiRequestBaseModelBean.CREATOR.createFromParcel(parcel) : null;
                    commonRequest(iApiRequestBaseModelBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iApiRequestBaseModelBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iApiRequestBaseModelBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    cancelNavi();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    selectRoute(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    getFrontTraffic(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    getGuideInfo();
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    getHighwayExitInfo(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    getRoutePlanInfo();
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    specialPoiNavi(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    long j = parcel.readLong();
                    IRoutePlanRequestBean iRoutePlanRequestBeanCreateFromParcel = parcel.readInt() != 0 ? IRoutePlanRequestBean.CREATOR.createFromParcel(parcel) : null;
                    requestRoutePlanOrNavi(j, iRoutePlanRequestBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iRoutePlanRequestBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iRoutePlanRequestBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    IModifyViaPoiRequestBean iModifyViaPoiRequestBeanCreateFromParcel = parcel.readInt() != 0 ? IModifyViaPoiRequestBean.CREATOR.createFromParcel(parcel) : null;
                    modifyNaviVia(iModifyViaPoiRequestBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iModifyViaPoiRequestBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iModifyViaPoiRequestBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    launchMap();
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    backToMap();
                    parcel2.writeNoException();
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    exitMap();
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMapIsLaunched = mapIsLaunched();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMapIsLaunched ? 1 : 0);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    IKeywordSearchRequestBean iKeywordSearchRequestBeanCreateFromParcel = parcel.readInt() != 0 ? IKeywordSearchRequestBean.CREATOR.createFromParcel(parcel) : null;
                    openDestinationSearch(iKeywordSearchRequestBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iKeywordSearchRequestBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iKeywordSearchRequestBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    mapZoomInOut(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    setMapViewMode(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 22:
                    parcel.enforceInterface(DESCRIPTOR);
                    naviFullView();
                    parcel2.writeNoException();
                    return true;
                case 23:
                    parcel.enforceInterface(DESCRIPTOR);
                    switchTraffic(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    showMyLocation(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    getTrafficSummaryInfo(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 26:
                    parcel.enforceInterface(DESCRIPTOR);
                    goFavorite(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 27:
                    parcel.enforceInterface(DESCRIPTOR);
                    switchARNavigation(parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 28:
                    parcel.enforceInterface(DESCRIPTOR);
                    ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
                    downloadOfflineMap(arrayListCreateStringArrayList);
                    parcel2.writeNoException();
                    parcel2.writeStringList(arrayListCreateStringArrayList);
                    return true;
                case 29:
                    parcel.enforceInterface(DESCRIPTOR);
                    goOfflineMapDownload();
                    parcel2.writeNoException();
                    return true;
                case 30:
                    parcel.enforceInterface(DESCRIPTOR);
                    long j2 = parcel.readLong();
                    int i3 = parcel.readInt();
                    IKeywordSearchRequestBean iKeywordSearchRequestBeanCreateFromParcel2 = parcel.readInt() != 0 ? IKeywordSearchRequestBean.CREATOR.createFromParcel(parcel) : null;
                    searchByKeyword(j2, i3, iKeywordSearchRequestBeanCreateFromParcel2);
                    parcel2.writeNoException();
                    if (iKeywordSearchRequestBeanCreateFromParcel2 != null) {
                        parcel2.writeInt(1);
                        iKeywordSearchRequestBeanCreateFromParcel2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 31:
                    parcel.enforceInterface(DESCRIPTOR);
                    long j3 = parcel.readLong();
                    int i4 = parcel.readInt();
                    ISearchAroundRequestBean iSearchAroundRequestBeanCreateFromParcel = parcel.readInt() != 0 ? ISearchAroundRequestBean.CREATOR.createFromParcel(parcel) : null;
                    searchAround(j3, i4, iSearchAroundRequestBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iSearchAroundRequestBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iSearchAroundRequestBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 32:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i5 = parcel.readInt();
                    ISearchAlongWayRequestBean iSearchAlongWayRequestBeanCreateFromParcel = parcel.readInt() != 0 ? ISearchAlongWayRequestBean.CREATOR.createFromParcel(parcel) : null;
                    alongTheWaySearch(i5, iSearchAlongWayRequestBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iSearchAlongWayRequestBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iSearchAlongWayRequestBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 33:
                    parcel.enforceInterface(DESCRIPTOR);
                    ILatLngBean iLatLngBeanCreateFromParcel = parcel.readInt() != 0 ? ILatLngBean.CREATOR.createFromParcel(parcel) : null;
                    requestGeoDecoder(iLatLngBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iLatLngBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iLatLngBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 34:
                    parcel.enforceInterface(DESCRIPTOR);
                    setRoutePlanStrategy(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 35:
                    parcel.enforceInterface(DESCRIPTOR);
                    getMapSupportedFeatures();
                    parcel2.writeNoException();
                    return true;
                case 36:
                    parcel.enforceInterface(DESCRIPTOR);
                    getRunningMapFeatures();
                    parcel2.writeNoException();
                    return true;
                case 37:
                    parcel.enforceInterface(DESCRIPTOR);
                    ISetMapFeaturesRunningStateBean iSetMapFeaturesRunningStateBeanCreateFromParcel = parcel.readInt() != 0 ? ISetMapFeaturesRunningStateBean.CREATOR.createFromParcel(parcel) : null;
                    setMapFeaturesRunningState(iSetMapFeaturesRunningStateBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iSetMapFeaturesRunningStateBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iSetMapFeaturesRunningStateBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 38:
                    parcel.enforceInterface(DESCRIPTOR);
                    IEditFavoriteRequestBean iEditFavoriteRequestBeanCreateFromParcel = parcel.readInt() != 0 ? IEditFavoriteRequestBean.CREATOR.createFromParcel(parcel) : null;
                    editFavoritePois(iEditFavoriteRequestBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iEditFavoriteRequestBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iEditFavoriteRequestBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 39:
                    parcel.enforceInterface(DESCRIPTOR);
                    getFavoritePois(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface(DESCRIPTOR);
                    getHistoryPois(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface(DESCRIPTOR);
                    getFrequentPois(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 42:
                    parcel.enforceInterface(DESCRIPTOR);
                    getSpeedLimitInfo();
                    parcel2.writeNoException();
                    return true;
                case 43:
                    parcel.enforceInterface(DESCRIPTOR);
                    getArrivedFrontPoiInfo(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 44:
                    parcel.enforceInterface(DESCRIPTOR);
                    rerouting();
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface(DESCRIPTOR);
                    String packageName = getPackageName();
                    parcel2.writeNoException();
                    parcel2.writeString(packageName);
                    return true;
                case 46:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddSurface = addSurface(parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddSurface ? 1 : 0);
                    return true;
                case 47:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddSurfaceWithRoadView = addSurfaceWithRoadView(parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddSurfaceWithRoadView ? 1 : 0);
                    return true;
                case 48:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemovedSurface = removedSurface(parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemovedSurface ? 1 : 0);
                    return true;
                case 49:
                    parcel.enforceInterface(DESCRIPTOR);
                    dispatchTouchEvent(parcel.readInt() != 0 ? (MotionEvent) MotionEvent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 50:
                    parcel.enforceInterface(DESCRIPTOR);
                    setReportNaviType(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 51:
                    parcel.enforceInterface(DESCRIPTOR);
                    int i6 = parcel.readInt();
                    IKeywordSearchRequestBean iKeywordSearchRequestBeanCreateFromParcel3 = parcel.readInt() != 0 ? IKeywordSearchRequestBean.CREATOR.createFromParcel(parcel) : null;
                    searchPoiNearbyBurnout(i6, iKeywordSearchRequestBeanCreateFromParcel3);
                    parcel2.writeNoException();
                    if (iKeywordSearchRequestBeanCreateFromParcel3 != null) {
                        parcel2.writeInt(1);
                        iKeywordSearchRequestBeanCreateFromParcel3.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 52:
                    parcel.enforceInterface(DESCRIPTOR);
                    long j4 = parcel.readLong();
                    IRoutePlanRequestBean iRoutePlanRequestBeanCreateFromParcel2 = parcel.readInt() != 0 ? IRoutePlanRequestBean.CREATOR.createFromParcel(parcel) : null;
                    IViaRoadRequestBean iViaRoadRequestBeanCreateFromParcel = parcel.readInt() != 0 ? IViaRoadRequestBean.CREATOR.createFromParcel(parcel) : null;
                    requestRoutePlanOrNaviViaRoad(j4, iRoutePlanRequestBeanCreateFromParcel2, iViaRoadRequestBeanCreateFromParcel);
                    parcel2.writeNoException();
                    if (iRoutePlanRequestBeanCreateFromParcel2 != null) {
                        parcel2.writeInt(1);
                        iRoutePlanRequestBeanCreateFromParcel2.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    if (iViaRoadRequestBeanCreateFromParcel != null) {
                        parcel2.writeInt(1);
                        iViaRoadRequestBeanCreateFromParcel.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 53:
                    parcel.enforceInterface(DESCRIPTOR);
                    getRemainNopInfo();
                    parcel2.writeNoException();
                    return true;
                case 54:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddSurfaceWithRoadViewAndOffset = addSurfaceWithRoadViewAndOffset(parcel.readInt() != 0 ? (Surface) Surface.CREATOR.createFromParcel(parcel) : null, parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddSurfaceWithRoadViewAndOffset ? 1 : 0);
                    return true;
                case 55:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zMuteNaviAudio = muteNaviAudio();
                    parcel2.writeNoException();
                    parcel2.writeInt(zMuteNaviAudio ? 1 : 0);
                    return true;
                case 56:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zUnmuteNaviAudio = unmuteNaviAudio();
                    parcel2.writeNoException();
                    parcel2.writeInt(zUnmuteNaviAudio ? 1 : 0);
                    return true;
                case 57:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zGoHome = goHome();
                    parcel2.writeNoException();
                    parcel2.writeInt(zGoHome ? 1 : 0);
                    return true;
                case 58:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zGoCompany = goCompany();
                    parcel2.writeNoException();
                    parcel2.writeInt(zGoCompany ? 1 : 0);
                    return true;
                case 59:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zSearchNearby = searchNearby(parcel.readString(), parcel.readDouble(), parcel.readDouble());
                    parcel2.writeNoException();
                    parcel2.writeInt(zSearchNearby ? 1 : 0);
                    return true;
                case 60:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zStopNavi = stopNavi();
                    parcel2.writeNoException();
                    parcel2.writeInt(zStopNavi ? 1 : 0);
                    return true;
                case 61:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNaviTo = naviTo(parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeInt(zNaviTo ? 1 : 0);
                    return true;
                case 62:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zNaviToByNaviInfo = naviToByNaviInfo(INaviInfo.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zNaviToByNaviInfo ? 1 : 0);
                    return true;
                case 63:
                    parcel.enforceInterface(DESCRIPTOR);
                    String locationRoadInfo = getLocationRoadInfo();
                    parcel2.writeNoException();
                    parcel2.writeString(locationRoadInfo);
                    return true;
                case 64:
                    parcel.enforceInterface(DESCRIPTOR);
                    TransferModel transferModelInvokeNaviAPI = invokeNaviAPI(parcel.readInt() != 0 ? TransferModel.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (transferModelInvokeNaviAPI != null) {
                        parcel2.writeInt(1);
                        transferModelInvokeNaviAPI.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 65:
                    parcel.enforceInterface(DESCRIPTOR);
                    int iInvokeNaviAPIAsync = invokeNaviAPIAsync(parcel.readInt() != 0 ? TransferModel.CREATOR.createFromParcel(parcel) : null, INaviObserver.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(iInvokeNaviAPIAsync);
                    return true;
                case 66:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zAddNaviEventNotify = addNaviEventNotify(INaviEventNotify.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zAddNaviEventNotify ? 1 : 0);
                    return true;
                case 67:
                    parcel.enforceInterface(DESCRIPTOR);
                    boolean zRemoveNaviEventNotify = removeNaviEventNotify(INaviEventNotify.Stub.asInterface(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zRemoveNaviEventNotify ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean addNaviEventNotify(INaviEventNotify eventNotify) throws RemoteException;

    boolean addSurface(Surface surface, int type, int height, int width) throws RemoteException;

    boolean addSurfaceWithRoadView(Surface surface, int type, int height, int width, int roadViewHeight, int roadViewWidth) throws RemoteException;

    boolean addSurfaceWithRoadViewAndOffset(Surface surface, int type, int height, int width, int roadViewHeight, int roadViewWidth, int offsetX, int offsetY) throws RemoteException;

    void alongTheWaySearch(int var1, ISearchAlongWayRequestBean searchAlongWayRequestBean) throws RemoteException;

    void backToMap() throws RemoteException;

    void cancelNavi() throws RemoteException;

    void commonRequest(IApiRequestBaseModelBean iapiRequestBaseModel) throws RemoteException;

    void dispatchTouchEvent(MotionEvent ev) throws RemoteException;

    void downloadOfflineMap(List<String> list) throws RemoteException;

    void editFavoritePois(IEditFavoriteRequestBean editFavoriteRequestBean) throws RemoteException;

    void exitMap() throws RemoteException;

    void getArrivedFrontPoiInfo(String var) throws RemoteException;

    void getFavoritePois(int var) throws RemoteException;

    void getFrequentPois(int var) throws RemoteException;

    void getFrontTraffic(int var) throws RemoteException;

    void getGuideInfo() throws RemoteException;

    void getHighwayExitInfo(int var) throws RemoteException;

    void getHistoryPois(int var) throws RemoteException;

    String getLocationRoadInfo() throws RemoteException;

    void getMapSupportedFeatures() throws RemoteException;

    String getPackageName() throws RemoteException;

    void getRemainNopInfo() throws RemoteException;

    void getRoutePlanInfo() throws RemoteException;

    void getRunningMapFeatures() throws RemoteException;

    void getSpeedLimitInfo() throws RemoteException;

    void getTrafficSummaryInfo(String var) throws RemoteException;

    boolean goCompany() throws RemoteException;

    void goFavorite(int var) throws RemoteException;

    boolean goHome() throws RemoteException;

    void goOfflineMapDownload() throws RemoteException;

    TransferModel invokeNaviAPI(TransferModel reqModel) throws RemoteException;

    int invokeNaviAPIAsync(TransferModel reqModel, INaviObserver observer) throws RemoteException;

    void launchMap() throws RemoteException;

    boolean mapIsLaunched() throws RemoteException;

    void mapZoomInOut(int var) throws RemoteException;

    void modifyNaviVia(IModifyViaPoiRequestBean modifyViaPoiRequestBean) throws RemoteException;

    boolean muteNaviAudio() throws RemoteException;

    void naviFullView() throws RemoteException;

    boolean naviTo(String message) throws RemoteException;

    boolean naviToByNaviInfo(INaviInfo naviInfo) throws RemoteException;

    void openDestinationSearch(IKeywordSearchRequestBean keywordSearchRequestBean) throws RemoteException;

    void register(INaviCallback iRemoteCallback) throws RemoteException;

    boolean registerNaviObserver(INaviObserver observer) throws RemoteException;

    boolean removeNaviEventNotify(INaviEventNotify eventNotify) throws RemoteException;

    boolean removedSurface(Surface surface, int type) throws RemoteException;

    void requestGeoDecoder(ILatLngBean latLngBean) throws RemoteException;

    void requestRoutePlanOrNavi(long uid, IRoutePlanRequestBean routePlanRequestBean) throws RemoteException;

    void requestRoutePlanOrNaviViaRoad(long uid, IRoutePlanRequestBean iRoutePlanRequestBean, IViaRoadRequestBean iViaRoadRequest) throws RemoteException;

    void rerouting() throws RemoteException;

    void searchAround(long uid, int var1, ISearchAroundRequestBean searchAroundRequestBean) throws RemoteException;

    void searchByKeyword(long uid, int var1, IKeywordSearchRequestBean keywordSearchRequestBean) throws RemoteException;

    boolean searchNearby(String keyword, double longitude, double latitude) throws RemoteException;

    void searchPoiNearbyBurnout(int i, IKeywordSearchRequestBean bean) throws RemoteException;

    void selectRoute(int var) throws RemoteException;

    void setMapFeaturesRunningState(ISetMapFeaturesRunningStateBean setMapFeaturesRunningStateBean) throws RemoteException;

    void setMapViewMode(int var) throws RemoteException;

    void setReportNaviType(int i) throws RemoteException;

    void setRoutePlanStrategy(int var) throws RemoteException;

    void showMyLocation(boolean var) throws RemoteException;

    void specialPoiNavi(int guidanceType, int poiType) throws RemoteException;

    boolean stopNavi() throws RemoteException;

    void switchARNavigation(boolean var) throws RemoteException;

    void switchTraffic(boolean var) throws RemoteException;

    boolean unmuteNaviAudio() throws RemoteException;

    void unrRegister(INaviCallback iRemoteCallback) throws RemoteException;

    boolean unregisterNaviObserver(INaviObserver observer) throws RemoteException;
}
