package com.geely.hvac.adapt;

import android.content.Context;
import android.util.Log; // Добавлен импорт
import com.ecarx.xui.adaptapi.car.Car;
import com.ecarx.xui.adaptapi.car.ICar;
import com.ecarx.xui.adaptapi.car.userprofile.IUserProfile;

/* loaded from: classes.dex */
public class UserHabit {
    private final String TAG = getClass().getSimpleName();
    private int mCurrentHabitIndex = 0;
    private HabitChangeListener mHabitChangeListener;

    public interface HabitChangeListener {
        void onHabitChange(int habit);

        void onLoadStoreEvChange(int action);
    }

    public void init(Context appCtx) {
        // Добавляем проверку, чтобы избежать NullPointerException
        ICar car = Car.create(appCtx.getApplicationContext());
        if (car == null) {
            // Если сервис автомобиля недоступен, выводим ошибку в лог и выходим из метода
            Log.e(TAG, "Car service is not available, cannot initialize UserProfileManager.");
            return;
        }

        // Если все в порядке, продолжаем регистрацию наблюдателя
        car.getUserProfileManager().registerUserProfileObserver(new IUserProfile.IUserProfileObserver() { // from class: com.geely.hvac.adapt.UserHabit.1
            public void onUserProfileActionError(int i, int i1) {
            }

            public void onUserProfileActionStatus(int i, int i1, int i2) {
            }

            public void onUserProfileAdded(int i) {
            }
        });
    }

    public void setHabitChangeListener(HabitChangeListener listener) {
        this.mHabitChangeListener = listener;
    }
}
