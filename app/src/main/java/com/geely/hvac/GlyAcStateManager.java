package com.geely.hvac;

import android.content.Context;
import androidx.lifecycle.ViewModelProvider;
import com.geely.hvac.adapt.UserHabit;
import com.geely.hvac.utils.Executor;
import com.geely.hvac.utils.LogUtil;
import com.geely.hvac.viewmodel.AppMainViewModel;
import com.geely.hvac.utils.StackPrinter;

/* loaded from: classes.dex */
public class GlyAcStateManager {
    private static final String TAG = "AcStateManager";
    private AppMainViewModel mMainViewModel;
    private UserHabit mUserHabit;

    public void init(Context ctx) {
        this.mMainViewModel = (AppMainViewModel) new ViewModelProvider(GlyAcApp.getInstance(), new ViewModelProvider.NewInstanceFactory()).get(AppMainViewModel.class);
        Executor.IO_HANDLER.post(this::lambda$init$0$GlyAcStateManager);
        UserHabit userHabit = new UserHabit();
        this.mUserHabit = userHabit;
        userHabit.init(ctx.getApplicationContext());
        this.mUserHabit.setHabitChangeListener(new UserHabit.HabitChangeListener() { // from class: com.geely.hvac.GlyAcStateManager.1
            @Override // com.geely.hvac.adapt.UserHabit.HabitChangeListener
            public void onHabitChange(int habit) {
                LogUtil.d(GlyAcStateManager.TAG, "setHabitChangeListener, habit:" + habit);
                if (habit <= 2 && habit >= 0) {
                    GlyAcStateManager.this.mMainViewModel.getSeatSaveTabIndex().set(habit);
                } else {
                    LogUtil.d(GlyAcStateManager.TAG, "setHabitChangeListener, index not avaliable");
                }
            }

            @Override // com.geely.hvac.adapt.UserHabit.HabitChangeListener
            public void onLoadStoreEvChange(int action) {
                GlyAcStateManager.this.mMainViewModel.getSeatLoadEv().set(action);
            }
        });
    }

    public /* synthetic */ void lambda$init$0$GlyAcStateManager() {
        try {
            this.mMainViewModel.refreshAllState();
        } catch (Exception e) {
            LogUtil.e(TAG, "Failed to refresh all state" + StackPrinter.getExceptionStack(e));
        }
    }
}
