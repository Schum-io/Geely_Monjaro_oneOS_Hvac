package com.geely.lib.cloud;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.geely.lib.cloud.IServiceManager;
import com.geely.lib.cloud.listener.ServiceConnectionListener;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
class ServiceConnectionManager {
    private static final String CLASS_NAME = "com.geely.service.cloud.CloudService";
    private static final int MSG_BIND_SERVICE = 100;
    private static final int MSG_DISCONNECT_BIND_SERVICE = 102;
    private static final int MSG_RETRY_BIND_SERVICE = 101;
    private static final String PACKAGE_NAME = "com.geely.service.cloud";
    private static final int STATE_CONNECTED = 1;
    private static final int STATE_DISCONNECTED = 0;
    private static final String TAG = "ServiceConnectionManager";
    private static final int TIME_DISCONNECT_BIND_SERVICE = 3000;
    private static final int TIME_RETRY_BIND_SERVICE = 2000;
    private boolean mBinderResult;
    private int mConnectionState;
    private final Context mContext;
    private RetryHandler mRetryHandler;
    private IServiceManager mServiceManager;
    private final List<ServiceConnectionListener> mServiceListeners = new ArrayList();
    private final ServiceConnection mServiceConnection = new ServiceConnection() { // from class: com.geely.lib.cloud.ServiceConnectionManager.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (iBinder == null) {
                Log.w(ServiceConnectionManager.TAG, "onServiceConnected : iBinder is null");
                return;
            }
            try {
                if (iBinder.isBinderAlive()) {
                    ServiceConnectionManager.this.mServiceManager = IServiceManager.Stub.asInterface(iBinder);
                    ServiceConnectionManager.this.mConnectionState = 1;
                    iBinder.linkToDeath(ServiceConnectionManager.this.new ServiceDeathRecipient(iBinder), 0);
                    Log.d(ServiceConnectionManager.TAG, "onServiceConnected--updateServiceConnectionChangedCallback");
                    ServiceConnectionManager.this.updateServiceConnectionChangedCallback(true);
                    return;
                }
                Log.d(ServiceConnectionManager.TAG, "onServiceConnected--iBinder is died, retry bindservice.");
                ServiceConnectionManager.this.mConnectionState = 0;
                if (ServiceConnectionManager.this.mRetryHandler.hasMessages(101)) {
                    ServiceConnectionManager.this.mRetryHandler.removeMessages(101);
                }
                ServiceConnectionManager.this.mRetryHandler.sendEmptyMessageDelayed(101, 2000L);
                ServiceConnectionManager.this.disconnect();
                ServiceConnectionManager.this.updateServiceConnectionChangedCallback(false);
            } catch (RemoteException e) {
                e.printStackTrace();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(ServiceConnectionManager.TAG, "onServiceDisconnected");
            ServiceConnectionManager.this.mServiceManager = null;
            if (ServiceConnectionManager.this.mConnectionState == 0) {
                return;
            }
            ServiceConnectionManager.this.disconnect();
            ServiceConnectionManager.this.updateServiceConnectionChangedCallback(false);
        }
    };

    ServiceConnectionManager(Context context) {
        this.mContext = context;
        if (this.mRetryHandler == null) {
            this.mRetryHandler = new RetryHandler(context.getMainLooper());
        }
    }

    boolean isServiceBound() {
        return this.mConnectionState == 1;
    }

    void connect() {
        Log.d(TAG, "connect " + this.mBinderResult);
        if (!this.mBinderResult) {
            if (this.mRetryHandler.hasMessages(100)) {
                this.mRetryHandler.removeMessages(100);
            }
            this.mRetryHandler.sendEmptyMessage(100);
            return;
        }
        updateServiceConnectionChangedCallback(true);
    }

    void registerServiceConnectionListener(ServiceConnectionListener listener) {
        synchronized (this.mServiceListeners) {
            if (!this.mServiceListeners.contains(listener) && listener != null) {
                Log.i(TAG, "setServiceConnectionListener add listener:" + listener);
                this.mServiceListeners.add(listener);
            }
        }
    }

    void unregisterServiceConnectionListener(ServiceConnectionListener listener) {
        if (listener != null) {
            synchronized (this.mServiceListeners) {
                Log.i(TAG, "removeServiceConnectionListener listener:" + listener);
                this.mServiceListeners.remove(listener);
            }
        }
    }

    void release() {
        synchronized (this.mServiceListeners) {
            if (this.mServiceListeners.size() > 0) {
                Log.d(TAG, "destroy listener");
                this.mServiceListeners.clear();
            }
        }
        unBindService();
    }

    void bindService() {
        Intent intent = new Intent();
        intent.setClassName(PACKAGE_NAME, CLASS_NAME);
        Context context = this.mContext;
        if (context != null) {
            this.mBinderResult = context.bindService(intent, this.mServiceConnection, 1);
            Log.d(TAG, "bindService result " + this.mBinderResult);
            if (this.mBinderResult) {
                return;
            }
            if (this.mRetryHandler.hasMessages(101)) {
                this.mRetryHandler.removeMessages(101);
            }
            this.mRetryHandler.sendEmptyMessageDelayed(101, 2000L);
        }
    }

    void unBindService() {
        if (this.mConnectionState == 1 && this.mBinderResult) {
            this.mContext.unbindService(this.mServiceConnection);
            Log.d(TAG, "unBindService");
            this.mConnectionState = 0;
            this.mBinderResult = false;
        }
        RetryHandler retryHandler = this.mRetryHandler;
        if (retryHandler != null) {
            retryHandler.removeCallbacksAndMessages(null);
        }
    }

    IServiceManager getServiceManager() {
        return this.mServiceManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reBindService() {
        if (this.mConnectionState != 1) {
            bindService();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void disconnect() {
        if (this.mConnectionState == 0) {
            return;
        }
        RetryHandler retryHandler = this.mRetryHandler;
        if (retryHandler != null) {
            retryHandler.removeCallbacksAndMessages(null);
        }
        Log.d(TAG, "disconnect");
        this.mConnectionState = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateServiceConnectionChangedCallback(boolean connectionState) {
        synchronized (this.mServiceListeners) {
            Log.i(TAG, "updateServiceConnectionChangedCallback--binderState:" + connectionState);
            if (this.mServiceListeners.size() > 0) {
                for (ServiceConnectionListener serviceConnectionListener : this.mServiceListeners) {
                    if (serviceConnectionListener != null) {
                        serviceConnectionListener.onServiceConnectionChanged(connectionState);
                    }
                }
            }
        }
    }

    private class ServiceDeathRecipient implements IBinder.DeathRecipient {
        private final IBinder mListenerBinder;

        ServiceDeathRecipient(IBinder listenerBinder) {
            this.mListenerBinder = listenerBinder;
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            this.mListenerBinder.unlinkToDeath(this, 0);
            Log.w(ServiceConnectionManager.TAG, "binderDied--retry binder");
            ServiceConnectionManager.this.mConnectionState = 0;
            if (ServiceConnectionManager.this.mRetryHandler.hasMessages(101)) {
                ServiceConnectionManager.this.mRetryHandler.removeMessages(101);
            }
            ServiceConnectionManager.this.mRetryHandler.sendEmptyMessageDelayed(101, 2000L);
            ServiceConnectionManager.this.disconnect();
            ServiceConnectionManager.this.updateServiceConnectionChangedCallback(false);
        }
    }

    private class RetryHandler extends Handler {
        private RetryHandler(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 100:
                    ServiceConnectionManager.this.bindService();
                    break;
                case 101:
                case 102:
                    ServiceConnectionManager.this.reBindService();
                    break;
            }
        }
    }
}
