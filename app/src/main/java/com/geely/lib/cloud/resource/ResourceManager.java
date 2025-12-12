package com.geely.lib.cloud.resource;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.ICloudCallback;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.listener.OperationListener;
import com.geely.lib.cloud.resource.IResource;

/* loaded from: classes.dex */
public class ResourceManager implements ServiceBaseManager {
    private static final String TAG = "ResourceManager";
    private final Context mContext;
    private IResource mService;

    public ResourceManager(Context context, IBinder binder) {
        Log.d(TAG, "ResourceManager create");
        this.mContext = context;
        this.mService = IResource.Stub.asInterface(binder);
    }

    @Override // com.geely.lib.cloud.common.ServiceBaseManager
    public void setService(IBinder binder) {
        Log.d(TAG, "ResourceManager setService");
        if (binder != null) {
            this.mService = IResource.Stub.asInterface(binder);
        }
    }

    public void getInstructionBookUrl(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getInstructionBookUrl");
        IResource iResource = this.mService;
        if (iResource != null) {
            iResource.getInstructionBookUrl(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.resource.ResourceManager.1
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "mService is null");
        }
    }

    public void getFragranceUrl(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getFragranceUrl");
        IResource iResource = this.mService;
        if (iResource != null) {
            iResource.getFragranceUrl(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.resource.ResourceManager.2
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "mService is null");
        }
    }

    public void getCloudAlbumFlag(final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getCloudAlbumFlag");
        IResource iResource = this.mService;
        if (iResource != null) {
            iResource.getCloudAlbumFlag(new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.resource.ResourceManager.3
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "mService is null");
        }
    }

    public void getSmartDriveImageList(String vehicleSeriesCode, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getSmartDriveImageList");
        IResource iResource = this.mService;
        if (iResource != null) {
            iResource.getSmartDriveImageList(vehicleSeriesCode, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.resource.ResourceManager.4
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "mService is null");
        }
    }

    public void getCarModel(String carSeries, String code, final OperationListener callback) throws RemoteException {
        Log.d(TAG, "getCarModel");
        IResource iResource = this.mService;
        if (iResource != null) {
            iResource.getCarModel(carSeries, code, new ICloudCallback.Stub() { // from class: com.geely.lib.cloud.resource.ResourceManager.5
                @Override // com.geely.lib.cloud.ICloudCallback
                public void onSuccess(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onSuccess(json);
                    }
                }

                @Override // com.geely.lib.cloud.ICloudCallback
                public void onFail(String json) throws RemoteException {
                    OperationListener operationListener = callback;
                    if (operationListener != null) {
                        operationListener.onFail(json);
                    }
                }
            });
        } else {
            Log.d(TAG, "mService is null");
        }
    }
}
