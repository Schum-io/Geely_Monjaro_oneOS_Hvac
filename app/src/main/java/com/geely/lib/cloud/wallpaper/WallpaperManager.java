package com.geely.lib.cloud.wallpaper;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.wallpaper.IWallpaper;
import com.geely.lib.cloud.wallpaper.bean.FaceParam;
import com.geely.lib.cloud.wallpaper.bean.QueryListParam;
import com.geely.lib.cloud.wallpaper.bean.QueryOneParam;
import com.geely.lib.cloud.wallpaper.bean.StsSaveParam;

/* loaded from: classes.dex */
public class WallpaperManager implements ServiceBaseManager {
    private static final String TAG = "WallpaperManager";
    private IWallpaper mService;

    public WallpaperManager(Context context, IBinder binder) {
        this.mService = IWallpaper.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        if (binder != null) {
            this.mService = IWallpaper.Stub.asInterface(binder);
        }
    }

    public void getQueryList(final QueryListParam queryListParam, final OperationListener callback) {
        Log.d(TAG, "getQueryList");
        try {
            IWallpaper iWallpaper = this.mService;
            if (iWallpaper != null) {
                iWallpaper.getQueryList(queryListParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.wallpaper.WallpaperManager.1
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getQueryOne(QueryOneParam queryOneParam, final OperationListener callback) {
        Log.d(TAG, "getQueryOne");
        try {
            IWallpaper iWallpaper = this.mService;
            if (iWallpaper != null) {
                iWallpaper.getQueryOne(queryOneParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.wallpaper.WallpaperManager.2
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void userFaceShow(String userId, final OperationListener callback) {
        Log.d(TAG, "userFaceShow");
        try {
            IWallpaper iWallpaper = this.mService;
            if (iWallpaper != null) {
                iWallpaper.userFaceShow(userId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.wallpaper.WallpaperManager.3
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void userFaceAdd(FaceParam faceParam, final OperationListener callback) {
        Log.d(TAG, "userFaceAdd");
        try {
            IWallpaper iWallpaper = this.mService;
            if (iWallpaper != null) {
                iWallpaper.userFaceAdd(faceParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.wallpaper.WallpaperManager.4
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void userFaceRemove(String userId, String faceId, final OperationListener callback) {
        Log.d(TAG, "getQueryOne");
        try {
            IWallpaper iWallpaper = this.mService;
            if (iWallpaper != null) {
                iWallpaper.userFaceRemove(userId, faceId, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.wallpaper.WallpaperManager.5
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                Log.e(TAG, "service is null");
            }
        } catch (RemoteException e) {
            e.printStackTrace();
        }
    }

    public void getStsAccess(String sysKey, final OperationListener callback) {
        Log.d(TAG, "getStsAccess");
        try {
            IWallpaper iWallpaper = this.mService;
            if (iWallpaper != null) {
                iWallpaper.getStsAccess(sysKey, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.wallpaper.WallpaperManager.6
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                callback.onFail("mService == null");
            }
        } catch (Exception e) {
            callback.onFail(e.getMessage());
        }
    }

    public void postStsSave(StsSaveParam stsSaveParam, final OperationListener callback) {
        Log.d(TAG, "postStsSave");
        try {
            IWallpaper iWallpaper = this.mService;
            if (iWallpaper != null) {
                iWallpaper.postStsSave(stsSaveParam, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.wallpaper.WallpaperManager.7
                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onSuccess(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onSuccess(json);
                        }
                    }

                    @Override // com.geely.lib.cloud.ICloudCallback
                    public void onFail(String json) {
                        OperationListener operationListener = callback;
                        if (operationListener != null) {
                            operationListener.onFail(json);
                        }
                    }
                });
            } else {
                callback.onFail("mService == null");
            }
        } catch (Exception e) {
            callback.onFail(e.getMessage());
        }
    }
}
