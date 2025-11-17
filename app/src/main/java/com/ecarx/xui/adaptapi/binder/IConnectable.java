package com.ecarx.xui.adaptapi.binder;

public interface IConnectable {
    void registerConnectWatcher(IConnectWatcher watcher);
    void unregisterConnectWatcher();
    void connect();
    void disconnect();

    interface IConnectWatcher {
        void onConnected() throws IllegalAccessException, IllegalArgumentException;
        void onDisConnected();
    }
}