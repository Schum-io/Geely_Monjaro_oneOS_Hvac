package com.ecarx.xui.adaptapi.car.userprofile;

public interface IUserProfile {
    boolean registerUserProfileObserver(IUserProfileObserver observer);

    interface IUserProfileObserver {
        void onUserProfileActionError(int i, int i1);

        void onUserProfileActionStatus(int i, int i1, int i2);

        void onUserProfileAdded(int i);
    }
}
