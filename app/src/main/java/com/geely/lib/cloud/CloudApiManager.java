package com.geely.lib.cloud;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.appstore.AppStoreManager;
import com.geely.lib.cloud.apputil.AppUtilManager;
import com.geely.lib.cloud.assistant.AssistantManager;
import com.geely.lib.cloud.common.ServiceBaseManager;
import com.geely.lib.cloud.device.DeviceManager;
import com.geely.lib.cloud.download.DownloadManager;
import com.geely.lib.cloud.engine.EngineManager;
import com.geely.lib.cloud.feedback.FeedbackManager;
import com.geely.lib.cloud.filmhall.FilmHallManager;
import com.geely.lib.cloud.furniture.FurnitureManager;
import com.geely.lib.cloud.listener.ServiceConnectionListener;
import com.geely.lib.cloud.maintain.MaintainManager;
import com.geely.lib.cloud.membercenter.MemberCenterManager;
import com.geely.lib.cloud.payment.PaymentManager;
import com.geely.lib.cloud.resource.ResourceManager;
import com.geely.lib.cloud.schedule.ScheduleManager;
import com.geely.lib.cloud.themestore.ThemeStoreManager;
import com.geely.lib.cloud.trilateral.TrilateralManager;
import com.geely.lib.cloud.usercenter.UserCenterManager;
import com.geely.lib.cloud.wallpaper.WallpaperManager;
import com.geely.lib.cloud.weather.WeatherManager;

/* loaded from: classes.dex */
public class CloudApiManager implements ServiceConnectionListener {
    private static final String TAG = "CloudApiManager";
    private static volatile CloudApiManager sInstance;
    private AppStoreManager mAppStoreManager;
    private AppUtilManager mAppUtilManager;
    private AssistantManager mAssistantManager;
    private final Context mContext;
    private DeviceManager mDeviceManager;
    private DownloadManager mDownloadManager;
    private EngineManager mEngineManager;
    private FeedbackManager mFeedbackManager;
    private FilmHallManager mFilmHallManager;
    private FurnitureManager mFurnitureManager;
    private MaintainManager mMaintainManager;
    private MemberCenterManager mMemberCenterManager;
    private PaymentManager mPaymentManager;
    private ResourceManager mResourceManager;
    private ScheduleManager mScheduleManager;
    private final ServiceConnectionManager mServiceConnectionManager;
    private ThemeStoreManager mThemeStoreManager;
    private TrilateralManager mTrilateralManager;
    private UserCenterManager mUserCenterManager;
    private WallpaperManager mWallpaperManager;
    private WeatherManager mWeatherManager;

    public static CloudApiManager getInstance(Context context) {
        if (sInstance != null) {
            return sInstance;
        }
        synchronized (CloudApiManager.class) {
            if (sInstance == null) {
                sInstance = new CloudApiManager(context);
            }
        }
        return sInstance;
    }

    public void init() {
        Log.d(TAG, "cloudApiManager init");
        this.mServiceConnectionManager.registerServiceConnectionListener(this);
        this.mServiceConnectionManager.connect();
    }

    public void release() {
        this.mServiceConnectionManager.release();
        this.mDeviceManager = null;
        this.mWeatherManager = null;
        this.mMemberCenterManager = null;
    }

    public void registerServiceConnectionListener(ServiceConnectionListener listener) {
        this.mServiceConnectionManager.registerServiceConnectionListener(listener);
    }

    public void unregisterServiceConnectionListener(ServiceConnectionListener listener) {
        this.mServiceConnectionManager.unregisterServiceConnectionListener(listener);
    }

    private CloudApiManager(Context context) {
        this.mContext = context;
        this.mServiceConnectionManager = new ServiceConnectionManager(context);
    }

    public DeviceManager getDeviceManager() {
        if (this.mDeviceManager == null && this.mServiceConnectionManager.isServiceBound()) {
            try {
                this.mDeviceManager = new DeviceManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(0));
            } catch (RemoteException e) {
                e.printStackTrace();
                return null;
            }
        }
        return this.mDeviceManager;
    }

    public WeatherManager getWeatherManager() {
        if (this.mWeatherManager == null && this.mServiceConnectionManager.isServiceBound()) {
            try {
                this.mWeatherManager = new WeatherManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(1));
            } catch (RemoteException e) {
                e.printStackTrace();
                return null;
            }
        }
        return this.mWeatherManager;
    }

    public AppStoreManager getAppStoreManager() {
        Log.i(TAG, "getAppStoreManager");
        if (this.mAppStoreManager == null) {
            Log.i(TAG, "getAppStoreManager");
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    IBinder service = this.mServiceConnectionManager.getServiceManager().getService(3);
                    Log.i(TAG, "getAppStoreManager");
                    this.mAppStoreManager = new AppStoreManager(this.mContext, service);
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
        return this.mAppStoreManager;
    }

    public MemberCenterManager getMemberCenterManager() {
        if (this.mMemberCenterManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mMemberCenterManager = new MemberCenterManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(2));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mMemberCenterManager;
    }

    public ScheduleManager getScheduleManager() {
        if (this.mScheduleManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mScheduleManager = new ScheduleManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(4));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mScheduleManager;
    }

    public MaintainManager getMaintainManager() {
        if (this.mMaintainManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mMaintainManager = new MaintainManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(5));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mMaintainManager;
    }

    public UserCenterManager getUserCenterManager() {
        if (this.mUserCenterManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mUserCenterManager = new UserCenterManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(6));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mUserCenterManager;
    }

    public ThemeStoreManager getThemeStoreManager() {
        if (this.mThemeStoreManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mThemeStoreManager = new ThemeStoreManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(7));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mThemeStoreManager;
    }

    public FilmHallManager getFilmHallManager() {
        if (this.mFilmHallManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mFilmHallManager = new FilmHallManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(16));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mFilmHallManager;
    }

    public TrilateralManager getTrilateralManager() {
        if (this.mTrilateralManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mTrilateralManager = new TrilateralManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(8));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mTrilateralManager;
    }

    public FeedbackManager getFeedbackManager() {
        if (this.mFeedbackManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mFeedbackManager = new FeedbackManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(9));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mFeedbackManager;
    }

    public EngineManager getEngineManager() {
        if (this.mEngineManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mEngineManager = new EngineManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(10));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mEngineManager;
    }

    public FurnitureManager getFurnitureManager() {
        if (this.mFurnitureManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mFurnitureManager = new FurnitureManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(11));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mFurnitureManager;
    }

    public AppUtilManager getAppUtilManager() {
        if (this.mAppUtilManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mAppUtilManager = new AppUtilManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(12));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mAppUtilManager;
    }

    public DownloadManager getDownloadManager() {
        if (this.mDownloadManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mDownloadManager = new DownloadManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(13));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mDownloadManager;
    }

    public ResourceManager getResourceManager() {
        if (this.mResourceManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mResourceManager = new ResourceManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(14));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mResourceManager;
    }

    public PaymentManager getPaymentManager() {
        if (this.mPaymentManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mPaymentManager = new PaymentManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(15));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mPaymentManager;
    }

    public AssistantManager getAssistantManager() {
        if (this.mAssistantManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mAssistantManager = new AssistantManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(17));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mAssistantManager;
    }

    public WallpaperManager getWallpaperManager() {
        if (this.mWallpaperManager == null) {
            if (this.mServiceConnectionManager.isServiceBound()) {
                try {
                    this.mWallpaperManager = new WallpaperManager(this.mContext, this.mServiceConnectionManager.getServiceManager().getService(18));
                } catch (RemoteException e) {
                    e.printStackTrace();
                    return null;
                }
            } else {
                Log.i(TAG, "service is unbound");
            }
        }
        return this.mWallpaperManager;
    }

    private void updateServiceBinder(ServiceBaseManager manager, int serviceType) {
        Log.d(TAG, "updateServiceBinder");
        if (manager != null) {
            try {
                IServiceManager serviceManager = this.mServiceConnectionManager.getServiceManager();
                if (serviceManager != null) {
                    Log.d(TAG, "setService");
                    manager.setService(serviceManager.getService(serviceType));
                }
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.geely.lib.cloud.listener.ServiceConnectionListener
    public void onServiceConnectionChanged(boolean connectionState) {
        Log.i(TAG, "onBinderStateChanged:" + connectionState);
        if (connectionState) {
            updateServiceBinder(this.mDeviceManager, 0);
            updateServiceBinder(this.mWeatherManager, 1);
            updateServiceBinder(this.mMemberCenterManager, 2);
            updateServiceBinder(this.mAppStoreManager, 3);
            updateServiceBinder(this.mScheduleManager, 4);
            updateServiceBinder(this.mMaintainManager, 5);
            updateServiceBinder(this.mUserCenterManager, 6);
            updateServiceBinder(this.mThemeStoreManager, 7);
            updateServiceBinder(this.mTrilateralManager, 8);
            updateServiceBinder(this.mFeedbackManager, 9);
            updateServiceBinder(this.mEngineManager, 10);
            updateServiceBinder(this.mFurnitureManager, 11);
            updateServiceBinder(this.mAppUtilManager, 12);
            updateServiceBinder(this.mDownloadManager, 13);
            updateServiceBinder(this.mResourceManager, 14);
            updateServiceBinder(this.mPaymentManager, 15);
            updateServiceBinder(this.mFilmHallManager, 16);
            updateServiceBinder(this.mAssistantManager, 17);
            updateServiceBinder(this.mWallpaperManager, 18);
        }
    }
}
